<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ari.Bilgi.HastaKayit.Login" %>

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
    <form id="form1" runat="server">
        <div>

            <div class="container">

             <div class="text-center">  <h3>Login Ekranı</h3> </div>

                <div class="form-group">
                    <label>Kullanıcı Email</label>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Kullanıcı Password</label>
                    <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                 <div class="form-group">

                     <asp:Button ID="BtnGirisYap" CssClass="form-control btn btn-success" runat="server" Text="Giriş Yap" OnClick="BtnGirisYap_Click" />

                 </div>

                <div class="form-group">

                    <div class="alert alert-secondary" visible="false" runat="server" id="DivAlert">
                       
                    </div>

                </div>




            </div>
            



        </div>
    </form>
</body>
</html>
