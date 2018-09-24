<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="StoreInventory.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.6/united/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.1.0/css/responsive.dataTables.min.css">
    <script async src="https://code.jquery.com/jquery-2.2.3.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.1.0/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
    <link href="Content/Site.css" rel="stylesheet" type="text/css" />
    <title>Store Inventory</title>
</head>
<body>
    <h1 class="heading-center">Store Inventory</h1>
    <form id="form1" runat="server">
        <h2 class="heading-center top-margin">Customers</h2>
        <p>
            <button><a href="CustomerForm.aspx">Add Customer</a></button>
        </p>
        <div class="container body-content">
            <asp:Table width="100%" CssClass="display responsive nowrap" runat="server" ID="tblCustomers">
               <asp:TableHeaderRow TableSection="TableHeader">
                   <asp:TableHeaderCell>First Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Last Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                    <asp:TableHeaderCell>City</asp:TableHeaderCell>
                   <asp:TableHeaderCell>State</asp:TableHeaderCell>
                   <asp:TableHeaderCell>ZipCode</asp:TableHeaderCell>
               </asp:TableHeaderRow>
           </asp:Table>
        </div>
        <h2 class="heading-center top-margin">Products</h2>
        <p>
            <button><a href="ProductForm.aspx">Add Product</a></button>
        </p>
        <div class="container body-content">
            <asp:Table width="100%" CssClass="display responsive nowrap" runat="server" ID="tblProducts">
               <asp:TableHeaderRow TableSection="TableHeader">
                   <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Description</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Weight</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Type</asp:TableHeaderCell>
               </asp:TableHeaderRow>
           </asp:Table>
        </div>
        <h2 class="heading-center top-margin">Transactions</h2>
        <p>
            <button><a href="TransactionForm.aspx">Add Transaction</a></button>
        </p>
        <div class="container body-content">
            <asp:Table width="100%" CssClass="display responsive nowrap" runat="server" ID="tblTransactions">
               <asp:TableHeaderRow TableSection="TableHeader">
                   <asp:TableHeaderCell>CustomerId</asp:TableHeaderCell>
                   <asp:TableHeaderCell>Customer FullName</asp:TableHeaderCell>
                    <asp:TableHeaderCell>ProductId</asp:TableHeaderCell>
                   <asp:TableHeaderCell>Product Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Price</asp:TableHeaderCell>
               </asp:TableHeaderRow>
           </asp:Table>
        </div>
    </form>
    <script type="text/javascript" >
        $(document).ready(function() {

            $('#tblCustomers').DataTable();
            $('#tblProducts').DataTable();
            $('#tblTransactions').DataTable();

        } );
    </script>
</body>
</html>
