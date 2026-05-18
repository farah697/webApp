<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4.Login" %>

<!DOCTYPE html>
<html lang="tr">
<head runat="server">
    <meta charset="utf-8" />
    <title>Login Sayfası</title>

   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background-color: #e0e0e0; 
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: Arial, sans-serif;
        }

        .login-card {
            background-color: #f5f5f5;
            border: 1px solid #bdbdbd;
            padding: 30px;
            width: 380px;
            text-align: center;
            border-radius: 0; 
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }

        .logo-placeholder {
            width: 80px;
            height: 80px;
            background-color: #d0d0d0;
            margin: 0 auto 20px auto;
            border: 1px solid #888;
        }

        .btn-gray {
            background-color: #6c757d !important;
            color: white !important;
            border: none !important;
            border-radius: 0 !important;
            padding: 8px 20px;
            font-weight: 600;
            width: 100px;
            margin: 5px;
        }

        .btn-gray:hover {
            background-color: #5f666d !important;
            color: white !important;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div class="login-card">
        <div class="logo-placeholder"></div>
        <h4 class="mb-4">Stok Takip Sistemi</h4>

        <div class="mb-3">
            <label class="form-label">Kullanıcı Adı</label>
            <asp:TextBox ID="txtKullaniciAdi" runat="server" CssClass="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Şifre</label>
            <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" TextMode="Password" />
        </div>

        <div class="d-flex justify-content-center flex-wrap">
            <button type="button" class="btn btn-gray" data-bs-toggle="modal" data-bs-target="#sozlesmeModal">Sözleşme Oku</button>
            <button type="button" class="btn btn-gray" data-bs-toggle="modal" data-bs-target="#uyeOlModal">Üye Ol</button>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-gray" OnClick="btnLogin_Click" />
        </div>
    </div>

    <!-- Modal: Üye Ol -->
    <div class="modal fade" id="uyeOlModal" tabindex="-1" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content" style="background-color:#f5f5f5; border-radius:0;">
          <div class="modal-header">
            <h5 class="modal-title">Yeni Üye Kaydı</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>
          <div class="modal-body">
            <input type="text" class="form-control mb-2" placeholder="Adı" />
            <input type="text" class="form-control mb-2" placeholder="Soyadı" />
            <input type="text" class="form-control mb-2" placeholder="Kullanıcı Adı" />
            <input type="password" class="form-control mb-2" placeholder="Şifre" />
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-gray" data-bs-dismiss="modal">İptal Et</button>
            <button type="button" class="btn btn-gray" data-bs-dismiss="modal">Üye Ol</button>
          </div>
        </div>
      </div>
    </div>

   
    <div class="modal fade" id="sozlesmeModal" tabindex="-1" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content" style="background-color:#f5f5f5; border-radius:0;">
          <div class="modal-header">
            <h5 class="modal-title">Kullanıcı Sözleşmesi</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>
          <div class="modal-body">
            <p>
                Bu sistemin kullanım şartlarını okudum ve kabul ediyorum. 
                Kullanıcılar sisteme giriş yaparken doğru bilgi vermekle yükümlüdür.
            </p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-gray" data-bs-dismiss="modal">Okudum</button>
          </div>
        </div>
      </div>
    </div>

</form>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>



