<?php
  session_start();
  if (!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == "xmlhttprequest") {

    include '../../config/classesGetter.php';
    $search = new search;

    if (isset($_POST['searchinstagram'])) {
      $search->searchinstagram($_POST['searchinstagram']);
    }

  }
?>
