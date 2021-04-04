<?php include 'config/declare.php'; ?>

<!-- a universal file that has all the classes included -->
<?php include 'config/classesGetter.php'; ?>

<!-- creating objects -->
<?php
  $universal = new universal;
  $avatar = new Avatar;
  $post = new post;
  $noti = new notifications;
  $message = new message;
?>

<?php
  if ($universal->isLoggedIn() == false) {
    header('Location:'. DIR .'/welcome');
  }
  $session = $_SESSION['id'];
?>

<?php
  $title = "{$noti->titleNoti()} Explore Horizon • Share and capture world's moments";
  $keywords = "Horizon, Share and capture world's moments, share, capture, explore";
  $desc = "Horizon lets you talk about any social issue without any fear . We are human and that is what humans do";
?>

<?php include_once 'includes/header.php'; ?>
<?php include_once 'needs/heading.php'; ?>
<?php include_once 'needs/nav.php'; ?>

<div class="user_info" data-userid="<?php echo $session; ?>" data-sessionid="<?php echo $session; ?>" data-username="<?php echo $universal->getUsernameFromSession(); ?>"></div>

<div class="notify"><span></span></div>
<div class="overlay"></div>
<div class="ciphertext">

  <div class="exp_nav">
    <ul>
    <li><a href="exp_texts" data-hint="exp_texts" data-src="ask" class="exp_nav_link">Stands</a></li>
      <li><a href="exp_photos" data-hint="exp_photos" data-src="ask" class="exp_nav_link">Photos</a></li>
      <li><a href="exp_videos" data-hint="exp_videos" data-src="ask" class="exp_nav_link">Videos</a></li>
      <li><a href="exp_audios" data-hint="exp_audios" data-src="ask" class="exp_nav_link">Audios</a></li>
      <li><a href="exp_groups" data-hint="exp_groups" data-src="ask" class="exp_nav_link">Groups</a></li>
    </ul>
  </div>

  <div class="exp_hmm">
    <div class="spinner">
      <span></span><span></span><span></span>
    </div>
  </div>

  <div class="exp_info">
    <span>Click on tabs to refresh feeds</span>
  </div>

</div>

<?php include_once 'needs/image_show.php'; ?>
<?php include_once 'needs/search.php'; ?>
<?php include_once 'includes/footer.php'; ?>

<script type="text/javascript">
  $(function(){

    function fetch(elem){
      $.ajax({
        url: DIR+"/ajaxavi/explore/"+elem+".php",
        method: "GET",
        cache: false,
        beforeSend: function(e){
          $('.exp_hmm > .spinner').fadeIn('fast');
        },
        success: function(data){
          var link = $('.exp_nav_link');
          link.removeClass('exp_nav_active');
          $(".exp_nav_link[href='"+ elem +"']").addClass('exp_nav_active');
          $('.exp_hmm > .spinner').fadeOut('fast');
          $('.exp_hmm').html(data).hide().fadeIn(100);
          // $('html, body').animate({scrollTop: 380}, "slow");
        }
      });
    }

    var get = checkGET("ask");

    if (get.has) {
      fetch(get.value);
    } else {
      fetch("exp_texts");
    }

    LinkIndicator('explore');
  });
</script>
