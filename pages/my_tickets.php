<?php
if(!isset($_SESSION['id'])){
    header("Location: ".$site_adress);
    die();
}


$db -> bind("id",$_SESSION['id']);
$gecmis_bilet_sayisi =  $db->query("SELECT COUNT(*) as sayi FROM rezervasyonlar WHERE uye_id = :id AND tarih < CURDATE()");

$db -> bind("id",$_SESSION['id']);
$gelecek_bilet_sayisi =  $db->query("SELECT COUNT(*) as sayi FROM rezervasyonlar WHERE uye_id = :id AND tarih >= CURDATE()");

$gecmis_bilet_sayisi = $gecmis_bilet_sayisi[0]['sayi'];
$gelecek_bilet_sayisi = $gelecek_bilet_sayisi[0]['sayi'];

$tpl->assign("gecmis_bilet_sayisi",$gecmis_bilet_sayisi);
$tpl->assign("gelecek_bilet_sayisi",$gelecek_bilet_sayisi);

if(isset($_GET['gecmis'])){
    $db -> bind("id",$_SESSION['id']);
    $gecmis_biletler =  $db->query("SELECT ad_soyad,DATE_FORMAT(rezervasyonlar.tarih, '%d/%m/%Y') as tarih,koltuk,TIME_FORMAT(seferler.saati , '%H:%m') as saati,nereden.ad as nereden,nereye.ad as nereye FROM rezervasyonlar
INNER JOIN seferler ON seferler.id = rezervasyonlar.sefer_id
INNER JOIN il_ilce nereden ON seferler.nereden = nereden.id
INNER JOIN il_ilce nereye ON seferler.nereye = nereye.id WHERE uye_id=:id AND tarih < CURDATE() LIMIT 50");

    if(empty($gecmis_biletler)){
        $tpl->assign("yok","1");
    }
    $tpl->assign("biletler",$gecmis_biletler);

}
else{
    $db -> bind("id",$_SESSION['id']);
    $gelecek_biletler =  $db->query("SELECT ad_soyad,DATE_FORMAT(rezervasyonlar.tarih, '%d/%m/%Y') as tarih,koltuk,TIME_FORMAT(seferler.saati , '%H:%m') as saati,nereden.ad as nereden,nereye.ad as nereye FROM rezervasyonlar
INNER JOIN seferler ON seferler.id = rezervasyonlar.sefer_id
INNER JOIN il_ilce nereden ON seferler.nereden = nereden.id
INNER JOIN il_ilce nereye ON seferler.nereye = nereye.id WHERE uye_id=:id AND tarih >= CURDATE() LIMIT 50");

    if(empty($gelecek_biletler)){
        $tpl->assign("yok","1");
    }

    $tpl->assign("biletler",$gelecek_biletler);
}