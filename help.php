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
  $title = "{$noti->titleNoti()} Help for you • Horizon";
  $keywords = "Horizon, Share and capture world's moments, share, capture, help";
  $desc = "Horizon lets you talk about any social issue without any fear . We are human and that is what humans do";
?>

<!-- including files for header of document -->
<?php
  if ($universal->isLoggedIn()) {
    include 'includes/header.php';
    include 'needs/heading.php';
    include 'needs/nav.php';
    include_once 'needs/search.php';
  } else if ($universal->isLoggedIn() == false) {
    include 'includes\index_header.php';
  }
?>

<div class="overlay"></div>
<div class="notify"><span></span></div>
<div class="ciphertext">

  <div class="help_div">
    <img src="<?php echo DIR; ?>/images/needs/tumblr_ne4s7eGNYj1snc5kxo1_500.gif" alt="">
  </div>

</div>

<?php
if ($universal->isLoggedIn()) {
  include 'includes/footer.php';
} else if ($universal->isLoggedIn() == false) {
  include 'includes\index_footer.php';
}
?>
