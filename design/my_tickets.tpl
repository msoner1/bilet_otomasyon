<section>
    <div class="container">
        <div class="col-md-12" style="margin-top: 120px">
            <div class="boxes">
                <div class="boxes-header">
                    <div class="col-lg-8">
                        <h4><span class="glyphicon glyphicon-road"></span>Bilet Bilgilerim</h4>
                    </div>
                    <div class="col-lg-4">
                        <div class="btn-toolbar pull-right" style="margin-top: 10px">
                            <div class="btn-group">
                                <a href="?gecmis"><button type="button" class="btn btn-default" > Geçmiş Tarihli({$gecmis_bilet_sayisi})</button></a>
                                <a href="?"><button type="button" class="btn btn-default" > Gelecek Tarihli({$gelecek_bilet_sayisi})</button></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row seferler">

                    {if isset($yok)}
                        <div class="alert-warning" style="margin: 20px;padding: 10px;border-radius: 10px;font-size:20px"><h3>Hiç Bilet Gözükmüyor...</h3></div>

                    {else}

                    {foreach from=$biletler item=i}
                        <div class="col-md-12 sefer">
                            <a class="list-links">
                                <div class="col-md-6">
                                    <div class="row destinasyon">{$i.nereden} - {$i.nereye}</div>
                                    <div class="row date">{$i.tarih} - {$i.saati}</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="fiyat">{$i.ad_soyad}</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="fiyat">Koltuk no:{$i.koltuk}</div>
                                </div>
                            </a>
                        </div>
                    {/foreach}

                    {/if}
                </div>
            </div>
        </div>
    </div>
</section>