<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TransactionForm.aspx.cs" Inherits="StoreInventory.TransactionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Transaction</h1>
    <form id="form1" runat="server">
        <asp:Panel runat="server" Visible="True" ID ="pnlForm">
            <table>
                <tr>
                    <td>Customer:</td>
                    <td>
                        <asp:DropDownList ID="drpListOfCustomers" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ID="validateCustomerList" ControlToValidate="drpListOfCustomers" ErrorMessage="Customer is required" CssClass="text-danger"></asp:RequiredFieldValidator>                        
                    </td>
                </tr>
                <tr>
                    <td>Product:</td>
                    <td>
                        <asp:DropDownList ID="drpListOfProducts" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ID="validateListProducts" ControlToValidate="drpListOfProducts" ErrorMessage="Product is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validatePrice" ControlToValidate="txtPrice" ErrorMessage="Price is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>        
            </table>
            <asp:Button runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Submit" />
        </asp:Panel>
        <asp:Panel runat="server" ID="pnlThankYou" Visible="false">
           <h2><asp:Label runat="server" ID="lblStatus"></asp:Label></h2>
            <button><a href="Index.aspx">Return Home</a></button>
       </asp:Panel>
    </form>
</body>
</html>
