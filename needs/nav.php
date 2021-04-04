<div class="m_n_wrapper">
  <div class="m_n">
    <ul class="m_n_ul">
      <?php if($universal->isLoggedIn()){ ?>
      <li class="m_n_li">
        <a href="<?php echo DIR; ?>/profile/<?php echo $universal->getUsernameFromSession(); ?>" class="m_n_a profile" data-link="profile">
          <span class="m_n_text">@<?php echo $universal->nameShortener($universal->getUsernameFromSession(), 20); ?></span>
          <span class="m_n_new"></span>
        </a>
      </li>
      <li class="m_n_li">
        <a href="<?php echo DIR; ?>" class="m_n_a index" data-link="index">
          <!-- <span class="m_n_icon"><i class="material-icons">home</i></span> -->
          <span class="m_n_text"><span class='fa fa-home'style="color:navy;font-size:18px;"></span>&nbspHome</span>
          <span class="m_n_new"></span>
        </a>
      </li>
      <li class="m_n_li">
        <a href="<?php echo DIR; ?>/explore" class="m_n_a explore" data-link="explore">
          <span class="m_n_text"><span class='fa fa-bandcamp' style="color:navy;font-size:18px;"></span>&nbspExplore</span>
          <span class="m_n_new"></span>
        </a>
      </li>
      
      <li class="m_n_li">
        <a href="<?php echo DIR; ?>/notifications" class="m_n_a notifications" data-link="notifications">
          <!-- <span class="m_n_icon"><i class="material-icons">notifications</i></span> -->
          <span class="m_n_text"><span class='fa fa-bell'style="color:navy;font-size:18px;"></span>&nbspNotifications</span>
          <span class="m_n_new"><?php echo $noti->unreadCount(); ?></span>
        </a>
      </li>
      <li class="m_n_li">
        <a href="<?php echo DIR; ?>/messages" class="m_n_a messages" data-link="messages">
          <!-- <span class="m_n_icon"><i class="material-icons">message</i></span> -->
          <span class="m_n_text"><span class='fa fa-telegram'style="color:navy;font-size:18px;"></span>&nbspMessages</span>
          <span class="m_n_new"><?php echo $message->getAllUnreadMssg(); ?></span>
        </a>
      </li>
      <li class="m_n_li">
        <a href="<?php echo DIR; ?>/profile/<?php echo $universal->getUsernameFromSession(); ?>?ask=bookmarks" class="m_n_a bookmarks" data-link="bookmarks">
          <!-- <span class="m_n_icon"><i class="material-icons">message</i></span> -->
          <span class="m_n_text"><span class='fa fa-bookmark'style="color:navy;font-size:18px;"></span> &nbspBookmarks</span>
          <span class="m_n_new"></span>
        </a>
      </li>
      
      <li class="m_n_li">
        <a href="<?php echo DIR; ?>/profile/<?php echo $universal->getUsernameFromSession(); ?>?ask=groups" class="m_n_a groups" data-link="groups">
          <!-- <span class="m_n_icon"><i class="material-icons">message</i></span> -->
          <span class="m_n_text"><span class='fa fa-group'style="color:navy;font-size:18px;"></span>&nbspGroups</span>
          <span class="m_n_new"></span>
        </a>
      </li>
      <li class="m_n_li">
        <a href="<?php echo DIR; ?>/profile/<?php echo $universal->getUsernameFromSession(); ?>?ask=photos" class="m_n_a photos" data-link="photos">
          <!-- <span class="m_n_icon"><i class="material-icons">message</i></span> -->
          <span class="m_n_text"><span class='fa fa-camera'style="color:navy;font-size:18px;"></span>&nbspPosts</span>
          <span class="m_n_new"></span>
        </a>
      </li>
      
      <li class="m_n_li">
        <a href="<?php echo DIR; ?>/explore?ask=exp_people" class="m_n_a people" data-link="people">
          <!-- <span class="m_n_icon"><i class="material-icons">edit</i></span> -->
          <span class="m_n_text"><span class='fa fa-search' style="color:navy;font-size:18px;"></span>&nbspFind People</span>
          <span class="m_n_new"></span>
        </a>
      </li>
      <li class="m_n_li">
        <a href="<?php echo DIR; ?>/edit" class="m_n_a edit" data-link="edit">
          <!-- <span class="m_n_icon"><i class="material-icons">edit</i></span> -->
          <span class="m_n_text"><span class='fa fa-edit'style="color:navy;font-size:18px;"></span>&nbspEdit profile</span>
          <span class="m_n_new"></span>
        </a>
      </li>
      <li class="m_n_li">
        <a href="<?php echo DIR; ?>/settings" class="m_n_a settings" data-link="settings">
          <!-- <span class="m_n_icon"><i class="material-icons">settings_applications</i></span> -->
          <span class="m_n_text"><span class='fa fa-cog' style="color:navy;font-size:18px;"></span>&nbspSettings</span>
          <span class="m_n_new"></span>
        </a>
      </li>
      <?php } ?>
    </ul>
  </div>

  <div class="m_n_bottom">
    <ul>
      <?php if ($universal->isLoggedIn() == true) { ?>
      <li><a href="<?php echo DIR; ?>/logout">Logout</a></li>
      <li><a href="<?php echo DIR; ?>/help">Help</a></li>
      <li><a href="#" class=""><i class="material-icons">more_horiz</i></a></li>
      <?php } ?>
    </ul>
  </div>

  <div class="options nav_options">
    <ul>
      <li><a href="<?php echo DIR; ?>/about">About</a></li>
      <li><a href="<?php echo DIR; ?>/developer">Developer</a></li>
    </ul>
  </div>

</div>
