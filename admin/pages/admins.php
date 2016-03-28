<?php


    if($statu === "2"){

        header("Location: ".$site_adress."admin");
        die();
    }

$firmalar =  $db->query("Select * FROM firmalar");

$tpl->assign('firmalar',$firmalar);

if(isset($_POST['ekle'])){
    $hesap_select = $_POST['hesap_select'];
    $ad_soyad = $_POST['ad_soyad'];
    $email = $_POST['email'];
    $sifre = $_POST['sifre'];
    $sifre_tekrar = $_POST['sifre_tekrar'];

    if($sifre === $sifre_tekrar){

        if($hesap_select === "0"){ //admin

            if(empty($ad_soyad) || empty($sifre) || empty($email)){
                echo '<div class="alert alert-dismissable alert-danger">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Lütfen Formu Tam Doldurun
            </div>';
            }
            else{

                $db->bindMore(array("ad_soyad" => $ad_soyad , "sifre" => md5(md5($sifre)) , "email" => $email , "statu" => 1 ));

                $otobus_insert =  $db->query("INSERT INTO admins (ad_soyad , email ,sifre ,statu ) VALUES (:ad_soyad , :email , :sifre , :statu)");

                echo '<div class="alert alert-dismissable alert-success">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Başarıyla Eklendi.
            </div>';
            }

        }
        else{ //firma
            if(empty($sifre) || empty($email)){
                echo '<div class="alert alert-dismissable alert-danger">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Lütfen Formu Tam Doldurun
            </div>';
            }
            else{
                $db->bindMore(array("ad_soyad" => $hesap_select , "sifre" => md5(md5($sifre)) , "email" => $email , "statu" => 2 ));

                $otobus_insert =  $db->query("INSERT INTO admins (ad_soyad , email ,sifre ,statu ) VALUES (:ad_soyad , :email , :sifre , :statu)");


                echo '<div class="alert alert-dismissable alert-success">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Başarıyla Eklendi.
            </div>';
            }
        }
    }
    else{
        echo '<div class="alert alert-dismissable alert-danger">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Şifreler Uyuşmuyor.
            </div>';
    }
}