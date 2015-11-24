<?php
/**
* @package   yoo_master
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) YOOtheme GmbH
* @license   http://www.gnu.org/licenses/gpl.html GNU/GPL
*/

// get template configuration
include($this['path']->path('layouts:template.config.php'));
	
?>
<!DOCTYPE HTML>
<html lang="<?php echo $this['config']->get('language'); ?>" dir="<?php echo $this['config']->get('direction'); ?>">

<head>
<?php echo $this['template']->render('head'); ?>
<style type="text/css">
<?php if ($this['config']->get('bg')) : ?>
body{background:#<?php echo $this['config']->get('bg-color'); ?> url(<?php echo $this['config']->get('site_url'); ?>/<?php echo $this['config']->get('bg-image'); ?>) no-repeat center center fixed;}
<?php endif; ?>
body{background-color:#<?php echo $this['config']->get('bg-color'); ?>}
<?php if ($this['modules']->count('logo')== 0) : ?>
#menubar {float: left;}
<?php endif; ?>

</style>

<?php if ($this['config']->get('video')) : ?>
<script type="text/javascript">
    function vidplay() {
       var video = document.getElementById("bgvid");
       var button = document.getElementById("play");
       if (video.paused) {
          video.play();
          button.textContent = "||";
       } else {
          video.pause();
          button.textContent = ">";
       }
    }
</script>
<style type="text/css">
@media (max-width: 1040px) {
	body { background: url(<?php echo $this['config']->get('video-img'); ?>) no-repeat center center fixed; }
}
</style>
<?php endif; ?>

</head>

<body id="page" class="page <?php echo $this['config']->get('body_classes'); ?>" data-config='<?php echo $this['config']->get('body_config','{}'); ?>'>
<?php if ($this['config']->get('video')) : ?>
      <video muted autoplay loop poster="<?php echo $this['config']->get('video-img'); ?>" id="bgvid">
      <source src="<?php echo $this['config']->get('video-webm'); ?>" type="video/webm">
      <source src="<?php echo $this['config']->get('video-mp4'); ?>" type="video/mp4">
    </video>
<?php endif; ?>

<?php if ($this['config']->get('video')) : ?>
    <div id="buttonbar"><button id="play" onclick="vidplay()">&gt;</button></div> 
<?php endif; ?>
    

<div class="header-outer">
  <?php if ($this['modules']->count('toolbar-l + toolbar-r') || $this['config']->get('date')) : ?>
  <div class="jp-toolbar-outer clearfix">
	<div class="wrapper clearfix">
		<div id="toolbar" class="clearfix">
			<?php if ($this['modules']->count('toolbar-l') || $this['config']->get('date')) : ?>
			<div class="float-left">
				<?php if ($this['config']->get('date')) : ?>
				<time datetime="<?php echo $this['config']->get('datetime'); ?>"><?php echo $this['config']->get('actual_date'); ?></time>
				<?php endif; ?>
				<?php echo $this['modules']->render('toolbar-l'); ?>
			</div>
			<?php endif; ?>
			<?php if ($this['modules']->count('toolbar-r')) : ?>
			<div class="float-right"><?php echo $this['modules']->render('toolbar-r'); ?></div>
			<?php endif; ?>
		</div>
	</div>
</div>
<?php endif; ?>

	<?php if ($this['modules']->count('logo + menu')) : ?>
	<div class="menu-outer">
        <div class="wrapper clearfix margin-bottom">
          <header id="header">
                    <div id="headerbar" class="clearfix">
                        <?php if ($this['modules']->count('logo')) : ?>	
                        <a id="logo" href="<?php echo $this['config']->get('site_url'); ?>"><?php echo $this['modules']->render('logo'); ?></a>
                        <?php endif; ?>
                        <?php if ($this['modules']->count('menu')) : ?>
                        <div id="menubar" class="clearfix">
                            <nav id="menu"><?php echo $this['modules']->render('menu'); ?></nav>
                        <?php endif; ?>
                        </div>
                     </div>
                </header>
            </div>
        <?php endif; ?>
    </div><!--end menu-outer-->


	<?php if ($this['modules']->count('slidetop')) : ?>
        <div class="wrapper clearfix">
        <?php echo $this['modules']->render('slidetop'); ?>
        </div>
    <?php endif; ?>
</div><!--end supersize-->

<!--TOP A B C D Module-->
<?php if ($this['modules']->count('top-a')) : ?>
<div class="top-a-outer">
    <div style="padding:30px 0" class="wrapper clearfix">
    <section id="top-a" class="grid-block"><?php echo $this['modules']->render('top-a', array('layout'=>$this['config']->get('top-a'))); ?></section>
	</div>
</div>
<?php endif; ?>

<?php if ($this['modules']->count('top-b')) : ?>
<div class="top-b-outer">
    <div style="padding:30px 0" class="wrapper clearfix">
    <section id="top-b" class="grid-block"><?php echo $this['modules']->render('top-b', array('layout'=>$this['config']->get('top-b'))); ?></section>
	</div>
</div>
<?php endif; ?>

<?php if ($this['modules']->count('top-c')) : ?>
<div class="top-c-outer">
    <div style="padding:30px 0" class="wrapper clearfix">
    <section id="top-c" class="grid-block"><?php echo $this['modules']->render('top-c', array('layout'=>$this['config']->get('top-c'))); ?></section>
	</div>
</div>
<?php endif; ?>

<?php if ($this['modules']->count('top-d')) : ?>
<div class="top-d-outer">
    <div style="padding:30px 0" class="wrapper clearfix">
    <section id="top-d" class="grid-block"><?php echo $this['modules']->render('top-d', array('layout'=>$this['config']->get('top-d'))); ?></section>
	</div>
</div>
<?php endif; ?>

<!--Maincontent-->
<div id="mainsite" class="clearfix">

  <?php if ($this['modules']->count('innertop + innerbottom + sidebar-a + sidebar-b') || $this['config']->get('system_output')) : ?>
	<div class="main-outer clearfix">
		<div class="wrapper clearfix">
			<div id="main" class="grid-block">
	
				<div id="maininner" class="grid-box">
					<?php if ($this['modules']->count('innertop')) : ?>
					<section id="innertop" class="grid-block"><?php echo $this['modules']->render('innertop', array('layout'=>$this['config']->get('innertop'))); ?></section>
					<?php endif; ?>
					<?php if ($this['modules']->count('breadcrumbs')) : ?>
					<section id="breadcrumbs"><?php echo $this['modules']->render('breadcrumbs'); ?></section>
					<?php endif; ?>
	
					<?php if ($this['config']->get('system_output')) : ?>
					<section id="content" class="grid-block"><?php echo $this['template']->render('content'); ?></section>
					<?php endif; ?>
	
					<?php if ($this['modules']->count('innerbottom')) : ?>
					<section id="innerbottom" class="grid-block"><?php echo $this['modules']->render('innerbottom', array('layout'=>$this['config']->get('innerbottom'))); ?></section>
					<?php endif; ?>
				</div>
				<!-- maininner end -->
				
				<?php if ($this['modules']->count('sidebar-a')) : ?>
				<aside id="sidebar-a" class="grid-box"><?php echo $this['modules']->render('sidebar-a', array('layout'=>'stack')); ?></aside>
				<?php endif; ?>
				
				<?php if ($this['modules']->count('sidebar-b')) : ?>
				<aside id="sidebar-b" class="grid-box"><?php echo $this['modules']->render('sidebar-b', array('layout'=>'stack')); ?></aside>
				<?php endif; ?>
				
			</div><!-- main end -->
			
		</div><!-- wrapper end -->
	</div><!-- main-outer end -->
    </div><!-- main-site end -->
	<?php endif; ?>
    
<!--BOTTOM A B C D Module-->
  
<?php if ($this['modules']->count('bottom-a')) : ?>
<div class="bottom-a-outer">
    <div style="padding:30px 0" class="wrapper clearfix">
    <section id="bottom-a" class="grid-block"><?php echo $this['modules']->render('bottom-a', array('layout'=>$this['config']->get('bottom-a'))); ?></section>
	</div>
</div>
<?php endif; ?>

<?php if ($this['modules']->count('bottom-b')) : ?>
<div class="bottom-b-outer">
    <div style="padding:30px 0" class="wrapper clearfix">
    <section id="bottom-b" class="grid-block"><?php echo $this['modules']->render('bottom-b', array('layout'=>$this['config']->get('bottom-b'))); ?></section>
	</div>
</div>
<?php endif; ?>

<?php if ($this['modules']->count('bottom-c')) : ?>
<div class="bottom-c-outer">
    <div style="padding:30px 0" class="wrapper clearfix">
    <section id="bottom-c" class="grid-block"><?php echo $this['modules']->render('bottom-c', array('layout'=>$this['config']->get('bottom-c'))); ?></section>
	</div>
</div>
<?php endif; ?>

<?php if ($this['modules']->count('map')) : ?>
	<div id="map">
		<?php echo $this['modules']->render('map'); ?>
	</div>
<?php endif; ?>

<?php if ($this['modules']->count('bottom-d')) : ?>
<div class="bottom-d-outer">
    <div style="padding:30px 0" class="wrapper clearfix">
    <section id="bottom-d" class="grid-block"><?php echo $this['modules']->render('bottom-d', array('layout'=>$this['config']->get('bottom-d'))); ?></section>
	</div>
</div>
<?php endif; ?>


<?php if ($this['modules']->count('footer-a')) : ?>
	<div class="footer-outer" style="padding:10px 0">
		<div class="wrapper clearfix" style="padding:10px 0">
			<section id="footer-a" class="grid-block"><?php echo $this['modules']->render('footer-a', array('layout'=>$this['config']->get('footer-a'))); ?></section>
		</div>
	</div>
<?php endif; ?>
	

	<?php if ($this['modules']->count('debug')) : ?>
	<?php echo $this['modules']->render('debug'); ?>
	<?php endif; ?>


<!--Loading footer for Google Code-->
<?php echo $this->render('footer'); ?>

<!--Loading TopTop Scroller-->
<?php if ($this['config']->get('totop_scroller')) : ?>
<p id="back-top"><a href="#page"><span></span></a></p>
<?php endif; ?>

</body>
</html>