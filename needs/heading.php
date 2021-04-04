<body>
  <div class="header ">
    <div class="logo">
      <a href="<?php echo DIR; ?>"><img src="<?php echo DIR; ?>/images/parlpng.png" alt="Horizon"></a>
    </div>
    <div class="search_box">
      <?php if($universal->isLoggedIn()){ ?>
      <input type="text" name="searchinstagram" placeholder="Search Horizon" spellcheck="false" autocomplete="off" class="search" autofocus>
      <span class="search_icon">
        <i class="fa fa-search" aria-hidden="true"></i>
      </span>
      <?php } ?>
    </div>
    <div class="header_right">
      <?php if($universal->isLoggedIn()){ ?>

        <a href="<?php echo DIR; ?>/explore" class="notification">
        <span class="sp_span">Explore</span>
      </a>


      <a href="<?php echo DIR; ?>/messages" class="notification">
        <span class="sp_span">Messages</span><sup class="m_n_new" style="color:red;"> <b><?php echo $message->getAllUnreadMssg(); ?> </b></sup>
      </a>


      <a href="<?php echo DIR; ?>/profile/<?php echo $universal->getUsernameFromSession(); ?>?ask=bookmarks" class="notification">
        <span class="sp_span">Bookmarks</span>
      </a>


      <a href="<?php echo DIR; ?>/explore?ask=exp_people" class="notification">
        <span class="sp_span">People</span>
      </a>


      <a href="<?php echo DIR; ?>/profile/<?php echo $universal->getUsernameFromSession(); ?>?ask=groups" class="notification">
        <span class="sp_span">Groups</span>
      </a>

      <a href="<?php echo DIR; ?>/profile/<?php echo $universal->getUsernameFromSession(); ?>?ask=photos" class="notification">
        <span class="sp_span">Photos</span>
      </a>
      
      <a href="<?php echo DIR; ?>/notifications" class="notification">
        <span class="notification_span nav_icon">
          <?php
          if($noti->unreadCount() > 0){
            echo "<i class='material-icons'>notifications_active</i>";
           } else {
            echo "<i class='material-icons'>notifications_none</i>";
          }
          ?>
        </span>
        <span class="links_span">Notifications</span><sup class="m_n_new" style="color:blue;font-size:12px;"><b> <?php echo $noti->unreadCount();?></b></sup>
      </a>
      <a href="<?php echo DIR; ?>/profile/<?php echo $universal->getUsernameFromSession(); ?>" class="sp" style="border-color:black;">
        <img src="<?php echo DIR."/".$avatar->SESSIONsAvatar(); ?>" alt="<?php echo $universal->getUsernameFromSession(); ?>'s avatar" class="sp_img">
        <span class="sp_span"><?php echo $universal->nameShortener($universal->getUsernameFromSession(), 20) ?></span>
      </a>
      <?php } ?> 
      <span class="show_more">
        <i class="material-icons">expand_more</i>
      </span>
    </div>
    <div class="sp_options options">
      <ul class="o_ul">
        <?php if ($universal->isLoggedIn() == true) { ?>
          <li class="o_li"><a href="<?php echo DIR; ?>/settings" class="o_a" alt="Settings">Settings</a></li>
          <li class="o_li"><a href="<?php echo DIR; ?>/edit" class="o_a" alt="Edit">Edit</a></li>
        <?php } ?>
        <li class="o_li"><a href="<?php echo DIR; ?>/help" class="o_a" alt="Help">Help</a></li>
        <li class="o_li"><a href="<?php echo DIR; ?>/about">About</a></li>
        <li class="o_li"><a href="<?php echo DIR; ?>/developer">Developer</a></li>
        <?php if ($universal->isLoggedIn() == true) { ?>
          <li class="o_li o_divider"><hr class="menu_divider"></li>
          <li class="o_li"><a href="<?php echo DIR; ?>/logout" class="o_a" alt="Settings">Logout</a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
