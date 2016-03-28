<?php
session_start();

require("db.class.php");
$db = new db();

$sefer_id = intval($_POST['sefer_id']);
$tarih = strip_tags($_POST['tarih']);

$_SESSION['sefer_id'] = $sefer_id;


$db->bindMore(array("sefer_id"=>$sefer_id , "tarih" => $tarih ));

$dolu_koltuklar =  $db->query("SELECT rezervasyonlar.koltuk , rezervasyonlar.cinsiyet FROM rezervasyonlar WHERE sefer_id=:sefer_id AND tarih= :tarih");

$koltuklar = array_fill(0,48,-1);

foreach($dolu_koltuklar as $koltuk){
   $koltuklar[$koltuk['koltuk']] = $koltuk['cinsiyet'];
}


echo '<table><tbody><tr>';

$satir = 0;

for($i = 1; $i<47; $i++) {

    $satir++;

    if($koltuklar[$i] != -1){

        echo '<td class="koltuk griKoltuk" valign="top" id ='.$i.'><div style="padding-left:12px;padding-top:2px; text-align : center;">' . $i . '</div></td>';
    }
    else{
        if($koltuklar[$i + 1] == 1 && $i % 2 == 1 || $koltuklar[$i - 1] == 1 && $i % 2 == 0 ){ //erkek

            echo '<td class="secilebilirKoltuk koltuk maviKoltuk" valign="top" id ='.$i.'><div style="padding-left:12px;padding-top:2px; text-align : center;">' . $i . '</div></td>';
        }
        else if($koltuklar[$i + 1] == 0 && $i % 2 == 1 || $koltuklar[$i - 1] == 0 && $i % 2 == 0){ //kadın

            echo '<td class="secilebilirKoltuk koltuk pembeKoltuk" valign="top" id ='.$i.'><div style="padding-left:12px;padding-top:2px; text-align : center;">' . $i . '</div></td>';
        }
        else{
            echo '<td class="secilebilirKoltuk koltuk yesilKoltuk" valign="top" id ='.$i.'><div style="padding-left:12px;padding-top:2px; text-align : center;">' . $i . '</div></td>';
        }


    }


    if($satir % 4 == 2){

        echo '<td class="koridor"></td>';

        if ($i == 22) { //kapi kısmı

            echo '<td colspan="2" class="kapi">KAPI</tr><tr>';
            $satir+=2;

        }
    }

    if($satir % 4 == 0){
        echo '</tr>';
    }
    if($satir % 4 == 0){
        echo '<tr>';
    }

}

echo '</tbody></table>';
