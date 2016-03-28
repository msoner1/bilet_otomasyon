
<footer>
    <div class="panel-footer text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-sm-2 pull-left"><a class="navbar-brand logo" href="{$site_adress}"><img src="{$site_adress}content/images/logo.png" width="150" alt="logo"></a></div>
                <div class="col-md-8 col-sm-8 pull-left hidden-xs hidden-sm">
                    <div class="row center-block footer-links">
                        <div class="col-md-3">
                            <a href="{$site_adress}" target="_self">Otobüs Bileti</a>
                            <a href="" rel="nofollow" target="_self">Yardım</a>
                            <a href="" target="_self"> Otobüs Firmaları</a>
                        </div>
                        <div class="col-md-3">
                            <a href="" rel="nofollow" target="_self">Bilet İptali</a>
                            <a href="" target="_self">Bilet Alma</a>
                            <a href="" target="_self"> Uçak Bileti</a>
                        </div>
                        <div class="col-md-3">
                            <a href="" rel="nofollow" target="_self">Hakkımızda</a>
                            <a href="" rel="nofollow" target="_self">Kariyer</a>
                            <a href="" target="_self"> Otobüs Seferleri</a>
                        </div>
                        <div class="col-md-3">
                            <a href="" rel="nofollow" target="_self">Gizlilik Sözleşmesi</a>
                            <a href="" rel="nofollow" target="_self">Kullanım Şartları</a>
                            <a href="" target="_self"> Otobüs Bilet Fiyatları</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 hidden-xs pull-right">
                    <ul class="socials">
                        <li><a href="#" target="_blank" rel="nofollow"><div class="twitter"></div></a></li>
                        <li><a href="#" target="_blank" rel="nofollow"><div class="facebook"></div></a></li>
                        <li><a href="#" target="_blank" rel="nofollow"><div class="google"></div></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <script src="{$site_adress}content/js/jquery.min.js"></script>
    <script src="{$site_adress}content/js/bootstrap.min.js"></script>
    <script src="{$site_adress}content/js/main.js"></script>
    <script src="{$site_adress}content/js/bootstrap-datepicker.js"></script>
    <script src="{$site_adress}content/js/bootstrap-datepicker.min.js"></script>
    <script src="{$site_adress}content/js/bootstrap-datepicker.tr.min.js"></script>
    <script src="{$site_adress}content/js/typeahead.bundle.js"></script>

    <script>
        $(document).ready(function () {

            $('#datepicke').datepicker({
                format: 'dd/mm/yyyy',
                language: 'tr',
                startDate: "-",
                todayBtn: "linked"
            });
            $('#datepick').datepicker({
                format: 'dd/mm/yyyy',
                language: 'tr',
                startDate: "-100y",
                endDate: "-12y"
            });

        })

    </script>


    <!-- Login Paneli -->
    <div id="login" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">Üyelik İşlemleri</h4>
                </div>
                <div class="modal-body" id="login-body">
                    <form role="form">
                        <div class="form-group">
                            <label for="email" class="control-label">Email:</label>
                            <input type="text" class="form-control" id="email">
                        </div>
                        <div class="form-group">
                            <label for="password" class="control-label">Şifre:</label>
                            <input type="password" class="form-control" id="password">
                        </div>
                    </form>

                    <button type="button" onclick="uye_giris()" class="center-block btn btn-primary" style="width: 100%"> Giriş </button>

                </div>
                <div class="modal-footer">
                    <ul class="list-inline">
                        <li><a class="navbar-link" data-toggle="modal" data-target="#sifremi-unuttum">Şifremi Unuttum</a></li>
                        <li><a class="navbar-link" href="{$site_adress}yeni-uye">Yeni Üyelik</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <!-- Sifremi unuttum -->
    <div id="sifremi-unuttum" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">Şifremi Unuttum</h4>
                </div>
                <div class="modal-body">

                    <div class="form-group">
                        <label for="email-sifremi-unuttum" class="control-label">Email:</label>
                    <input type="text" class="form-control" id="email-sifremi-unuttum">
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" onclick="sifremi_unuttum()" class="btn btn-primary">Gönder</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Hata Paneli -->
    <div id="hata" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">Hata</h4>
                </div>
                <div class="modal-body">
                    <h3>Lütfen Formu Düzgün Bir Biçimde Doldurun.</h3>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Tamam</button>
                </div>
            </div>
        </div>
    </div>
</footer>

</body>
</html>