<?php

session_start();

function change_date_to_sql($date) {
    list($gun, $ay, $yil) = explode('/', $date);
    return $yil."-".$ay."-".$gun;
}

require("db.class.php");
$db = new db();

$sefer_id = intval($_SESSION['sefer_id']);
$tarih = change_date_to_sql(strip_tags($_POST['tarih']));
$ad_soyad = strip_tags($_POST['koltuk_ad_soyad']);
$cins = $_POST['koltuk_cins'];
$koltuk = $_POST['koltuk'];
$uye_id = $_SESSION['id'];


$db->bindMore(array("sefer_id"=>$sefer_id , "tarih" => $tarih , "ad_soyad" => $ad_soyad , "cins" => $cins , "koltuk" => $koltuk , "uye" => $uye_id ));

$dolu_koltuklar =  $db->query("INSERT INTO rezervasyonlar (sefer_id,tarih,ad_soyad,cinsiyet,koltuk,uye_id) VALUES (:sefer_id,:tarih,:ad_soyad,:cins,:koltuk,:uye)");

$puan = 0;

$db->bind("sefer_id" , $sefer_id);
$fiyat =  $db->query("Select fiyat from seferler WHERE id = :sefer_id");
$fiyat = intval($fiyat[0]['fiyat']);

$db->bind("uye" , $uye_id);
$parapuan =  $db->query("Select parapuan from uyeler WHERE id = :uye");
$puan = intval($parapuan[0]['parapuan']);

if($_POST['puan'] === '1' ){

    if($puan<$fiyat){
        $puan = 0;
    }
    else{
        $puan -= $fiyat;
    }

}

$puan += intval($fiyat*1/10);

$db->bind("uye" , $uye_id );
$db->bind("puan" , $puan );

$parapuan_update =  $db->query("UPDATE uyeler SET parapuan = :puan WHERE id = :uye");