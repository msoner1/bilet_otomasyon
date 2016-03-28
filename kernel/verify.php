<?php
require("db.class.php");
$db = new db();

session_start();

$site_adress = "http://127.0.0.1/otobus/mail_onay?token=";

function change_date_to_sql($date) {
    list($gun, $ay, $yil) = explode('/', $date);
    return $yil."-".$ay."-".$gun;
}

if($_POST['process'] == 'uyelik'){
    $site_adress = "http://127.0.0.1/otobus/mail_onay?token=";

    $captcha = $_POST['response'];

    $response=json_decode(file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=6LcErRoTAAAAAPGWICTjRr7rvVBYkaoyXsSElKrg&response=".$captcha."&remoteip=".$_SERVER['REMOTE_ADDR']), true);
    if($response['success'])
    {
        $firstname = $_POST["firstname"];
        $lastname = $_POST["lastname"];
        $pass = md5(md5($_POST["password"]));
        $email = $_POST["email"];
        $phone = $_POST["phone"];
        $sex = $_POST["sex"];
        $birtdate = change_date_to_sql($_POST["dogum_tarihi"]);
        $news = $_POST["news"];

        $db->bindMore(array("ad_soyad"=>$firstname." ".$lastname , "sifre" => $pass , "email" => $email , "telefon" => $phone , "cins" => $sex , "dogum_tarih" => $birtdate , "email_kampanya" => $news));

        $uye_ekle =  $db->query("INSERT INTO uyeler (ad_soyad , sifre , email , telefon , cinsiyet , dogum_tarihi , email_kampanya_listesi)
    VALUES (:ad_soyad , :sifre , :email , :telefon , :cins , :dogum_tarih , :email_kampanya)");

        if($uye_ekle > 0){
            echo 'Üye kaydınız başarıyla oluşturuldu.Lütfen mail adresinizi onaylayınız.';
            require("email/email.php");
        }
        else{
            echo 'Bir sorun oluştu.';
        }

    }
    else
    {
        echo 'Captcha doğrulamanızda hata oluştu.Lütfen Tekrar deneyin.';

    }
}
else if($_POST['process'] == 'uye-kontrol'){

    $email = $_POST["email"];
    $sifre = md5(md5($_POST["sifre"]));

    $db->bindMore(array("email"=>$email, "sifre" => $sifre));

    $uye_bilgileri =  $db->query("SELECT * FROM uyeler WHERE email = :email AND sifre = :sifre AND uyeler.email_onayi = 1");

    if(empty($uye_bilgileri[0]['email'])){
        echo 'Lütfen Bilgilerinizi Kontrol Edip Tekrar Deneyin.';
    }
    else{


        $_SESSION['id'] = $uye_bilgileri[0]['id'];
        $_SESSION['ad_soyad'] = $uye_bilgileri[0]['ad_soyad'];
        $_SESSION['parapuan'] = $uye_bilgileri[0]['parapuan'];
        $_SESSION['cinsiyet'] = $uye_bilgileri[0]['cinsiyet'];
        echo '1';
    }

}
else if($_POST['process'] == 'sifremi_unuttum'){

    $email = $_POST["email"];

    $db->bind("email",$email);

    $uye_bilgileri =  $db->query("SELECT email,id FROM uyeler WHERE email = :email AND uyeler.email_onayi = 1");

    if(empty($uye_bilgileri[0]['email'])){
        echo 'Lütfen Bilgilerinizi Kontrol Edip Tekrar Deneyin.';
    }
    else{
        $random_pass = rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9).rand(0,9);
        require("email/email_sifremi_unuttum.php");

        $db->bind("pass",md5(md5($random_pass)));
        $db->bind("uye",$uye_bilgileri[0]['id']);

        $uye_ekle =  $db->query("UPDATE uyeler SET sifre = :pass WHERE id = :uye");

        echo '1';
    }

}
else if($_POST['process'] == 'iletisim'){
    $firstname = $_POST["firstname"];
    $lastname = $_POST["lastname"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $message = $_POST["message"];

    $db->bindMore(array("ad_soyad"=>$firstname." ".$lastname , "message" => $message , "email" => $email , "telefon" => $phone));

    $mesaj =  $db->query("INSERT INTO mesajlar (ad_soyad , email , phone , mesaj)
    VALUES (:ad_soyad, :email , :telefon , :message)");

    if($mesaj > 0){
        echo 'Mesajınız Alınmıştır.En kısa zamanda sizinle iletişime geçeceğiz';
    }
    else{
        echo 'Bir sorun oluştu.';
    }
}
