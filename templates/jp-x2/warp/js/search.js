/* Copyright (C) YOOtheme GmbH, http://www.gnu.org/licenses/gpl.html GNU/GPL */

!function(s){var t=function(){};s.extend(t.prototype,{name:"search",options:{url:document.location.href,param:"search",method:"post",minLength:3,delay:300,match:":not(li.skip)",skipClass:"skip",loadingClass:"loading",filledClass:"filled",resultClass:"result",resultsHeaderClass:"results-header",moreResultsClass:"more-results",noResultsClass:"no-results",listClass:"results",hoverClass:"selected",msgResultsHeader:"Search Results",msgMoreResults:"More Results",msgNoResults:"No results found",onSelect:function(s){window.location=s.data("choice").url},onLoadedResults:function(s){return s}},initialize:function(t,i){this.options=s.extend({},this.options,i);var e=this;this.timer=null,this.value=null,this.form=t.parent("form:first"),this.input=t,this.input.attr("autocomplete","off"),this.input.bind({keydown:function(s){if(e.form[e.input.val()?"addClass":"removeClass"](e.options.filledClass),s&&s.which&&!s.shiftKey)switch(s.which){case 13:e.done(e.selected),s.preventDefault();break;case 38:e.pick("prev"),s.preventDefault();break;case 40:e.pick("next"),s.preventDefault();break;case 27:case 9:e.hide()}},keyup:function(){e.trigger()},blur:function(s){e.hide(s)}}),this.form.find("button[type=reset]").bind("click",function(){e.form.removeClass(e.options.filledClass),e.value=null,e.input.focus()}),this.choices=s("<ul>").addClass(this.options.listClass).hide().insertAfter(this.input)},request:function(t){var i=this;this.form.addClass(this.options.loadingClass),s.ajax(s.extend({url:this.options.url,type:this.options.method,dataType:"json",success:function(s){s=i.options.onLoadedResults.apply(this,[s]),i.form.removeClass(i.options.loadingClass),i.suggest(s)}},t))},pick:function(s){var t=null;"string"==typeof s||s.hasClass(this.options.skipClass)||(t=s),("next"==s||"prev"==s)&&(t=this.selected?this.selected[s](this.options.match):this.choices.children(this.options.match)["next"==s?"first":"last"]()),null!=t&&t.length&&(this.selected=t,this.choices.children().removeClass(this.options.hoverClass),this.selected.addClass(this.options.hoverClass))},done:function(s){return s?(s.hasClass(this.options.moreResultsClass)?this.input.parent("form").submit():s.data("choice")&&this.options.onSelect.apply(this,[s]),void this.hide()):void this.input.parent("form").submit()},trigger:function(){var s=this.value,t=this;return this.value=this.input.val(),this.value.length<this.options.minLength?this.hide():void(this.value!=s&&(this.timer&&window.clearTimeout(this.timer),this.timer=window.setTimeout(function(){var s={};s[t.options.param]=t.value,t.request({data:s})},this.options.delay,this)))},suggest:function(t){if(t){var i=this,e={mouseover:function(){i.pick(s(this))},click:function(){i.done(s(this))}};t===!1?this.hide():(this.selected=null,this.choices.empty(),this.options.msgResultsHeader&&s("<li>").addClass(this.options.resultsHeaderClass+" "+this.options.skipClass).html(this.options.msgResultsHeader).appendTo(this.choices).bind(e),t.results&&t.results.length>0?(s(t.results).each(function(){s("<li>").data("choice",this).addClass(i.options.resultClass).append(s("<h3>").html(this.title)).append(s("<div>").html(this.text)).appendTo(i.choices).bind(e)}),this.options.msgMoreResults&&s("<li>").addClass(i.options.moreResultsClass+" "+i.options.skipClass).html(i.options.msgMoreResults).appendTo(i.choices).bind(e),this.show()):this.options.msgNoResults&&(s("<li>").addClass(this.options.resultClass+" "+this.options.noResultsClass+" "+this.options.skipClass).html(this.options.msgNoResults).appendTo(this.choices).bind(e),this.show()))}},show:function(){this.visible||(this.visible=!0,this.choices.fadeIn(200))},hide:function(){this.visible&&(this.visible=!1,this.choices.removeClass(this.options.hoverClass).fadeOut(200))}}),s.fn[t.prototype.name]=function(){var i=arguments,e=i[0]?i[0]:null;return this.each(function(){var o=s(this);if(t.prototype[e]&&o.data(t.prototype.name)&&"initialize"!=e)o.data(t.prototype.name)[e].apply(o.data(t.prototype.name),Array.prototype.slice.call(i,1));else if(!e||s.isPlainObject(e)){var n=new t;t.prototype.initialize&&n.initialize.apply(n,s.merge([o],i)),o.data(t.prototype.name,n)}else s.error("Method "+e+" does not exist on jQuery."+t.name)})}}(jQuery);