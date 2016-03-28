<?php

$firma_satislari =  $db->query("SELECT firmalar.firma_ad , COUNT(koltuk) as sayi FROM rezervasyonlar
INNER JOIN seferler ON seferler.id = rezervasyonlar.sefer_id
INNER JOIN firmalar ON firmalar.firma_id = seferler.firma
GROUP BY firma_ad");

$tpl->assign('firma_satislari',$firma_satislari);


if($statu === "1"){

    $haftalik_satis =  $db->query("SELECT COUNT(koltuk) as sayi , DATE(satis_tarihi) as gun FROM rezervasyonlar
WHERE satis_tarihi > CURRENT_TIMESTAMP - INTERVAL 7 DAY GROUP BY gun");

    $tpl->assign('haftalik_satis',$haftalik_satis);

}