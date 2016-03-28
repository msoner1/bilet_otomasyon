<?php

if(isset($_POST['ekle'])){

    $firma_ad = $_POST['firma_ad'];


    $db->bind("firma" , $firma_ad );

    $firma_insert =  $db->query("INSERT INTO firmalar (firma_ad) VALUES (:firma)");

    if($firma_insert > 0){
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

    $duzenlenecek_id = $_POST['firma_select'];
    $firma_ad = $_POST['firma_ad_duzenle'];

    $db->bindMore(array("duzenlenecek_id"=>$duzenlenecek_id , "firma" => $firma_ad));

    $firma_update =  $db->query("UPDATE firmalar SET firma_ad = :firma WHERE firma_id = :duzenlenecek_id");
    if($firma_update > 0){
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

$firmalar =  $db->query("SELECT * FROM firmalar");

$tpl->assign('firmalar',$firmalar);
$tpl->assign('firma_ad',$firmalar[0]['firma_ad']);

