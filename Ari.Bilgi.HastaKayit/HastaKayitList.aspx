<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HastaKayitList.aspx.cs" Inherits="Ari.Bilgi.HastaKayit.HastaKayitList" %>

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
        <br />
        <div class="container">
    
            <h2>Hasta Kayıtları</h2>
  
       <table class="table table-condensed">
            <asp:Repeater ID="RptHasta" runat="server">
                <HeaderTemplate>
                    <thead>
                      <tr>
                        <th>Adı Soyadı</th>
                        <th>TC No</th>
                        <th>Telefon</th>
                        <th>Cinsiyet</th>
                        <th>Semptom</th>
                        <th>İşlem</th>
                      </tr>
                    </thead>
                </HeaderTemplate>

             
                <ItemTemplate>
                     <tbody>
                 <tr>
                    <td><%#Eval("AdiSoyadi") %></td>
                    <td><%#Eval("TCNO") %></td>
                    <td><%#Eval("telefon") %></td>
                    <td><%#Eval("Cinsiyet") %></td>
                    <td><%#Eval("Semptom") %></td>
                    <td>
                        <asp:HyperLink ID="hypDetay" CssClass="btn btn-danger" NavigateUrl='<%# Eval("ID", "~/HastaDetay.aspx?ID={0}") %>' runat="server">Git</asp:HyperLink>  </td>
                   </tr>

                    </tbody>
                </ItemTemplate>
            


            </asp:Repeater>
       </table>

 
</div>
    </form>
</body>
</html>
