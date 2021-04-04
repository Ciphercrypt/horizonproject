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
  $title = "{$noti->titleNoti()} Developer • Horizon";
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
<style>
@import url("https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@1,400;1,600&display=swap");
* {
  box-sizing: border-box;
}

body {
  
}

.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
  width: 940px;
  margin: auto;
  background-color: #f7f8fc;
  font-family: "Open Sans", sans-serif;
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100vh;
  margin: 0;
}

.card {
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 2px 20px rgba(0, 0, 0, 0.5);
  overflow: hidden;
  width: 300px;
  transition: 0.5 ease;
  cursor: pointer;
}
.card:hover {
  transform: scale(1.1);
  box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.6);
}

.card-header img {
  width: 100%;
  height: 200px;
  object-fit: cover;
}

.card-body {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding: 20px;
  min-height: 250px;
  min-height: 250px;
}

.tag {
  background: green;
  border-radius: 5px;
  font-size: 15px;
  font-weight:1000;
  margin: 0;
  color: #fff;
  padding: 2px 10px;
  text-transform: uppercase;
}

.tag-teal {
  background-color: black;
}
.tag-purple {
  background-color: #3d1d94;
}
.tag-pink {
  background-color: red;
}

.card-body h3 {
  margin: 10px 0;
  text-align:left;
}
.card-body p {
  font-size: 13px;
  margin: 0 0 40px;
}
.user {
  display: flex;
  margin-top: auto;
}
.user img {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  margin-right: 10px;
}
.user-info h5 {
  margin: 0;
}
.user-info small {
  color: #888785;
}

@media (max-width: 940px) {
  .container {
    grid-template-columns: 1fr;
    justify-items: center;
  }
}
</style>

<div class="overlay"></div>
<div class="notify"><span></span></div>
<div class="ciphertext">


<div class="container">

      <div class="card">
        <div class="card-header">
          <img src="https://steamuserimages-a.akamaihd.net/ugc/786355787330847695/19F3B237D461AAC83F30390564DACA32B79D5E1B/" alt="rover" />
        </div>
        <div class="card-body">
          <span class="tag tag-teal">
            Avishkar Mohite
          </span>
          <h3>Avishkar Mohite is algo-addict Programmer with his key skills in python , java and android development.</h3>
          <div class="user">
          <a href="https://www.instagram.com/its_ciphertext_/ " class="fa fa-instagram" style="font-size:40px;margin-left:40px;" target="_blank"></a>
            <a href="https://www.linkedin.com/in/avishkar-mohite-3672131b6/" class="fa fa-linkedin" style="font-size:40px;margin-left :40px;" target="_blank"></a>
            <a href="https://github.com/ciphercrypt" class="fa fa-github" style="font-size:40px;margin-left:40px;" target="_blank"></a>

            
          </div>
        </div>
      </div>
      
      <div class="card">
        <div class="card-header">
          <img src="https://img.wattpad.com/8bd4c46e44c0599b8c3b930bd2da71fbe225a6fe/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f595a59324a4743785553334555773d3d2d3436333033353931352e313533386266636464373633373433383137353836353434343035352e676966" alt="city" />
        </div>
        <div class="card-body">
          <span class="tag tag-pink">
            Ajinkya Deshmukh
          </span>
          <h3>Ajinkya Deshmukh is techie on the mission and codes mostly in python and java.</h3>
          <div class="user">
            <a href="https://www.instagram.com/avdeshmukh991/" class="fa fa-instagram" style="font-size:40px;margin-left:40px;" target="_blank"></a>
            <a href='https://www.linkedin.com/in/ajinkya-deshmukh-433678193/' class="fa fa-linkedin" style="font-size:40px;margin-left :40px;" target="_blank"></a>
            <a href="https://github.com/Ajinkya991" class="fa fa-github" style="font-size:40px;margin-left:40px;" target="_blank"></a>

          </div>
        </div>
      </div>
    </div>

<!--
  <div class="dev_div inst">
    <img src="<?php echo DIR; ?>/images/needs/avishkardark.jpg" alt="">
    <span>Developed by <a href="https://avishkarmohite.great-site.net/" target="_blank">Avishkar Mohite</a> and <a href="https://www.linkedin.com/in/ajinkya-deshmukh-433678193/" target="_blank">Ajinkya Deshmukh</a> currently persuing B.Tech in computer science in <a href="https://www.vjti.ac.in/" target="_blank">VJTI, Mumbai.</a> </span>
    <span>Avishkar Mohite is Algo-addict programmer with key skills in python , java,cryptography and android+web development .Ajinkya Deshmukh is  a techie on the mission and  developer who  mostly writes code in Python & Java as these are his favourite languages. </span>
    <div class="dev_div_links">
      <a href="https://www.instagram.com/its_ciphertext_/" class="sec_btn"><span class="fa fa-instagram"></span> Instagram(A. Mohite)</a>
    </div>
    <iframe src="https://ghbtns.com/github-btn.html?user=ciphercrypt&type=follow&count=false&size=large" frameborder="0" scrolling="0" width="220px" height="30px"></iframe>
  </div> -->

</div>

<?php
if ($universal->isLoggedIn()) {
  include 'includes/footer.php';
} else if ($universal->isLoggedIn() == false) {
  include 'includes\index_footer.php';
}
?>
