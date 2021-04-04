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
  $title = "Horizon";
  $keywords = "Horizon, fear about nothing , let us talk about evil";
  $desc = "Horizon lets you talk about any social issue without any fear . We are human and that is what humans do";
?>

<?php  include 'includes\index_header.php'; ?>

<div class="index_wrapper">

 


  <div class="banner" align="center">
     
    <img src="<?php echo DIR; ?>/images/needs/avi.svg" alt="">
  </div>

  <div class="username_checker i_c">
    <span class="checker_text">username not available</span>
    <span class="checker_icon">
      <i class="fa fa-frown-o" aria-hidden="true"></i>
    </span>
  </div>

  <div class="feature">
    <div class="feature_desc">
     <h3 style="font-family:times new roman;color:green;"> Once , Albert Einsteine said;</h3> <h2 style="font-family:georgia;color:dark;">"The world is a dangerous place to live. Not because of the people who are evil; but because of the people who don’t do anything about it."</h2>
      <h3>So, let us take one step together with <strong style="font-family:cursive;">Horizon</strong>  and discuss for humanity ...</h3>
      <a href="<?php echo DIR; ?>/about" class="pri_btn">View more</a>
    </div>
    <div class="index_login sign_up_div">
      <form class="index_form login" action="" method="post">
        <input type="text" name="s_username" value="" autocomplete="off" placeholder="Username" class="s_username big_input" spellcheck="false" mssg="" maxlength="32" required autofocus>
        <input type="password" name="s_password" value="" autocomplete="off" placeholder="Password" id="password" class="s_password big_input" required maxlength="32">
        <span class="show_psswrd home_show_psswrd" id="show_psswrd">
          <i class="fa fa-lock" aria-hidden="true"></i>
        </span>
        <input type="submit" name="s_submit" value="Log in to continue" class="s_submit">
      </form>
      <div class="forgot_psswrd">
        <a href="forgot_psswrd" class="a_pri hover" alt="Forgot your password" data-description="Forgot your password">Forgot password?</a>
        <a href="signup" class="a_pri" alt="Open in another page">No account?</a>
      </div>
    </div>
  </div>

  <div class="notify">
    <span></span>
  </div>

</div>

<div class="overlay-2"></div>
<?php include 'includes\index_footer.php'; ?>

<script type="text/javascript">
  $(function(e){
    // $('.s_username').username_checker({
    //   url: "reg_process/@username_checker.php"
    // });

    $('#show_psswrd').togglePassword({
      input: document.getElementById('password')
    });

    $('form').on('submit', (function(e){
      e.preventDefault();
      $('.s_submit').prop('disabled', true);
      $('.overlay-2').show();
      login($('.s_username').val(), $('.s_password').val(), $('.s_submit'));
    }))

  });
</script>
