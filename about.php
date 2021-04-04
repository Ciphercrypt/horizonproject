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
  $title = "{$noti->titleNoti()} About • Horizon";
  $keywords = "Horizon, Share and capture world's moments, share, capture, about";
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

  <div class="about_div inst">
    <img src="<?php echo DIR; ?>/images/parlpng.png" alt="">
    <div class="">
      <span>Horizon is a content based platform specially designed to let people speak freely on social issues without any fear.</span>
      <span>We have made our UI more user-friendly so that users can engage themselves in discussions .</span>
      <span>Once the old man said ,<blockquote>"hell is empty ,all devils are here."</blockquote>We say -"circus is empty, all clowns are in parliment".<br>So , let us come forward and keep speaking.</span>
    </div>
  </div>

</div>

<?php
if ($universal->isLoggedIn()) {
  include 'includes/footer.php';
} else if ($universal->isLoggedIn() == false) {
  include 'includes\index_footer.php';
}
?>
