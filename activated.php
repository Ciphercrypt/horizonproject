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
  if (!$universal->isLoggedIn()) {
    header('Location: '.DIR.'/login');
  }
?>

<?php
  $title = "Email activation!! • Horizon";
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
      <span>
        <?php 
            $e_v = $universal->e_verified($_SESSION['id']);
            if($e_v){
                echo "Your email has already been verified!!";
            } else {
                echo "Your email has been verified!!";
            }
        ?>
      </span>
    </div>
  </div>

</div>

<?php include 'includes/footer.php'; ?>
