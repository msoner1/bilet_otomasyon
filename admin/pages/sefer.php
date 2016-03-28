<?php
$iller =  $db->query("SELECT * FROM il_ilce");

$tpl->assign('iller',$iller);

$firmalar =  $db->query("SELECT * FROM firmalar");

$tpl->assign('firmalar',$firmalar);

$sefer_tipi =  $db->query("SELECT * FROM sefer_ozellik");

$tpl->assign('sefer_tipi',$sefer_tipi);

$otobus =  $db->query("SELECT * FROM otobus_tip");

$tpl->assign('otobus',$otobus);

if(isset($_POST['ekle'])){

    $nereden_id = $_POST['nereden'];
    $nereye_id = $_POST['nereye'];
    $firma_id = $_POST['firma'];
    $sefer_tipi_id = $_POST['sefer_tipi'];
    $saat = intval($_POST['saat']);
    $otobus_id = $_POST['otobus'];
    $fiyat = intval($_POST['fiyat']);

    if($saat>23 && $saat<0 || empty($saat)){
        echo '<div class="alert alert-dismissable alert-danger">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Saat 00:00 ve 23:00 arasında olmalıdır.
            </div>';
    }
    else{
        $baslangic = change_date_to_sql($_POST['baslangic_tarih']);
        $bitis = change_date_to_sql($_POST['bitis_tarih']);
        $saat = $saat.":00:00";

        $db->bindMore(array("nereye" => $nereye_id , "nereden" => $nereden_id , "firma" => $firma_id , "sefer_tip" => $sefer_tipi_id , "baslangic" => $baslangic , "bitis" => $bitis , "fiyat" => $fiyat , "saat" => $saat , "otobus" => $otobus_id));

        $sefer_insert =  $db->query("INSERT INTO seferler (nereden,nereye,firma,sefer_ozellik,sefer_ozellik_basla,sefer_ozellik_bitis,saati,fiyat,otobus) VALUES (:nereden,:nereye,:firma,:sefer_tip,:baslangic,:bitis,:saat,:fiyat,:otobus)");

        if($sefer_insert > 0){
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



}
if(isset($_POST['duzenle'])){

}