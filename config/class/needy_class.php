<?php

  class N{

    public static $e;
    public static $database;
    public static $DIR = "/Horizon";
    public static $GMAIL = "amohitetheworld@gmail.com";
    public static $GMAIL_PASSWORD = "9657246308";

    public static function _DB(){
      try {
        self::$database = new PDO('mysql:host=localhost:3306;dbname=horizon;charset=utf8mb4', 'root', '');
        self::$database->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $e = self::$e;
      } catch (PDOException $e) {
        echo $e->getMessage();
      }
      return self::$database;
    }

  }

?>
