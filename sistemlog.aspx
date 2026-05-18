<%@ Page Title="Sistem Logları" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="sistemlog.aspx.cs" Inherits="WebApplication4.SistemLoglari" %>

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
        .btn-gray:hover {
            background-color: #5f666d;
            color: #fff;
        }
        .form-label { font-weight: 600; }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <div class="toolbar">
        <h5 class="mb-3">Sistem Logları</h5>
        <div class="row g-2 align-items-end">
            <div class="col-md-4">
                <label class="form-label">Log Adı</label>
                <input type="text" class="form-control" placeholder="Ara..." />
            </div>
            <div class="col-md-3">
                <label class="form-label">Başlangıç Tarihi</label>
                <input type="date" class="form-control" />
            </div>
            <div class="col-md-3">
                <label class="form-label">Bitiş Tarihi</label>
                <input type="date" class="form-control" />
            </div>
            <div class="col-md-2">
                <button type="button" class="btn btn-gray w-100">Ara</button>
            </div>
        </div>
    </div>

   
    <div class="table-wrap">
        <table class="table table-bordered table-striped align-middle text-center">
            <thead class="table-light">
                <tr>
                    <th>Log Adı</th>
                    <th>Kullanıcı Adı</th>
                    <th>Tarih</th>
                    <th>Türü</th>
                    <th>IP</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Giriş Yapıldı</td>
                    <td>Farah</td>
                    <td>15.10.2025</td>
                    <td>Sistem Girişi</td>
                    <td>192.168.1.1</td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>
