<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="KullaniciKaydet.aspx.cs" Inherits="Ari.Bilgi.HastaKayit.KullaniciKaydet" %>

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

             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Şifreniz Uyuşmuyor" ControlToCompare="txtPassword" ControlToValidate="txtPassword2" Font-Bold="True" Font-Size="Small" ForeColor="#990000"></asp:CompareValidator>
              <div>

                <div class="form-group">
                    <label>
                 


                    <br />
                    Kullanici Email: </label>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>

                </div>

                 <div class="form-group">
                    <label>Kullanıcı Password: </label>
                    <asp:TextBox ID="txtPassword"   CssClass="form-control" runat="server"></asp:TextBox>

                </div>

                <div class="form-group">
                    <label>Kullanıcı Password Tekrar: </label>
                    <asp:TextBox ID="txtPassword2"   CssClass="form-control" runat="server"></asp:TextBox>

                </div>

                  <div class="form-group">
                    <label>Kullanıcı Rolü: </label>
                      <asp:DropDownList ID="DDLRole" CssClass="form-control" runat="server" DataSourceID="SqlRole" DataTextField="RoleAdi" DataValueField="ID"></asp:DropDownList>

                </div>

               <div class="form-group">

                   <asp:Button ID="BtnKaydet"  CssClass="btn btn-success" runat="server" Text="Kaydet" OnClick="BtnKaydet_Click" />

                   <asp:SqlDataSource ID="SqlRole" runat="server" ConnectionString="<%$ ConnectionStrings:HastaKayitDBConn %>" SelectCommand="SELECT * FROM [Roles] ORDER BY [RoleAdi]"></asp:SqlDataSource>

               </div>


              <asp:Label ID="lblmesaj" runat="server" Text=""></asp:Label>

                  <br />
                  <br />

            </div>
          </div>
    </form>
</body>
</html>
