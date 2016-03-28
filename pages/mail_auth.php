<?php
$email = $_GET['mail'];
$token = $_GET['token'];

if($token === md5(md5($email))){
    $db->bind("email" , $email);

    $onayla =  $db->query("UPDATE uyeler SET email_onayi=1 WHERE email=:email");

    header("Location: ".$site_adress."?email=ok");
}
else{
    header("Location: ".$site_adress."?email=no");
}