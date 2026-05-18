<%@ Page Title="Parametreler" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Parametreler.aspx.cs" Inherits="WebApplication4.Parametreler" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style>
        .param-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
            text-align: center;
        }
        .btn-gray {
            background-color: #6c757d;
            color: white;
            border: none;
        }
        .btn-gray:hover {
            background-color: #5f666d;
            color: white;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="param-container">
        <h5 class="mb-4">Parametreler</h5>
        <button type="button" class="btn btn-gray" data-bs-toggle="modal" data-bs-target="#sozlesmeModal">
            Kullanıcı Sözleşmesi Güncelle
        </button>
    </div>

   
    <div class="modal fade" id="sozlesmeModal" tabindex="-1" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content" style="background-color:#f5f5f5;">
          
          <div class="modal-header">
            <h5 class="modal-title">Kullanıcı Sözleşmesi Güncelle</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>

          <div class="modal-body">
            <label class="form-label">Sözleşme Metni</label>
            <textarea class="form-control" rows="10" placeholder="Buraya sözleşme metnini yazınız..."></textarea>
          </div>

          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">İptal</button>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Güncelle</button>
          </div>

        </div>
      </div>
    </div>

</asp:Content>

