<?php include 'config/declare.php'; ?>

<!-- a universal file that has all the classes included -->
<?php include 'config/classesGetter.php'; ?>

<!-- creating objects -->
<?php
  $universal = new universal;
  $avatar = new Avatar;
  $noti = new notifications;
  $message = new message;
?>

<?php
  if (!$universal->isLoggedIn() || $universal->e_verified($_SESSION['id'])) {
    header('Location: '.DIR.'/login');
  }
?>

<?php
  $title = "Thanks for registering • Horizon";
  $keywords = "Horizon, Share and capture world's moments, share, capture, about";
  $desc = "Horizon lets you talk about any social issue without any fear . We are human and that is what humans do";
?>

<?php 
  include 'includes/header.php';
  include 'needs/heading.php';
  include 'needs/nav.php';
?>

<div class="ciphertext">

  <div class="about_div inst thanks_div">
    <img src="<?php echo DIR; ?>/images/parlpng.png" alt="">
    <div class="">
      <span>A message has been sent to you email. Check your inbox and click on the link provided in the message to verify your email.</span>
    </div>
  </div>

</div>

<?php include 'includes/footer.php'; ?>
