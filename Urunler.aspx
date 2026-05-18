<%@ Page Title="Ürünler" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Urunler.aspx.cs" Inherits="WebApplication4.Urunler" %>

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
        .btn-gray {                 /* زر رمادي ثابت */
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
            <div class="col-auto">
                <label class="form-label mb-1">Ürün Adı</label>
                <div class="input-group">
                    <span class="input-group-text">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-search" viewBox="0 0 16 16">
                          <path
                              d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001l3.85 3.85a1 1 0 0 0 
                              1.415-1.414l-3.85-3.85zm-5.242 1.656a5 5 0 1 1 0-10
                              5 5 0 0 1 0 10z" />
                        </svg>
                    </span>
                    <input type="text" class="form-control" placeholder="Ara..." />
                </div>
            </div>
            <div class="col-auto">
                <button type="button" class="btn btn-gray">Ara</button>
            </div>
            <div class="col-auto">
                <button type="button" class="btn btn-outline-secondary"
                        data-bs-toggle="modal" data-bs-target="#modalUrunEkle">
                    Ürün Ekle
                </button>
            </div>
        </div>
    </div>

  
    <div class="table-wrap">
        <table class="table table-bordered table-striped align-middle text-center">
            <thead class="table-light">
                <tr>
                    <th>Ürün Adı</th>
                    <th>Kayıt Tarihi</th>
                    <th>Stok Adet</th>
                    <th>Birim Fiyat</th>
                    <th>Not</th>
                    <th>Detaylar</th>
                    <th>Sil</th>
                </tr>
            </thead>
            <tbody>
               
                <tr>
                    <td>A4 Kağıt</td>
                    <td>25.10.2025</td>
                    <td>10</td>
                    <td>300</td>
                    <td>Sarf Malzeme</td>
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

    <div class="modal fade" id="modalUrunEkle" tabindex="-1" aria-hidden="true"
         data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ürün Ekle</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Kapat"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Kategori</label>
                        <select class="form-select">
                            <option>Elektronik</option>
                            <option>Ofis</option>
                            <option>Temizlik</option>
                            <option>Diğer</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Ürün Adı</label>
                        <input type="text" class="form-control" placeholder="Ürün adını giriniz" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Stok</label>
                        <input type="number" class="form-control" min="0" value="0" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Birim Fiyat</label>
                        <input type="number" class="form-control" min="0" step="0.01" value="0" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Not</label>
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" data-bs-dismiss="modal">İptal Et</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">Kaydet</button>
                </div>
            </div>
        </div>
    </div>

   
    <div class="modal fade" id="modalDetay" tabindex="-1" aria-hidden="true"
         data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ürün Güncelle</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Kapat"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Kategori</label>
                        <select class="form-select">
                            <option selected>Ofis</option>
                            <option>Elektronik</option>
                            <option>Temizlik</option>
                            <option>Diğer</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Ürün Adı</label>
                        <input type="text" class="form-control" value="A4 Kağıt" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Stok</label>
                        <input type="number" class="form-control" value="10" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Birim Fiyat</label>
                        <input type="number" class="form-control" value="300" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Not</label>
                        <textarea class="form-control" rows="3">Sarf Malzeme</textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" data-bs-dismiss="modal">İptal Et</button>
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
                        Bu ürünü silmek istediğinizden emin misiniz?
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


