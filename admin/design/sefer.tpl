<link rel="stylesheet" href="{$site_adress}content/css/bootstrap-datepicker.min.css">
<link rel="stylesheet" href="{$site_adress}content/css/bootstrap-datepicker.css">
<script>

    function sefer_change(){
        var sefer_tipi = document.getElementById("sefer_tipi").value;

        if(sefer_tipi == "1"){

            $('#baslangic').show();
            $('#bitis').hide();
            $('#bas_label').text("Sefer Tarihi");

        }
        else if(sefer_tipi == "2"){
            $('#baslangic').show();
            $('#bitis').show();
            $('#bas_label').text("Sefer Başlangıç Tarihi");
        }
        else {
            $('#baslangic').show();
            $('#bitis').hide();
            $('#bas_label').text("Sefer Başlangıç Tarihi");
        }
    }
</script>

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1>Sefer <small>İşlemleri</small></h1>
            <div class="alert alert-dismissable alert-info">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Yeni seferler ekleyebilirsiniz.
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-plus-circle"></i> Yeni Ekle</h3>
                </div>
                <div class="panel-body">
                    <form role="form" action="" method="post">

                        <div class="row form-group">
                            <div class="col-md-6">
                                <label>Nereden</label>
                                <select class="form-control" name="nereden" id="nereden">
                                    {foreach from=$iller item=i}
                                        <option value="{$i.id}">{$i.ad}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label>Nereye</label>
                                <select class="form-control" name="nereye" id="nereye">
                                    {foreach from=$iller item=i}
                                        <option value="{$i.id}">{$i.ad}</option>
                                    {/foreach}
                                </select>
                            </div>

                        </div>

                        <div class="row form-group">
                            <div class="col-md-6">
                                <label>Firma</label>

                                <select class="form-control" name="firma" id="firma">
                                    {foreach from=$firmalar item=i}
                                        <option value="{$i.firma_id}">{$i.firma_ad}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label>Sefer Tipi</label>
                                <select class="form-control" name="sefer_tipi" id="sefer_tipi" onchange="sefer_change()">
                                    {foreach from=$sefer_tipi item=i}
                                        <option value="{$i.id}">{$i.ozellik_ad}</option>
                                    {/foreach}
                                </select>
                            </div>

                        </div>
                        <div class=" row form-group">
                            <div class="col-md-6" style="padding-top: 10px" id="baslangic">
                                <label id="bas_label">Sefer Başlangıç Tarihi</label>
                                <div class="input-group date" data-provide="datepicker" id="datepicker" >
                                    <input type="text" class="form-control" placeholder="Başlangıç" name="baslangic_tarih" id="baslangic_tarih">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6" style="padding-top: 10px" id="bitis">
                                <label>Sefer Bitiş Tarihi</label>
                                <div class="input-group date" data-provide="datepicker" id="datepicke" >
                                    <input type="text" class="form-control" placeholder="Bitiş" name="bitis_tarih" id="bitis_tarih">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row form-group">
                            <div class="col-md-4">
                                <label>Saat</label>
                                <div class="form-group input-group">
                                    <input class="form-control" type="text" placeholder="18" id="saat" name="saat">
                                    <span class="input-group-addon">:00</span>
                                </div>
                                <p class="help-block">Tam sayı yazınız.</p>
                            </div>
                            <div class="col-md-4">
                                <label>Otobus</label>
                                <select class="form-control" name="otobus" id="otobus">
                                    {foreach from=$otobus item=i}
                                        <option value="{$i.id}">{$i.tip_adi}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label>Fiyat</label>
                                <div class="form-group input-group">
                                    <input class="form-control" type="text" id="fiyat" name="fiyat">
                                    <span class="input-group-addon">TL</span>
                                </div>
                                <p class="help-block">Tam sayı yazınız.</p>
                            </div>

                        </div>

                        <button type="submit" name="ekle" class="btn btn-default">Kaydet</button>

                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
</div>

<script src="{$site_adress}content/js/bootstrap-datepicker.js"></script>
<script src="{$site_adress}content/js/bootstrap-datepicker.min.js"></script>
<script src="{$site_adress}content/js/bootstrap-datepicker.tr.min.js"></script>

<script>
    $(document).ready(function () {

        $('#datepicker').datepicker({
            format: 'dd/mm/yyyy',
            language: 'tr',
            startDate: "-",
            todayBtn: "linked"
        });
        $('#datepicke').datepicker({
            format: 'dd/mm/yyyy',
            language: 'tr',
            startDate: "-",
            todayBtn: "linked"
        });
        $('#bitis').hide();
    })

</script>