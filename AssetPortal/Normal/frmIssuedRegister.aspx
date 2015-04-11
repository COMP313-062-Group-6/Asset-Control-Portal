<%@ Page Language="C#" MasterPageFile="~/Normal/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmIssuedRegister.aspx.cs" Inherits="Normal_frmIssuedRegister" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 187px;
        }
        .style12
        {
            width: 790px;
        }
    .style13
    {
        width: 204px;
    }
        .style14
        {
            width: 247px;
        }
        .style15
        {
            width: 100px;
        }
        .style16
        {
            width: 183px;
        }
        .style17
        {
            width: 183px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style8">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style12">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                    ForeColor="White" NavigateUrl="~/Normal/Home.aspx">Back</asp:HyperLink>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                    ForeColor="White" onclick="LinkButton1_Click">Logout</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style17">
                Add New Asset</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                Issue Date</td>
            <td class="style16">
                <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Issued Date is Empty" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                Asset Issue</td>
            <td class="style16">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="174px">
                    <asp:ListItem>Select Asset</asp:ListItem>
                    <asp:ListItem>Desktop</asp:ListItem>
                    <asp:ListItem>Laptop</asp:ListItem>
                    <asp:ListItem>Printer</asp:ListItem>
                    <asp:ListItem>Mobile</asp:ListItem>
                    <asp:ListItem>RSA</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Asset not Selected" 
                    InitialValue="Select Asset" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                Serial No</td>
            <td class="style16">
                <asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Serial No is Empty" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                Manufacturer</td>
            <td class="style16">
                <asp:TextBox ID="TextBox3" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Manufacturer is Empty!!" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style16">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    ValidationGroup="a" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style16">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

