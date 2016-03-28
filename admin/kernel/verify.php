<?php
require("db.class.php");
$db = new db();



$site_adress= "http://127.0.0.1/otobus/";

if($_POST["process"] == "kontrol") {

    session_destroy();
    session_start();

    $email = $_POST["email"];
    $sifre = md5(md5($_POST["sifre"]));

    $db->bindMore(array("email" => $email, "sifre" => $sifre));

    $uye_bilgileri = $db->query("SELECT * FROM admins WHERE email = :email AND sifre = :sifre");

    if (empty($uye_bilgileri[0]['email'])) {
        header("Location: " . $site_adress . "admin/login.html?hata");
    } else {

        $_SESSION['admin'] = 1;
        $_SESSION['id'] = $uye_bilgileri[0]['id'];
        $_SESSION['ad_soyad'] = $uye_bilgileri[0]['ad_soyad'];
        $_SESSION['email'] = $uye_bilgileri[0]['email'];
        $_SESSION['statu'] = $uye_bilgileri[0]['statu'];
        header("Location: " . $site_adress . "admin/");
    }
}
else if($_POST["process"] == "get_bus"){
    $otobus_id = $_POST["id"];

    $db->bind("id" , $otobus_id);

    $otobus = $db->query("SELECT * FROM otobus_tip WHERE id = :id");


        echo '{"id" : "'.$otobus[0]['id'].'" , "adi" : "'.$otobus[0]['tip_adi'].'" , "tv" : "'.$otobus[0]['tv'].'" , "internet" : "'.$otobus[0]['internet'].'" , "rahat_koltuk" : "'.$otobus[0]['rahat_koltuk'].'" , "kulaklik" : "'.$otobus[0]['kulaklik'].'"}';

}

else if($_POST["process"] == "get_firma"){
    $firma_id = $_POST["id"];

    $db->bind("id" , $firma_id);

    $firma = $db->query("SELECT firma_ad FROM firmalar WHERE firma_id = :id");


    echo '{"adi" : "'.$firma[0]['firma_ad'].'"}';

}