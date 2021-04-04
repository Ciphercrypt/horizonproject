<?php
  class search{

    protected $db;
    protected $DIR;

    public function __construct(){
      $db = N::_DB();
      $DIR = N::$DIR;

      $this->db = $db;
      $this->DIR = $DIR;
    }

    public function searchinstagram($value){
      $session = $_SESSION['id'];

      $universal = new universal;
      $avatar = new Avatar;
      $mutual = new mutual;
      $groups = new group;
      $Post = new post;
      $hashtag = new hashtag;

      echo "<div class='s_d_people s_d'><span class='s_header'>People & Groups</span><div class='s_d_peo'>";

      $q1 = $this->db->prepare("SELECT id, username FROM users WHERE username LIKE :username ORDER BY id LIMIT 5");
      $q1->execute(array(":username" => "%$value%"));
        if ($q1->rowCount() > 0 ) {
        while ($r1 = $q1->fetch(PDO::FETCH_OBJ)) {
          $userid = $r1->id;
          $user = $r1->username;

          echo
            "<a class='s_d_p' href='{$this->DIR}/profile/{$user}'><img src='{$this->DIR}/{$avatar->DisplayAvatar($userid)}' alt=''>
            <div class='s_d_c'><span class='s_d_username'>". $universal->nameShortener($user, 30). "</span>
            <span>{$mutual->eMutual($userid)}</span></div></a>";

        }
      }
      $q2 = $this->db->prepare("SELECT group_id, grp_name FROM groups WHERE grp_name LIKE :group ORDER BY group_id LIMIT 4");
      $q2->execute(array(":group" => "%$value%"));
      if ($q2->rowCount() > 0) {
        while ($r2 = $q2->fetch(PDO::FETCH_OBJ)) {
          $grpid = $r2->group_id;
          $grpname = $r2->grp_name;

          echo
            "<a class='s_d_p' href='{$this->DIR}/groups/{$grpid}'><img src='{$groups->grpAvatar($grpid)}' alt=''>
            <div class='s_d_c'><span class='s_d_username'>". $universal->nameShortener($grpname, 30). "</span>
            <span>{$groups->noOfGrpMembers($grpid)} members</span></div></a>";

        }
      }

      echo "</div></div>";
      echo "<div class='s_d_groups s_d'><span class='s_header'>Stands</span><div class='s_d_peo'>";

      


      $q4 = $this->db->prepare("SELECT post_id, text FROM text_post WHERE text LIKE :avi ORDER BY post_id LIMIT 4");
      $q4->execute(array(":avi" => "%$value%"));
      if ($q4->rowCount() > 0) {
        while ($r4 = $q4->fetch(PDO::FETCH_OBJ)) {
          $post_id = $r4->post_id;
          $text = $r4->text;

          echo
            "<a class='s_d_p' href='{$this->DIR}/view_post/{$post_id}'>
            <div class='s_d_c'><span class='s_d_username'>". $universal->nameShortener($text, 40). "</span>
           </div></a>";

        }
      }
      $q6 = $this->db->prepare("SELECT post_id,about  FROM image_post WHERE about LIKE :avi ORDER BY post_id LIMIT 4");
      $q6->execute(array(":avi" => "%$value%"));
      if ($q6->rowCount() > 0) {
        while ($r6 = $q6->fetch(PDO::FETCH_OBJ)) {
        $post_id = $r6->post_id;
          $about = $r6->about;
          echo
            "<a class='s_d_p' href='{$this->DIR}/view_post/{$post_id}'>
            <div class='s_d_c'><span class='s_d_username'>". $universal->nameShortener($about, 40). "</span>
           </div></a>";
      }}

      echo "</div></div>";
      echo " <div class='s_d_hashtags s_d'><span class='s_header'>Hashtags</span><div class='s_d_peo'>";

      $tag = preg_replace("#[\#]#", "", $value);
      $q3 = $this->db->prepare("SELECT DISTINCT hashtag FROM hashtag WHERE hashtag LIKE :hashtag ORDER BY hashtag_id LIMIT 12");
      $q3->execute(array(":hashtag" => "%#$tag%"));
      if ($q3->rowCount() > 0) {
        while ($r3 = $q3->fetch(PDO::FETCH_OBJ)) {
          $hashname = $r3->hashtag;

          echo
            "<a class='s_d_p h_d_p' href='{$this->DIR}/hashtag?tag=". substr($hashname, 1) ."'><span class='s_d_username'>". $universal->nameShortener($hashname, 30) ."</span>";
            // echo "<span class='s_d_light'>";
            // if ("#".$tag == $hashname) {
            //   echo $hashtag->noOfHashTags("$tag")." posts";
            // } else {
            //   echo "Working..";
            // }
            // echo "</span>
            echo "</a>";

        }
      }

      echo "</div></div>";

    }

  }
?>
