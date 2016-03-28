<?php
require("class.phpmailer.php");
$mail = new PHPMailer();
$mail->IsSMTP();
$mail->SMTPDebug = 1; // hata ayiklama: 1 = hata ve mesaj, 2 = sadece mesaj
$mail->SMTPAuth = true;
$mail->SMTPSecure = 'tls'; // Güvenli baglanti icin ssl normal baglanti icin tls
$mail->Host = "smtp.gmail.com"; // Mail sunucusuna ismi
$mail->Port = 587; // Gucenli baglanti icin 465 Normal baglanti icin 587
$mail->IsHTML(true);
$mail->SetLanguage("tr", "phpmailer/language");
$mail->CharSet  ="utf-8";
$mail->Username = "msoneraydin1@gmail.com";
$mail->Password = "127826ab";

$mail->SetFrom("destek@otobus.com"); // Mail attigimizda gorulecek ismimiz
$mail->AddAddress($email); // Maili gonderecegimiz kisi yani alici
$mail->Subject = "Email Onayı"; // Konu basligi
$mail->Body = "Mail Onayınız için Aşağıdaki Linke Tıklayın :<br /><br /><br />".$site_adress.md5(md5($email))."&mail=".$email; // Mailin icerigi
if(!$mail->Send()){

} else {
}
