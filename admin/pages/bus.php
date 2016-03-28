<?php

if(isset($_POST['ekle'])){

    $otobus_marka = $_POST['otobus_marka'];

    if(isset($_POST['tv'])){
        $tv = 1;
    }
    else{
        $tv = 0;
    }

    if(isset($_POST['internet'])){
        $internet = 1;
    }
    else{
        $internet = 0;
    }

    if(isset($_POST['koltuk'])){
        $koltuk = 1;
    }
    else{
        $koltuk = 0;
    }

    if(isset($_POST['kulaklik'])){
        $kulaklik = 1;
    }
    else{
        $kulaklik = 0;
    }

    $db->bindMore(array("marka" => $otobus_marka , "tv" => $tv , "internet" => $internet , "koltuk" => $koltuk , "kulaklik" => $kulaklik ));

    $otobus_insert =  $db->query("INSERT INTO otobus_tip (tip_adi , tv ,rahat_koltuk ,internet,kulaklik ) VALUES (:marka , :tv , :koltuk , :internet , :kulaklik)");
    if($otobus_insert > 0){
        echo '<div class="alert alert-dismissable alert-success">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Kayıt Başarıyla Eklendi
            </div>';
    }
    else{
        echo '<div class="alert alert-dismissable alert-danger">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Bir Hata Oluştu.
            </div>';
    }

}
if(isset($_POST['duzenle'])){

    $duzenlenecek_id = $_POST['otobus_select'];
    $otobus_marka = $_POST['otobus_marka_duzenle'];

    if(isset($_POST['tv'])){
        $tv = 1;
    }
    else{
        $tv = 0;
    }

    if(isset($_POST['internet'])){
        $internet = 1;
    }
    else{
        $internet = 0;
    }

    if(isset($_POST['koltuk'])){
        $koltuk = 1;
    }
    else{
        $koltuk = 0;
    }

    if(isset($_POST['kulaklik'])){
        $kulaklik = 1;
    }
    else{
        $kulaklik = 0;
    }

    $db->bindMore(array("duzenlenecek_id"=>$duzenlenecek_id , "marka" => $otobus_marka , "tv" => $tv , "internet" => $internet , "koltuk" => $koltuk , "kulaklik" => $kulaklik ));

    $otobus_update =  $db->query("UPDATE otobus_tip SET tip_adi = :marka , tv =:tv , rahat_koltuk = :koltuk , internet = :internet , kulaklik = :kulaklik WHERE id = :duzenlenecek_id");
    if($otobus_update > 0){
        echo '<div class="alert alert-dismissable alert-success">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Kayıt Başarıyla Duzenlendi.
            </div>';
    }
    else{
        echo '<div class="alert alert-dismissable alert-danger">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Bir Hata Oluştu.
            </div>';
    }
}

$otobusler =  $db->query("SELECT * FROM otobus_tip");

$tpl->assign('otobusler',$otobusler);
$tpl->assign('otobus_ad',$otobusler[0]['tip_adi']);
$tpl->assign('tv',$otobusler[0]['tv']);
$tpl->assign('internet',$otobusler[0]['internet']);
$tpl->assign('koltuk',$otobusler[0]['rahat_koltuk']);
$tpl->assign('kulaklik',$otobusler[0]['kulaklik']);
