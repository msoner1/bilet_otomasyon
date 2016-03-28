<section class="bilet-search-back">
    <div class="container bilet-search">
        <h1>Seferler</h1>

        <div class="row form">
            <form class="form-horizontal" action="" method="post">
                <div class="row">
                    <div class="col-lg-5">
                        <input type="text" class="form-control autocomplete" value="{$nereden}" spellcheck="false" onchange="text_changed(1)" autocomplete="off" id="nereden" placeholder="Nereden">
                    </div>
                    <div class="col-lg-2 text-center">
                        <span class="glyphicon glyphicon-sort icon-change" onclick="degistir()"></span>
                    </div>
                    <div class="col-lg-5">
                        <input type="text" class="form-control autocomplete" value="{$nereye}" spellcheck="false" onchange="text_changed(0)" autocomplete="off" id="nereye" placeholder="Nereye">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-5">
                        <div class="input-group date" data-provide="datepicker" id="datepicke" >
                            <input type="text" class="form-control" value="{$tarih}" placeholder="Tarih" id="tarih">
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-offset-2 col-lg-5">
                        <button id="ara" class="btn btn-block btn-info" ><span class="glyphicon glyphicon-search"></span> Yeni Sefer Ara</button>
                    </div>
                </div>

            </form>
        </div>

        <div class="col-lg-12 col-md-12">

            <div class="col-lg-8 col-md-8">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>Firma</th>
                            <th>Saat</th>
                            <th>Güzergah</th>
                            <th>Otobus</th>
                            <th>Özellik</th>
                            <th>Fiyat</th>
                            <th></th>
                        </tr>
                        </thead>
                        {foreach from=$seferler item=i}
                        <tr>
                            <td>{$i.firma_ad}</td>
                            <td>{$i.saati}</td>
                            <td>{$nereden}-{$nereye}</td>
                            <td>{$i.tip_adi}</td>
                            <td>{if $i.rahat_koltuk eq 1}<span data-toggle="tooltip" data-placement="top" title="Rahat Koltuk" class="glyphicon glyphicon-cloud ozellikler"></span>{/if}{if $i.tv eq 1}<span data-toggle="tooltip" data-placement="top" title="TV" class="glyphicon glyphicon-expand ozellikler"></span>{/if}{if $i.kulaklik eq 1}<span data-toggle="tooltip" data-placement="top" title="Kulaklık" class="glyphicon glyphicon-headphones ozellikler"></span>{/if}{if $i.internet eq 1}<span data-toggle="tooltip" data-placement="top" title="İnternet" class="glyphicon glyphicon-globe ozellikler"></span>{/if}</td>
                            <td>{$i.fiyat}TL</td>
                            <td><button type="button" onclick="koltuk_aktif({$i.id} , '{$tarih_sql}' ,'{$nereden}','{$nereye}','{$i.fiyat}','{$i.firma_ad}','{$i.saati}')" class="btn btn-default">Seç</button></td>
                        </tr>
                        {/foreach}
                    </table>
                </div>
            </div>

            <div class="col-lg-4 col-md-4">
                <div class="row col-md-12 col-sm-12 col-xs-12" style="text-align: center;font-size: 20px;margin: 10px">
                    <span>Koltuk Seçimi</span>
                </div>
                <div id="OtobusCinsiyetSec" class="row col-md-12 col-sm-12 col-xs-12" style="padding-left: 2px;">
                    <div class="radio" style="margin-top: 35px">
                        <div class="col-md-2 col-sm-2 col-xs-2">
                            <label>
                                <input name="optionsRadios2" checked="checked" style="margin-left: -26px" id="RbBay" type="radio">

                            </label>

                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3">

                            <label>
                                <input name="optionsRadios2" id="RbBayan" type="radio">

                            </label>

                        </div>
                    </div>
                </div>
                <div id="OtobusOnKisim" class="row col-md-12 col-sm-12 col-xs-12"></div>
                <div id="OtobusOrtaKisim" class="row col-md-12 col-sm-12 col-xs-12">
                    <div id="Koltuklar">

                    </div>

                </div>
                <div id="OtobusArkaKisim" class="row col-md-12 col-sm-12 col-xs-12"></div>
            </div>
        </div>
        <div class="col-lg-12 col-md-12">
            <div class="bilet-alma-form panel panel-info">

                <div class="panel-heading"><h4>İşlem Bilgileri</h4></div>
                <div class="panel-body islem-bilgileri">



            </div>
        <label style="margin-left: 10%;margin-right:10%;width: 80%"><input type="checkbox" id="puan" value="puan">Puanımı Kullan</label>
        <button class="btn btn-primary" onclick="satin_al('{$tarih}')" style="margin-left: 10%;margin-right:10%;width: 80%">Satın Al</button>

    </div>
</section>