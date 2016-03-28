<script>
    function pass_ok(){
        var password = document.getElementById("sifre").value;
        var password_confirm = document.getElementById("sifre_tekrar").value;

        if(password == password_confirm){
            document.getElementById("alert_pass").innerHTML = "";
            return true;
        }
        else {
            document.getElementById("alert_pass").innerHTML = "<div class='alert alert-danger'><strong>Dikkat : </strong> Şifreler Uyuşmuyor</div>";
            return false;
        }
    }
</script>


<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1>Yeni Hesap <small>Ekle</small></h1>
            <div class="alert alert-dismissable alert-info">
                <button data-dismiss="alert" class="close" type="button">&times;</button>
                Firma yada tam adminlik açabilirsiniz.
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-user"></i> Yeni Ekle</h3>
                </div>
                <div class="panel-body">
                    <form role="form" action="" method="post">

                        <div class="form-group">
                            <label>Hesap Türünü Seçin</label>
                            <select class="form-control" name="hesap_select" id="hesap_select">
                                <option value="0">Adminlik</option>
                                {foreach from=$firmalar item=i}
                                    <option value="{$i.firma_ad}">{$i.firma_ad}</option>
                                {/foreach}
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Ad Soyad</label>
                            <input type="text" class="form-control" name="ad_soyad" id="ad_soyad">
                            <p class="help-block">Firma hesabı için zorunlu değildir.</p>
                        </div>

                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" class="form-control" name="email" id="email">
                        </div>
                        <div id="alert_pass"></div>
                        <div class="form-group">
                            <label>Şifre</label>
                            <input type="password" class="form-control" name="sifre" id="sifre">
                        </div>
                        <div class="form-group">
                            <label>Şifre Tekrar</label>
                            <input type="password" class="form-control" onblur="pass_ok()" name="sifre_tekrar" id="sifre_tekrar">
                        </div>

                        <button type="submit" name="ekle" class="btn btn-default">Ekle</button>

                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
</div>