<script>

    function get_busses(){
        var select = document.getElementById("otobus_select").value;


        {literal}
        var formData = {id:select,process:"get_bus"};

        $.ajax({
            url : "http://127.0.0.1/otobus/admin/kernel/verify.php",
            type: "POST",
            dataType: "json",
            data : formData,
            beforeSend: function(){
                $("#loading").show();
            },
            complete: function(){
                $("#loading").hide();
            },
            success: function(data, textStatus, jqXHR)
            {
                document.getElementById("otobus_marka_duzenle").value = data.adi;
                if(data.tv == "1"){
                    $( "#tv_duzenle" ).prop( "checked", true );
                }
                else {
                    $( "#tv_duzenle" ).prop( "checked", false );
                }
                if(data.internet == "1"){
                    $( "#internet_duzenle" ).prop( "checked", true );
                }
                else {
                    $( "#internet_duzenle" ).prop( "checked", false );
                }
                if(data.kulaklik == "1"){
                    $( "#kulaklik_duzenle" ).prop( "checked", true );
                }
                else {
                    $( "#kulaklik_duzenle" ).prop( "checked", false );
                }
                if(data.rahat_koltuk == "1"){
                    $( "#koltuk_duzenle" ).prop( "checked", true );
                }
                else {
                    $( "#koltuk_duzenle" ).prop( "checked", false );
                }

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert("Bir hata oluştu lütfen yeniden deneyin.");
            }
        });
        {/literal}
    }

</script>

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1>Otobüs <small>İşlemleri</small></h1>
            <div class="alert alert-dismissable alert-info">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Yeni otobus tipleri ekleyebilir veya düzenleyebilirsiniz.
            </div>
        </div>
    </div>
    <div class="row">
       <div class="col-md-6">
           <div class="panel panel-primary">
               <div class="panel-heading">
                   <h3 class="panel-title"><i class="fa fa-plus-circle"></i> Yeni Ekle</h3>
               </div>
               <div class="panel-body">

                   <form role="form" action="" method="post">

                       <div class="form-group">
                           <label>Otobus Marka</label>
                           <input class="form-control" name="otobus_marka" id="otobus_marka">
                           <p class="help-block">Örn: Mercedes Setra...</p>
                       </div>

                       <div class="form-group">
                           <label>Özellikleri : </label>
                           <label class="checkbox-inline">
                               <input type="checkbox" name="tv">
                               TV
                           </label>
                           <label class="checkbox-inline">
                               <input type="checkbox" name="internet">
                               İnternet
                           </label>
                           <label class="checkbox-inline">
                               <input type="checkbox" name="koltuk">
                               Rahat Koltuk
                           </label>
                           <label class="checkbox-inline">
                               <input type="checkbox"  name="kulaklik">
                               Kulaklık
                           </label>

                       </div>

                       <button type="submit" name="ekle" class="btn btn-default">Ekle</button>

                   </form>

               </div>
           </div>
       </div>
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Düzenle</h3>
                </div>
                <div class="panel-body">

                    <form role="form" action="" method="post">

                        <div class="form-group">
                            <label>Düzenlemek İstediğiniz Otobusu Seçin</label>
                            <select class="form-control" name="otobus_select" id="otobus_select" onchange="get_busses()">
                                {foreach from=$otobusler item=i}
                                    <option value="{$i.id}">{$i.tip_adi}</option>
                                {/foreach}
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Otobus Marka</label>
                            <input class="form-control" name="otobus_marka_duzenle" id="otobus_marka_duzenle" value="{$otobus_ad}">
                            <p class="help-block">Örn: Mercedes Setra...</p>
                        </div>

                        <div class="form-group">
                            <label>Özellikleri : </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" name="tv" id="tv_duzenle" {if $tv eq 1}checked{/if}>
                                TV
                            </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" name="internet" id="internet_duzenle" {if $internet eq 1}checked{/if}>
                                İnternet
                            </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" name="koltuk" id="koltuk_duzenle" {if $koltuk eq 1}checked{/if}>
                                Rahat Koltuk
                            </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" name="kulaklik" id="kulaklik_duzenle" {if $kulaklik eq 1}checked{/if}>
                                Kulaklık
                            </label>

                        </div>

                        <button type="submit" name="duzenle" class="btn btn-default">Kaydet</button>

                    </form>

                </div>
            </div>
        </div>
    </div>

</div>
</div>