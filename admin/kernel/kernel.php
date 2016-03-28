<?php

require("db.class.php");
$db = new db();
$site_adress = 'http://127.0.0.1/otobus/';

session_start();

if(isset($_GET['cikis'])){

    session_destroy();
    header("Location: ".$site_adress);
    die();
}

if(isset($_SESSION['admin'])){

    $uye_ad = $_SESSION['ad_soyad'];
    $statu = $_SESSION['statu'];


    $oms =  $db->query("SELECT COUNT(*) as sayi FROM mesajlar WHERE okunma = 0");

    $okunmamis_mesaj_sayisi = $oms[0]['sayi'];


    $tpl->assign('uye_ad',$uye_ad);
    $tpl->assign('statu',$statu);
    $tpl->assign('okunmamis_mesaj_sayisi',$okunmamis_mesaj_sayisi);

    $tpl->assign('site_adress',$site_adress);


}
else{
    header("Location: ".$site_adress."admin/login.html");

}




function change_date_to_sql($date) {
    try{
        list($gun, $ay, $yil) = explode('/', $date);
        return $yil."-".$ay."-".$gun;}
    catch(Exception $e){
        echo "Yanlış Tarih Formatı";
    }

}