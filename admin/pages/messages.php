<?php

if($statu === "2"){

    header("Location: ".$site_adress."admin");
    die();
}

$mesajlar =  $db->query("SELECT * FROM mesajlar LIMIT 50");

$tpl->assign('mesajlar',$mesajlar);

$okundu =  $db->query("UPDATE mesajlar SET okunma = 1 WHERE okunma = 0");