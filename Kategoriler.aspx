<%@ Page Title="Kategoriler" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Kategoriler.aspx.cs" Inherits="WebApplication4.Kategoriler" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style>
        .toolbar {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 14px;
            box-shadow: 0 0 5px rgba(0,0,0,0.08);
        }
        .table-wrap {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 14px;
            margin-top: 18px;
            box-shadow: 0 0 5px rgba(0,0,0,0.08);
        }
        .btn-gray {                
            background-color: #6c757d;
            color: #fff;
            border: none;
        }
        .btn-gray:hover { background-color: #5f666d; color:#fff; }
        .form-label { font-weight: 600; }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <div class="toolbar">
        <div class="row g-2 align-items-end">
            <div class="col-md-6">
                <label class="form-label mb-1">Kategori Adı</label>
                <input type="text" class="form-control" placeholder="Ara..." />
            </div>
            <div class="col-md-2">
                <button type="button" class="btn btn-gray w-100">Ara</button>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn btn-outline-secondary w-100"
                        data-bs-toggle="modal" data-bs-target="#modalKategoriEkle">
                    Kategori Ekle
                </button>
            </div>
        </div>
    </div>

    
    <div class="table-wrap">
        <table class="table table-bordered table-striped align-middle text-center">
            <thead class="table-light">
                <tr>
                    <th>Kategori Adı</th>
                    <th>Kayıt Tarihi</th>
                    <th>Not</th>
                    <th>Detaylar</th>
                    <th>Sil</th>
                </tr>
            </thead>
            <tbody>
               
                <tr>
                    <td>Elektronik</td>
                    <td>25.10.2025</td>
                    <td>Elektronik ürünler</td>
                    <td>
                        <button type="button" class="btn btn-outline-secondary btn-sm"
                                data-bs-toggle="modal" data-bs-target="#modalDetay">
                            Detaylar
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-secondary btn-sm"
                                data-bs-toggle="modal" data-bs-target="#modalSil">
                            Sil
                        </button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

   
    <div class="modal fade" id="modalKategoriEkle" tabindex="-1" aria-hidden="true"
         data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: #f5f5f5;">
                <div class="modal-header">
                    <h5 class="modal-title">Kategori Ekle</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Kapat"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Kategori Adı</label>
                        <input type="text" class="form-control" placeholder="Kategori adı giriniz" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Not</label>
                        <textarea class="form-control" rows="4" placeholder="Not giriniz"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" data-bs-dismiss="modal">İptal</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">Kaydet</button>
                </div>
            </div>
        </div>
    </div>

  
    <div class="modal fade" id="modalDetay" tabindex="-1" aria-hidden="true"
         data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content" style="background-color: #f5f5f5;">
                <div class="modal-header">
                    <h5 class="modal-title">Kategori Güncelle</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Kapat"></button>
                </div>
                <div class="modal-body">
                   
                    <div class="mb-3">
                        <label class="form-label">Kategori Adı</label>
                        <input type="text" class="form-control" value="Elektronik" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Not</label>
                        <textarea class="form-control" rows="4">Elektronik ürünler</textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" data-bs-dismiss="modal">İptal</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">Güncelle</button>
                </div>
            </div>
        </div>
    </div>

    
    <div class="modal fade" id="modalSil" tabindex="-1" aria-hidden="true"
         data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" style="border-radius:8px;">
                <div class="modal-header">
                    <h5 class="modal-title">Uyarı</h5>
                </div>
                <div class="modal-body text-center">
                    <p style="font-size:16px; font-weight:500;">
                        Bu kategoriyi silmek istediğinizden emin misiniz?
                    </p>
                </div>
                <div class="modal-footer justify-content-center">
                    <button class="btn btn-secondary" data-bs-dismiss="modal">İptal Et</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">Sil</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


