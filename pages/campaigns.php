<?php
if($_GET['k'] !== "k"){
    $kampanya_id = intval($_GET['k']);

    $db -> bind("id",$kampanya_id);

    $kampanyalar =  $db->query("SELECT * FROM kampanyalar WHERE baslangic <= CURDATE() AND
  bitis > CURDATE() AND id = :id");
}




if(isset($kampanya_id)) {


    $kampanya_adi = $kampanyalar[0]['kampanya_ad'];
    $kampanya_aciklama = $kampanyalar[0]['kampanya_aciklama'];


    $tpl->assign("kampanya_id", $kampanya_id);
    $tpl->assign("kampanya_adi", $kampanya_adi);
    $tpl->assign("kampanya_aciklama", $kampanya_aciklama);
}
else{

    $kampanyalar =  $db->query("SELECT * FROM kampanyalar WHERE baslangic <= CURDATE() AND
  bitis > CURDATE() ORDER BY baslangic DESC LIMIT 10");

    $tpl->assign("kampanyalar", $kampanyalar);
}


if(!isset($kampanyalar[0]['kampanya_ad'])) {
    header("Location: ".$site_adress."404");
    die();
}