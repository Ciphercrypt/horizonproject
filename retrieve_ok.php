<?php include 'config/declare.php'; ?>

<!-- a universal file that has all the classes included -->
<?php include 'config/classesGetter.php'; ?>

<!-- creating objects -->
<?php
  $universal = new universal;
?>

<?php
  if ($universal->isLoggedIn()) {
    header('Location: '.DIR);
  }
?>

<?php
  $title = "Thanks for registering • Horizon";
  $keywords = "Horizon, Share and capture world's moments, share, capture, about";
  $desc = "Horizon lets you talk about any social issue without any fear . We are human and that is what humans do";
?>

<?php include 'index/index_header.php'; ?>

<div class="ciphertext">

  <div class="about_div inst thanks_div">
    <img src="<?php echo DIR; ?>/images/needs/parlpng.png" alt="">
    <div class="">
      <span>A message has been sent to you email. Check your inbox and click on the link provided in the message to retrieve your account.</span>
    </div>
  </div>

</div>

<?php include 'index/index_footer.php'; ?>
