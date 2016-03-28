<?php
$nereden =strtoupper(strip_tags($_GET['nereden']));
$nereye = strtoupper(strip_tags($_GET['nereye']));
if(isset($_GET['tarih'])){
    $tarih = $_GET['tarih'];
}
else{
    $gun_ekleme = date('d')+1;
    $tarih = $gun_ekleme.date('/m/Y');
}

$tpl->assign('nereden',$nereden);
$tpl->assign('nereye',$nereye);
$tpl->assign('tarih',$tarih);

$tpl->assign('tarih_sql',change_date_to_sql($tarih));

 if($tarih <date('d/m/Y')){
     header("Location: ".$site_adress);
     die();
 }

$db->bindMore(array("nereden"=>$nereden , "nereye" => $nereye , "tarih" => change_date_to_sql($tarih) , "tarih2" => change_date_to_sql($tarih)));

// Aşagıdaki sorgu sefer özeliği tarih aralıklı olan seferler için yazıldı.

$seferler_tek  =  $db->query("SELECT seferler.id,seferler.fiyat,TIME_FORMAT(saati,'%H:%m') as saati,firmalar.firma_ad,
  otobus_tip.tip_adi,otobus_tip.internet,otobus_tip.rahat_koltuk,otobus_tip.tv,otobus_tip.kulaklik FROM seferler
INNER JOIN firmalar ON firmalar.firma_id = seferler.firma
INNER JOIN otobus_tip ON otobus_tip.id = seferler.otobus
WHERE nereden=(SELECT id FROM il_ilce WHERE ad = :nereden)
AND nereye=(SELECT id FROM il_ilce WHERE ad = :nereye)
AND seferler.sefer_ozellik_basla <= :tarih
AND seferler.sefer_ozellik_bitis >= :tarih2
AND sefer_ozellik = 2");


$db->bindMore(array("nereden"=>$nereden , "nereye" => $nereye , "tarih" => change_date_to_sql($tarih)));

// Aşagıdaki sorgu sefer özeliği sınırsız olan seferler için yazıldı.

$seferler_sinirli  =  $db->query("SELECT seferler.id,seferler.fiyat,TIME_FORMAT(saati,'%H:%m') as saati,firmalar.firma_ad,
  otobus_tip.tip_adi,otobus_tip.internet,otobus_tip.rahat_koltuk,otobus_tip.tv,otobus_tip.kulaklik FROM seferler
INNER JOIN firmalar ON firmalar.firma_id = seferler.firma
INNER JOIN otobus_tip ON otobus_tip.id = seferler.otobus
WHERE nereden=(SELECT id FROM il_ilce WHERE ad = :nereden)
AND nereye=(SELECT id FROM il_ilce WHERE ad = :nereye)
AND seferler.sefer_ozellik_basla <= :tarih
AND sefer_ozellik = 3");


$db->bindMore(array("nereden"=>$nereden , "nereye" => $nereye , "tarih" => change_date_to_sql($tarih)));

// Aşagıdaki sorgu sefer özeliği tek sefer olan seferler için yazıldı.

$seferler_sinirsiz  =  $db->query("SELECT seferler.id,seferler.fiyat,TIME_FORMAT(saati,'%H:%m') as saati,firmalar.firma_ad,
  otobus_tip.tip_adi,otobus_tip.internet,otobus_tip.rahat_koltuk,otobus_tip.tv,otobus_tip.kulaklik FROM seferler
INNER JOIN firmalar ON firmalar.firma_id = seferler.firma
INNER JOIN otobus_tip ON otobus_tip.id = seferler.otobus
WHERE nereden=(SELECT id FROM il_ilce WHERE ad = :nereden)
AND nereye=(SELECT id FROM il_ilce WHERE ad = :nereye)
AND seferler.sefer_ozellik_basla = :tarih
AND sefer_ozellik = 1");


$seferler = array_merge($seferler_tek,$seferler_sinirli);
$seferler = array_merge($seferler,$seferler_sinirsiz);

$tpl->assign('seferler',$seferler);
