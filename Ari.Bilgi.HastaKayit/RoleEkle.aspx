<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleEkle.aspx.cs" Inherits="Ari.Bilgi.HastaKayit.RoleEkle" %>

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
    <uc1:Menu runat="server" ID="Menu" />
    <form id="form1" runat="server">
        
          <div class="container">

              <div>

                <div class="form-group">
                    <label>Role Adı: </label>
                    <asp:TextBox ID="txtRoleAdi" CssClass="form-control" runat="server"></asp:TextBox>

                </div>

                 <div class="form-group">
                    <label>Açıklama: </label>
                    <asp:TextBox ID="txtAciklama" TextMode="MultiLine" Rows="5" CssClass="form-control" runat="server"></asp:TextBox>

                </div>

               <div class="form-group">

                   <asp:Button ID="BtnKaydet"  CssClass="btn btn-success" runat="server" Text="Kaydet" OnClick="BtnKaydet_Click" />

               </div>

              <asp:Label ID="lblmesaj" runat="server" Text=""></asp:Label>

            </div>
          </div>


    </form>
</body>
</html>
