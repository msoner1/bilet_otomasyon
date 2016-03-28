<?php


$yaklasan_seferler =  $db->query("SELECT  seferler.id,fiyat, nereden.ad AS nereden ,nereye.ad AS nereye , DATE_FORMAT(CURDATE(), '%d/%m/%Y') as tarih,TIME_FORMAT(saati,'%H:%m') as saati FROM seferler
INNER JOIN il_ilce nereden ON seferler.nereden = nereden.id
INNER JOIN il_ilce nereye ON seferler.nereye = nereye.id
WHERE sefer_ozellik_basla<CURDATE() AND
sefer_ozellik = 3 AND
saati > CURRENT_TIME ORDER BY saati LIMIT 5");

if(count($yaklasan_seferler) < 5){
        $yaklasan_seferler =  $db->query("SELECT  seferler.id,fiyat, nereden.ad AS nereden ,nereye.ad AS nereye , DATE_FORMAT(CURDATE()+INTERVAL 1 DAY, '%d/%m/%Y') as tarih,TIME_FORMAT(saati,'%H:%m') as saati FROM seferler
INNER JOIN il_ilce nereden ON seferler.nereden = nereden.id
INNER JOIN il_ilce nereye ON seferler.nereye = nereye.id
WHERE sefer_ozellik_basla<CURDATE()+INTERVAL 1 DAY AND
sefer_ozellik = 3");
}

$tpl->assign('yaklasan_seferler',$yaklasan_seferler);

$kampanyalar =  $db->query("SELECT * FROM kampanyalar WHERE baslangic <= CURDATE() AND
  bitis > CURDATE() ORDER BY baslangic DESC LIMIT 4");

$tpl->assign('kampanyalar',$kampanyalar);

if(isset($_GET['email'])){

        $tpl->assign('email',$_GET['email']);

}

