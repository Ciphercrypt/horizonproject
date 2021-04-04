<?php
  $title = "Forgot password • Horizon";
  $keywords = "Horizon, Share and capture world's moments, share, capture, share, login, forgot password";
  $desc = "Horizon lets you talk about any social issue without any fear . We are human and that is what humans do";
?>

<?php include 'index/index_header.php'; ?>
<div class="notify"><span></span></div>
<div class="forgot">
  <div class="forgot_info">
    <span>Password retrieval</span>
  </div>
  <div class="forgot_main">
    <form class="forgot_form" action="" method="post">
      <span>Please enter the email you registered with</span>
      <input type="text" name="forgot_text" value="" placeholder="Your email.." required spellcheck="false" autofocus class="forget_text" id="forget_text">
      <input type="submit" name="forgot_submit" value="Recover" class="f_p_submit">
    </form>
  </div>
</div>

<div class="overlay-2"></div>

<?php include 'index/index_footer.php'; ?>
<script type="text/javascript">
  $('.forgot').passwordRetrieval();
</script>
