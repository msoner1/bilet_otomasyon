<script>

    function get_busses(){
        var select = document.getElementById("firma_select").value;


        {literal}
        var formData = {id:select,process:"get_firma"};

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
                document.getElementById("firma_ad_duzenle").value = data.adi;

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
            <h1>Firma <small>İşlemleri</small></h1>
            <div class="alert alert-dismissable alert-info">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Yeni firma ekleyebilir veya düzenleyebilirsiniz.
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
                            <label>Firma Ad</label>
                            <input class="form-control" name="firma_ad" id="firma_ad">
                            <p class="help-block">Örn: Ulusoy Turizm...</p>
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
                            <label>Düzenlemek İstediğiniz Firmayı Seçin</label>
                            <select class="form-control" name="firma_select" id="firma_select" onchange="get_busses()">
                                {foreach from=$firmalar item=i}
                                    <option value="{$i.firma_id}">{$i.firma_ad}</option>
                                {/foreach}
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Firma Ad</label>
                            <input class="form-control" name="firma_ad_duzenle" id="firma_ad_duzenle" value="{$firma_ad}">
                            <p class="help-block">Örn: Metro Turizm...</p>
                        </div>

                        <button type="submit" name="duzenle" class="btn btn-default">Kaydet</button>

                    </form>

                </div>
            </div>
        </div>
    </div>

</div>
</div>