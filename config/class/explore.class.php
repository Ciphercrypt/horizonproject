<?php
  class explore{

    protected $db;
    protected $DIR;
    

    public function __construct(){
      $db = N::_DB();
      $DIR = N::$DIR;

      $this->db = $db;
      $this->DIR = $DIR;
    }

    

    public function explorePhotos(){
      $session = $_SESSION['id'];

      $avatar = new Avatar;
      $universal = new universal;
      $mutual = new mutual;
      $Time = new time;
      $follow = new follow_system;
      $post_like = new postLike;
      $comment = new postComment;
      $bookmark = new bookmark;




      $query = $this->db->prepare("SELECT post.post_id, post.user_id, image_post.image, image_post.about, image_post.filter, post.time FROM post, image_post WHERE post.user_id <> :me AND post.type = :type  AND post.post_id = image_post.post_id ORDER BY RAND() LIMIT 15");
      $query->execute(array(":me" => $session, ":type" => "image"));
      if ($query->rowCount() > 0) {
        while ($row = $query->fetch(PDO::FETCH_OBJ)) {
          $post = $row->post_id;
          $user = $row->user_id;
          $image = $row->image;
          $time = $row->time;
          $filter = $row->filter;
          $text= $row->about;

          

          ?>


        




<div class="tweet-wrap">
  <div class="tweet-header">
    <img src="<?=$this->DIR?>/<?=$avatar->DisplayAvatar($user)?>" alt="" class="avator" onclick="javascript:location.href=' <?=$this->DIR?>/profile/<?=$universal->GETsDetails($user, "username") ?> '">
    <div class="tweet-header-info">
    <?=$universal->GETsDetails($user, "firstname")?> <a href=" <?=$this->DIR?>/profile/<?=$universal->GETsDetails($user, "username") ?> "><span>@<?=$universal->GETsDetails($user, "username")?></span></a><span><?=$Time->timeAgo($time)?> ago
</span>
      <p><?=$text?> </p>
      
    </div>
    
  </div>
  <a href="<?=$this->DIR?>/view_post/<?=$post?>">
  <div class="tweet-img-wrap" >
    <img  src='<?=$this->DIR?>/media/horizon_<?=$image?>'  data-imgby='<?=$universal->GETsDetails($user, "username")?>' data-postid='<?=$post?>' data-time='<?=$Time->timeAgo($time)?>' data-filter='<?=$filter?>' alt="" class="tweet-img">
  </div> </a>

  <!--
  <div class="tweet-info-counts">
    
    <div class="comments">
      
      <svg class="feather feather-message-circle sc-dnqmqq jxshSx" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
      <div class="comment-count">33</div>
      <div class='p_comments'><?= $comment->getComments($post) ?></div>

    </div>
    
    
    <div class="likes">
      <svg class="feather feather-heart sc-dnqmqq jxshSx" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
      <div class="likes-count">
        <?= $post_like->getPostLikes($post) ?>
      </div>
    </div>
    
    <div class="message">
    <div class='p_send_wra'><span class='p_send' data-description='Share'><i class='material-icons'>send</i></span></div>
    </div> -->
<?php
    echo "</div></div><hr><div class='p_a'><div class='p_do'>";
          echo "<div class='p_Like_wra'>";
          if($post_like->likedOrNot($post)){
            echo "<span class='p_unlike' data-description='Unlike'><i class='material-icons'>favorite</i></span>";
          } else if ($post_like->likedOrNot($post) == false) {
            echo "<span class='p_like' data-description='Like'><i class='material-icons'>favorite_border</i></span>";
          }
          echo "</div>";
          echo "<div class='p_bmrk_wra'>";
          if ($bookmark->bookmarkedOrNot($post)) {
            echo "<span class='p_unbookmark' data-description='Unbookmark'><i class='material-icons'>bookmark</i></span>";
          } else if ($bookmark->bookmarkedOrNot($post) == false) {
            echo "<span class='p_bookmark' data-description='Bookmark'><i class='material-icons'>bookmark_border</i></span>";
          }
          echo "</div>";
          echo "<div class='p_send_wra'><span class='p_send' data-description='Share'><i class='material-icons'>send</i></span></div>";
          echo "</div><div class='p_did'><span class='p_likes likes'>". $post_like->getPostLikes($post) ."</span>
          </div></div><hr>";
          echo "<div class='p_comments'>". $comment->getComments($post) ."</div>";
?>

  </div>
</div>


<?php

        }
      } else if ($query->rowCount() == 0) {
        echo "<div class='home_last_mssg exp_p_last'>
          <img src='{$this->DIR}/images/needs/large.jpg'>
          <span>Sorry, no photos to explore</span>
        </div>";
      }

    }

    public function explorePeople(){
      $session = $_SESSION['id'];

      $avatar = new Avatar;
      $universal = new universal;
      $mutual = new mutual;
      $Time = new time;
      $follow = new follow_system;

      $query = $this->db->prepare("SELECT id FROM users WHERE id <> :me ORDER BY RAND() ");
      $query->execute(array(":me" => $session));
      if ($query->rowCount() > 0) {
        while ($row = $query->fetch(PDO::FETCH_OBJ)) {
          $id = $row->id;

          if ($follow->isFollowing($id) == false) {
            echo "<div class='exp_f_ppl inst'>
                <img src='{$this->DIR}/{$avatar->DisplayAvatar($id)}' alt=''>
                <div class='exp_p_ppl_content'>
                  <a href='{$this->DIR}/profile/{$universal->GETsDetails($id, "username")}'>{$universal->GETsDetails($id, "username")}</a>
                  <span>{$mutual->eMutual($id)}</span>
                </div>
                <div class='exp_f_ppl_act' data-getid='{$id}'>";
                  if ($follow->isFollowing($id)) {
                    echo "<a href='#' class='unfollow pri_btn'>Unfollow</a>";
                  } else if ($follow->isFollowing($id) == false) {
                    echo "<a href='#' class='follow pri_btn'>Follow</a>";
                  }
                echo "</div>
              </div>";

          }

        }
      } else if ($query->rowCount() == 0) {
        echo "<div class='home_last_mssg exp_p_last'>
          <img src='{$this->DIR}/images/needs/large.jpg'>
          <span>Sorry, no one to explore</span>
        </div>";
      }

    }



    public function getTexts(){

      $avatar = new Avatar;
      $universal = new universal;
      $Time = new time;
      $post_like = new postLike;
      $bookmark = new bookmark;
      $taggings = new taggings;
      $share = new share;
      $comment = new postComment;
      $follow = new follow_system;
      $settings = new settings;
      $post= new post;
      $session = $_SESSION['id'];

      $query = $this->db->prepare("SELECT post.post_id, post.user_id, post.type, post.time, post.font_size, post.address FROM post WHERE post.type='text' ORDER BY post.time DESC LIMIT 50");
      $query->execute();


      if ($query->rowCount() > 0) {
        while ($row = $query->fetch(PDO::FETCH_OBJ)) {
          $post_id = $row->post_id;
          $user_id = $row->user_id;
          $type = $row->type;
          $time = $row->time;
          $size = $row->font_size;
          $address = $row->address;
        
         

          echo "<div class='posts home_posts inst' data-postid='{$post_id}' data-time='{$time}'><div class='p_i'><div class='p_i_img'>";
          echo "<img src='{$this->DIR}/{$avatar->DisplayAvatar($user_id)}' alt='{$universal->GETsDetails($user_id, "username")}'>";
          echo "</div><div class='p_i_1'>";
          echo $post->addressN($address, $user_id);
          echo "<br><a style='color:gray;' href='". DIR ."/profile/{$universal->GETsDetails($user_id, "username")}' data-getid='{$user_id}' class='inst_username' title='{$universal->GETsDetails($user_id, "username")}'>@{$universal->nameShortener($universal->GETsDetails($user_id, "username"), 25)}</a><span title='". $post->addressTitle($address, $user_id) ."'>";
          echo "</span>";
          echo "</div><div class='p_i_2'><div class='p_time'>";
          echo "<span class=''>". $Time->timeAgo($time) ."</span></div><div class='p_h_opt'>";
          echo "<span class='p_tags'>". $taggings->getTaggings($post_id) ."</span>";
          echo "<span class='p_comm'>". $share->getShares($post_id) ."</span>";
          echo "<span class='exp_p_menu'><i class='material-icons'>expand_more</i></span></div></div><div class='options p_options'><ul>";
          echo "<li><a href='{$this->DIR}/view_post/{$post_id}'>Open</a></li>";
         


          if ($follow->isFollowing($user_id)) {
            echo "<li><a href='#' class='simple_unfollow'>Unfollow</a></li>";
          }
          if ($settings->isBlocked($user_id) == false) {
            echo "<li><a href='#' data-getid='{$user_id}' data-username='{$universal->nameShortener($universal->GETsDetails($user_id, "username"), 20)}' class='block'>Block {$universal->nameShortener($universal->GETsDetails($user_id, "username"), 12)}</a></li>";
          }
          if ($taggings->AmITagged($post_id)) {
            echo "<li><a href='#' class='untag'>Untag</a></li>";
          }
          if ($share->AmIsharedTo($post_id)) {
            echo "<li><a href='#' class='unshare'>Remove share</a></li>";
          }
          if ($share->AmIsharedBy($post_id)) {
            echo "<li><a href='#' class='un__share'>Unshare</a></li>";
          }


          echo "<li><a href='#' data-link='{$universal->urlChecker($this->DIR)}/view_post/{$post_id}' class='p_copy_link'>Copy link</a></li>";
          echo "</ul></div></div><div class='p_o'><div class='p_actual'>";
          echo $post->getDifferentPost($type, $post_id, $size);
          echo "</div></div><hr><div class='p_a'><div class='p_do'>";
          echo "<div class='p_Like_wra'>";
          if($post_like->likedOrNot($post_id)){
            echo "<span class='p_unlike' data-description='Unlike'><i class='material-icons'>favorite</i></span>";
          } else if ($post_like->likedOrNot($post_id) == false) {
            echo "<span class='p_like' data-description='Like'><i class='material-icons'>favorite_border</i></span>";
          }
          echo "</div>";
          echo "<div class='p_bmrk_wra'>";
          if ($bookmark->bookmarkedOrNot($post_id)) {
            echo "<span class='p_unbookmark' data-description='Unbookmark'><i class='material-icons'>bookmark</i></span>";
          } else if ($bookmark->bookmarkedOrNot($post_id) == false) {
            echo "<span class='p_bookmark' data-description='Bookmark'><i class='material-icons'>bookmark_border</i></span>";
          }
          echo "</div>";
          echo "<div class='p_send_wra'><span class='p_send' data-description='Share'><i class='material-icons'>send</i></span></div>";
          echo "</div><div class='p_did'><span class='p_likes likes'>". $post_like->getPostLikes($post_id) ."</span>
          </div></div><hr>";
          echo "<div class='p_comments'>". $comment->getComments($post_id) ."</div>";
          echo "</div>";

        }
        // echo "<div class='feed_inserted'></div>";
        echo "<div class='post_end feed_inserted'>Looks like you've reached the end </div>";
      } else if ($query->rowCount() == 0) {
       
          echo "<div class='home_last_mssg'>
            <img src='{$this->DIR}/images/needs/large.jpg'>
            <span>Looks like you're new, Follow some to fill up your feed or post from above options</span>
          </div>";
       
      }

     

    }
    public function exploreGroups(){
      $session = $_SESSION['id'];

      $groups = new group;

      $query = $this->db->prepare("SELECT group_id, grp_name, grp_avatar FROM groups ORDER BY RAND()");
      $query->execute(array(":me" => $session));
      if($query->rowCount() > 0) {
        while ($row = $query->fetch(PDO::FETCH_OBJ)) {
          $grp = $row->group_id;
          $name = $row->grp_name;
          $avatar = $row->grp_avatar;

          if ($groups->memberOrNot($grp, $session) == false) {
            echo "<div class='exp_f_ppl inst'>
                <img src='{$groups->grpAvatar($grp)}' alt=''>
                <div class='exp_p_ppl_content'>
                  <a href='{$this->DIR}/groups/{$grp}'>{$name}</a>
                  <span>";
                  if ($groups->mutualGrpMemCount($grp) == 0) {
                    echo $groups->noOfGrpMembers($grp)." members";
                  } else {
                    echo $groups->mutualGrpMemCount($grp)." mutual members";
                  }
                  echo "</span>
                </div>
                <div class='exp_f_ppl_act' data-grp='{$grp}'>";
                  if ( $groups->memberOrNot($grp, $session)) {
                    echo "<a href='#' class='pri_btn leave_grp'>Leave group</a>";
                  } else if ( $groups->memberOrNot($grp, $session) == false) {
                    echo "<a href='#' class='pri_btn join_grp'>Join group</a>";
                  }
                echo "</div>
              </div>";
          }

        }
      }

    }

    public function exploreAudios(){
      $session = $_SESSION['id'];

      $universal = new universal;
      $avatar = new Avatar;
      $Time = new time;
      $groups = new group;

      $query = $this->db->prepare("SELECT post.post_id, post.user_id, audio_post.audio, post.time, post.post_of, post.grp_id FROM post, audio_post WHERE post.user_id <> :me AND post.type = :type  AND post.post_id = audio_post.post_id ORDER BY RAND() LIMIT 4");
      $query->execute(array(":me" => $session, ":type" => "audio"));
      if ($query->rowCount() == 0) {
        echo "<div class='home_last_mssg'>
          <img src='{$this->DIR}/images/needs/large.jpg'>
          <span>Sorry, no audios to explore</span>
        </div>";
      }
      while ($row = $query->fetch(PDO::FETCH_OBJ)) {
        $audio = $row->audio;
        $post = $row->post_id;
        $user = $row->user_id;
        $time = $row->time;
        $of = $row->post_of;
        $grp = $row->grp_id;

        echo "<div class='exp_audio inst'>
          <div class='exp_aud_top'>
            <img src='{$this->DIR}/{$avatar->DisplayAvatar($user)}' alt=''>
            <div class='exp_aud_con'>
              <a href='{$this->DIR}/profile/{$universal->GETsDetails($user, "username")}'>{$universal->nameShortener($universal->GETsDetails($user, "username"), 30)}</a>";
              if ($of == "group") {
                echo "<span class='to_grp_arrow'><i class='material-icons'>arrow_drop_up</i></span><a href='{$this->DIR}/groups/{$grp}' class='to_grp_name exp_grp_name'>{$universal->nameShortener($groups->GETgrp($grp, "grp_name"), 20)}</a>";
              }
              echo "<span>{$Time->timeAgo($time)}</span>
            </div>
            <a href='{$this->DIR}/view_post/{$post}' class='sec_btn exp_aud_open'>Open post</a>
          </div>
          <hr>

          <div class='p_aud' data-song='{$this->DIR}/media/{$audio}'>
            <span class='p_aud_time_bubble'>0:00</span>
            <div class='p_aud_ctrls'>
              <div class='p_aud_info'>
                <span class='p_aud_name'>The Weeknd - Starboy (official) ft. Daft Punk</span>
              </div>
              <span class='p_aud_pp'><i class='material-icons'>play_arrow</i></span>
              <div class='p_aud_seek'>
                <input class='p_aud_seek_range' type='range' name='p_aud_seek_range' value='0' min='0' max='100' step='1'>
              </div>
              <div class='p_aud_duration'>
                <span class='p_aud_cur'>0:00</span>
                <span class='p_aud_dur_sep'>/</span>
                <span class='p_aud_dur'>0:00</span>
              </div>
              <div class='p_aud_vol_div'>
                <input type='range' name='p_aud_vol_slider' value='100' min='0' max='100' step='1'>
              </div>
              <span class='p_aud_vup'><i class='material-icons'>volume_up</i></span>
            </div>
          </div>
        </div>";

      }

    }

    public function exploreVideos(){
      $session = $_SESSION['id'];

      $universal = new universal;
      $avatar = new Avatar;
      $Time = new time;
      $groups = new group;

      $query = $this->db->prepare("SELECT post.post_id, post.user_id, video_post.video, post.time, post.post_of, post.grp_id FROM post, video_post WHERE post.user_id <> :me AND post.type = :type  AND post.post_id = video_post.post_id ORDER BY RAND() LIMIT 1");
      $query->execute(array(":me" => $session, ":type" => "video"));
      if ($query->rowCount() == 0) {
        echo "<div class='home_last_mssg'>
          <img src='{$this->DIR}/images/needs/large.jpg'>
          <span>Sorry, no videos to explore</span>
        </div>";
      }
      while ($row = $query->fetch(PDO::FETCH_OBJ)) {
        $video = $row->video;
        $post = $row->post_id;
        $user = $row->user_id;
        $time = $row->time;
        $of = $row->post_of;
        $grp = $row->grp_id;

        echo "<div class='exp_find_vid inst'>
          <div class='exp_aud_top'>
            <img src='{$this->DIR}/{$avatar->DisplayAvatar($user)}' alt=''>
            <div class='exp_aud_con'>
              <a href='{$this->DIR}/profile/{$universal->GETsDetails($user, 'username')}'>{$universal->nameShortener($universal->GETsDetails($user, 'username'), 30)}</a>";
              if ($of == "group") {
                echo "<span class='to_grp_arrow'><i class='material-icons'>arrow_drop_up</i></span><a href='{$this->DIR}/groups/{$grp}' class='to_grp_name exp_grp_name'>{$universal->nameShortener($groups->GETgrp($grp, "grp_name"), 20)}</a>";
              }
              echo "<span>{$Time->timeAgo($time)}</span>
            </div>
            <a href='{$this->DIR}/view_post/{$post}' class='sec_btn exp_aud_open'>Open post</a>
          </div>
          <hr>
          <div class='p_vid'>
           <video src='{$this->DIR}/media/horizon_{$video}' loop preload='auto'></video>
           <span class='p_vid_pp_large'><i class='material-icons'>play_arrow</i></span>
           <span class='p_vid_cur p_vid_time_teaser'>0:00</span>
           <span class='p_vid_time_bubble'>0:00</span><div class='p_vid_ctrls'><div class='p_vid_seek'>
           <input class='p_vid_seek_range' type='range' name='p_vid_range' value='0' min='0' max='100' step='1'>
           </div><span class='p_vid_pp'><i class='material-icons'>play_arrow</i></span>
           <div class='p_vid_duration'><span class='p_vid_cur'>0:00</span><span class='p_vid_dur_sep'>/</span>
           <span class='p_vid_dur'>0:00</span></div><div class='p_vid_vol_div'>
           <input type='range' name='p_vid_vol_slider' value='100' min='0' max='100' step='1'>
           </div><span class='p_vid_vup'><i class='material-icons'>volume_up</i></span>
           <div class='p_vid_pbr_div'><ul><li data-pbr='2'>2x</li><li data-pbr='1.75'>1.75x</li>
           <li data-pbr='1.5'>1.5x</li><li data-pbr='1.25'>1.25x</li><li data-pbr='1' class='pbr_class'>1x</li>
           <li data-pbr='0.75'>0.75x</li><li data-pbr='0.5'>0.5x</li></ul></div>
           <span class='p_vid_setting'>1x</span><div class='p_vid_shadow'></div></div></div>
        </div>";

      }

    }



    public function exploreTexts(){


        $session = $_SESSION['id'];
        
  
        $universal = new universal;
        $avatar = new Avatar;
        $Time = new time;
        $groups = new group;
  
        $query = $this->db->prepare("SELECT text_post.post_id, text_post.user_id, text_post.text, post.time, post.post_of, post.grp_id FROM post, audio_post WHERE post.user_id <> :me AND post.type = :type  AND post.post_id = audio_post.post_id ORDER BY RAND() LIMIT 4");
        $query->execute(array(":me" => $session, ":type" => "audio"));
        if ($query->rowCount() == 0) {
          echo "<div class='home_last_mssg'>
            <img src='{$this->DIR}/images/needs/large.jpg'>
            <span>Sorry, no audios to explore</span>
          </div>";
        }
        while ($row = $query->fetch(PDO::FETCH_OBJ)) {
          $audio = $row->audio;
          $post = $row->post_id;
          $user = $row->user_id;
          $time = $row->time;
          $of = $row->post_of;
          $grp = $row->grp_id;
  
    }

  }

  }
?>
