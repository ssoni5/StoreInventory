<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductForm.aspx.cs" Inherits="StoreInventory.ProductForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Site.css" rel="stylesheet" type="text/css" />
    <title>Product</title>
</head>
<body>
    <h1>Product</h1>
    <form id="form1" runat="server">
        <asp:Panel runat="server" Visible="True" ID ="pnlForm">
            <table>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateName" ControlToValidate="txtName" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>                        
                    </td>
                </tr>
                <tr>
                    <td>Weight:</td>
                    <td>
                        <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateWeight" ControlToValidate="txtWeight" ErrorMessage="Weight is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateDescription" ControlToValidate="txtDescription" ErrorMessage="Description is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>        
                <tr>
                    <td>Type:</td>
                    <td>
                        <asp:DropDownList ID="drpListOfType" runat="server">
                            <asp:ListItem Text="Select One" Value=""></asp:ListItem>
                            <asp:ListItem Text="Neckless" Value="Neckless"></asp:ListItem>
                            <asp:ListItem Text="Bracelet" Value="Bracelet"></asp:ListItem>
                            <asp:ListItem Text="Ring" Value="Ring"></asp:ListItem>
                            <asp:ListItem Text="Watch" Value="Watch"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ID="validateType" ControlToValidate="drpListOfType" ErrorMessage="Type is required" CssClass="text-danger"></asp:RequiredFieldValidator>
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
