<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerForm.aspx.cs" Inherits="StoreInventory.CustomerForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Site.css" rel="stylesheet" type="text/css" />
    <title>Customer</title>
</head>
<body>
    <h1>Customer</h1>
    <form id="form1" runat="server">
        <asp:Panel runat="server" Visible="True" ID ="pnlForm">
            <table>
                <tr>
                    <td>First Name:</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateFirstName" ControlToValidate="txtFirstName" ErrorMessage="First Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>                        
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateLastName" ControlToValidate="txtLastName" ErrorMessage="Last Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email Address:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateEmail" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" CssClass="text-danger"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Street:</td>
                    <td>
                        <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateStreet" ControlToValidate="txtStreet" ErrorMessage="Street is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>        
                <tr>
                    <td>City:</td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateCity" ControlToValidate="txtCity" ErrorMessage="City is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>State:</td>
                    <td>
                        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateState" ControlToValidate="txtState" ErrorMessage="State is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Zip Code:</td>
                    <td>
                        <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateZipCode" ControlToValidate="txtZipCode" ErrorMessage="Zip Code is required" CssClass="text-danger"></asp:RequiredFieldValidator>
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
