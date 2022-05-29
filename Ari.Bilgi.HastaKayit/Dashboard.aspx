<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Ari.Bilgi.HastaKayit.Dashboard" %>

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
    <form id="form1" runat="server">
        <uc1:Menu runat="server" ID="Menu" />
    </form>
</body>
</html>
