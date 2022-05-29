<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoktorEkle.aspx.cs" Inherits="Ari.Bilgi.HastaKayit.DoktorEkle" %>

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
        <div>
          

            <hr />

            <div class="container">

                <div class="form-group">
                    <label>Doktor Adı: </label>
                    <asp:TextBox ID="txtDoktorAdi" CssClass="form-control" runat="server"></asp:TextBox>

                </div>

                 <div class="form-group">
                    <label>Branş: </label>
                    <asp:TextBox ID="txtBrans" CssClass="form-control" runat="server"></asp:TextBox>

                </div>

                 <div class="form-group">
                    
                     <asp:Button ID="BtnKaydet" CssClass="btn btn-success" runat="server" Text="Kaydet" OnClick="BtnKaydet_Click" />

                 </div>
                <asp:Label ID="lblmesaj" runat="server" Text=""></asp:Label>
                   <hr />
                    <br />
             

                 <div class="form-group">

                     
                     <asp:GridView ID="GridDoktor" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="100%" CellPadding="4" ForeColor="#333333">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                             <asp:BoundField DataField="DoktorAdi" HeaderText="DoktorAdi" SortExpression="DoktorAdi" />
                             <asp:BoundField DataField="Brans" HeaderText="Brans" SortExpression="Brans" />
                         </Columns>
                         <EditRowStyle BackColor="#2461BF" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EFF3FB" />
                         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                         <SortedAscendingCellStyle BackColor="#F5F7FB" />
                         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                         <SortedDescendingCellStyle BackColor="#E9EBEF" />
                         <SortedDescendingHeaderStyle BackColor="#4870BE" />
                     </asp:GridView>


                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HastaKayitDBConn %>" SelectCommand="SELECT * FROM [Doctor] WHERE ([IsDeleted] = @IsDeleted) ORDER BY [ID] DESC" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Doctor] WHERE [ID] = @original_ID AND (([DoktorAdi] = @original_DoktorAdi) OR ([DoktorAdi] IS NULL AND @original_DoktorAdi IS NULL)) AND (([Brans] = @original_Brans) OR ([Brans] IS NULL AND @original_Brans IS NULL)) AND (([CreateDate] = @original_CreateDate) OR ([CreateDate] IS NULL AND @original_CreateDate IS NULL)) AND (([IsDeleted] = @original_IsDeleted) OR ([IsDeleted] IS NULL AND @original_IsDeleted IS NULL))" InsertCommand="INSERT INTO [Doctor] ([DoktorAdi], [Brans], [CreateDate], [IsDeleted]) VALUES (@DoktorAdi, @Brans, @CreateDate, @IsDeleted)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Doctor] SET [DoktorAdi] = @DoktorAdi, [Brans] = @Brans, [CreateDate] = @CreateDate, [IsDeleted] = @IsDeleted WHERE [ID] = @original_ID AND (([DoktorAdi] = @original_DoktorAdi) OR ([DoktorAdi] IS NULL AND @original_DoktorAdi IS NULL)) AND (([Brans] = @original_Brans) OR ([Brans] IS NULL AND @original_Brans IS NULL)) AND (([CreateDate] = @original_CreateDate) OR ([CreateDate] IS NULL AND @original_CreateDate IS NULL)) AND (([IsDeleted] = @original_IsDeleted) OR ([IsDeleted] IS NULL AND @original_IsDeleted IS NULL))">
                         <DeleteParameters>
                             <asp:Parameter Name="original_ID" Type="Int32" />
                             <asp:Parameter Name="original_DoktorAdi" Type="String" />
                             <asp:Parameter Name="original_Brans" Type="String" />
                             <asp:Parameter Name="original_CreateDate" Type="DateTime" />
                             <asp:Parameter Name="original_IsDeleted" Type="Boolean" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="DoktorAdi" Type="String" />
                             <asp:Parameter Name="Brans" Type="String" />
                             <asp:Parameter Name="CreateDate" Type="DateTime" />
                             <asp:Parameter Name="IsDeleted" Type="Boolean" />
                         </InsertParameters>
                         <SelectParameters>
                             <asp:Parameter DefaultValue="False" Name="IsDeleted" Type="Boolean" />
                         </SelectParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="DoktorAdi" Type="String" />
                             <asp:Parameter Name="Brans" Type="String" />
                             <asp:Parameter Name="CreateDate" Type="DateTime" />
                             <asp:Parameter Name="IsDeleted" Type="Boolean" />
                             <asp:Parameter Name="original_ID" Type="Int32" />
                             <asp:Parameter Name="original_DoktorAdi" Type="String" />
                             <asp:Parameter Name="original_Brans" Type="String" />
                             <asp:Parameter Name="original_CreateDate" Type="DateTime" />
                             <asp:Parameter Name="original_IsDeleted" Type="Boolean" />
                         </UpdateParameters>
                     </asp:SqlDataSource>


                 </div>

            </div>






        </div>
    </form>
</body>
</html>
