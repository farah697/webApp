<%@ Page Title="Kullanıcı Ara" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="kullaniciara.aspx.cs" Inherits="WebApplication4.kullaniciara" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .search-box {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
        }
        .table-container {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 15px;
            margin-top: 20px;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
        }
        .btn-custom {
            background-color: #6c757d;
            color: white;
            border: none;
        }
        .btn-custom:hover {
            background-color: #5a6268;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <div class="search-box">
        <h5 class="mb-3">Kullanıcı Ara</h5>
        <div class="row g-2">
            <div class="col-md-6">
                <input type="text" class="form-control" placeholder="Adı giriniz..." />
            </div>
            <div class="col-md-2">
                <button class="btn btn-custom w-100">Ara</button>
            </div>
        </div>
    </div>

   
    <div class="table-container">
        <table class="table table-bordered text-center align-middle">
            <thead class="table-light">
                <tr>
                    <th>Adı</th>
                    <th>Soyadı</th>
                    <th>Kullanıcı Adı</th>
                    <th>Kayıt Tarihi</th>
                    <th>Detaylar</th>
                    <th>Sil</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Farah</td>
                    <td>El mouadene</td>
                    <td>farah,elmouadene</td>
                    <td>25.10.2025</td>
                    <td>
                        <button class="btn btn-outline-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#detayModal">Detaylar</button>
                    </td>
                    <td>
                        <button class="btn btn-secondary btn-sm" data-bs-toggle="modal" data-bs-target="#silModal">Sil</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    
    <div class="modal fade" id="detayModal" tabindex="-1" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Kullanıcı Güncelle</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>
          <div class="modal-body">
                <div class="mb-3">
                    <label class="form-label">Adı</label>
                    <input type="text" class="form-control" value="Ersin" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Soyadı</label>
                    <input type="text" class="form-control" value="ERSOY" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Kullanıcı Adı</label>
                    <input type="text" class="form-control" value="ersin.ersoy" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Şifre</label>
                    <input type="password" class="form-control" value="1234" />
                </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">İptal Et</button>
            <button type="button" class="btn btn-secondary">Güncelle</button>
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="silModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="border-radius:8px;">
          <div class="modal-header">
            <h5 class="modal-title">Uyarı</h5>
          </div>
          <div class="modal-body text-center">
            <p style="font-size:16px; font-weight:500;">
              Bu kullanıcıyı silmek istediğinizden emin misiniz?
            </p>
          </div>
          <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">İptal Et</button>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Sil</button>
          </div>
        </div>
      </div>
    </div>

</asp:Content>
