<?php

require("db.class.php");
$db = new db();

session_start();
if(isset($_SESSION['parapuan'])){

    $db->bind("id" ,$_SESSION['id']);

    $prpn =  $db->query("SELECT parapuan FROM uyeler WHERE id = :id");

    $uye_ad = $_SESSION['ad_soyad'];
    $parapuan = $prpn[0]['parapuan'];
    $cins = $_SESSION['cinsiyet'];

    if($cins == 1){$cins_en = "man";}
    else{$cins_en = "woman";}

    $tpl->assign('uye_ad',$uye_ad);
    $tpl->assign('uye_parapuan',$parapuan);
    $tpl->assign('cins',$cins);
    $tpl->assign('cins_en',$cins_en);
}


$site_adress = 'http://127.0.0.1/otobus/';
$tpl->assign('site_adress','http://127.0.0.1/otobus/');
$tpl->assign('date_year',date('Y'));

if(isset($_GET['cikis'])){

    session_destroy();
    header("Location: ".$site_adress);
    die();
}


function change_date_to_sql($date) {
    list($gun, $ay, $yil) = explode('/', $date);
    return $yil."-".$ay."-".$gun;
}