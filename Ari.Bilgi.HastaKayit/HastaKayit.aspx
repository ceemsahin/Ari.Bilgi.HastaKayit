<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HastaKayit.aspx.cs" Inherits="Ari.Bilgi.HastaKayit.HastaKayit" %>

<%@ Register Src="~/Menu.ascx" TagPrefix="uc1" TagName="Menu" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/popper-utils.min.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
</head>
<body>
    <uc1:menu runat="server" id="Menu" />
    <form id="form1" runat="server">
        <br />
        <div class="container">

            <div class="form-group">
                <label>Adı ve SoyAdi</label>
                <asp:TextBox ID="txtAdSoyad" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

              <div class="form-group">
                <label>TC No</label>
                <asp:TextBox ID="txtTCNo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

             <div class="form-group">
                <label>Telefon</label>
                <asp:TextBox ID="txtTelefon" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Email</label>
                <asp:TextBox ID="txtemail" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

             <div class="form-group">
                <label>Dogum Tarihi</label>
                <asp:TextBox ID="txtDogumTarihi" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

              <div class="form-group">
                <label>Cinsiyet</label>
                  <asp:RadioButton ID="RdyErkek" GroupName="c" Text="Erkek" CssClass="custom-radio" runat="server" />
                  <asp:RadioButton ID="RdyKadin" GroupName="c" Text="Kadın" CssClass="custom-radio" runat="server" />
            </div>

             <div class="form-group">
                <label>Adres</label>
                <asp:TextBox ID="txtAdres" TextMode="MultiLine" Rows="5" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Il</label>
                <asp:TextBox ID="txtIl"  CssClass="form-control" runat="server"></asp:TextBox>
            </div>

             <div class="form-group">
                <label>Ilce</label>
                <asp:TextBox ID="txtIlce"  CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <hr />

             <div class="form-group">
                <label>Hasta Açıklama</label>
                <asp:TextBox ID="txtHastaAciklama" TextMode="MultiLine" Rows="5"  CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            
           <div class="form-group">
                <label>Semptomlar</label>
                <asp:TextBox ID="txtSemptom" TextMode="MultiLine" Rows="5"  CssClass="form-control" runat="server"></asp:TextBox>
            </div>

             <div class="form-group">
                <label>Doktor Seçin</label>
                 <asp:DropDownList ID="DDLDoktor" CssClass="form-control" runat="server" DataSourceID="SqlDoktor" DataTextField="DoktorAdi" DataValueField="ID"></asp:DropDownList>
            </div>

             <div class="form-group">
                <label>Oda Seçin</label>
                 <asp:DropDownList ID="DDLOda" CssClass="form-control" runat="server" DataSourceID="SqlOda" DataTextField="Oda" DataValueField="ID"></asp:DropDownList>
            </div>

            <div class="form-group">
                <label>Giriş Tarihi</label> 
                   <asp:TextBox ID="txtGirisTarihi" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
            </div>

             <div class="form-group">
                <label>Çıkış Tarihi</label>
                   <asp:TextBox ID="txtCikisTarih" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
            </div>

            <br />
             <div class="form-group">
                 
                 <asp:Button ID="BtnKaydet" CssClass="btn btn-success" runat="server" Text="KAYDET" OnClick="BtnKaydet_Click" />

             </div>


            <hr />



              <div class="form-group">

              <label class="text-center text-success" id="txtMesaj" runat="server" visible="false"></label>
              
              </div>



        </div>
        <asp:SqlDataSource ID="SqlDoktor" runat="server" ConnectionString="<%$ ConnectionStrings:HastaKayitDBConn %>" SelectCommand="SELECT [ID], [DoktorAdi] FROM [Doctor]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlOda" runat="server" ConnectionString="<%$ ConnectionStrings:HastaKayitDBConn %>" SelectCommand="select  ID, 'Adı: '+OdaAdi+' /  NO:'+CONVERT(nvarchar,OdaNumarasi)Oda from Room"></asp:SqlDataSource>
    </form>
</body>
</html>
