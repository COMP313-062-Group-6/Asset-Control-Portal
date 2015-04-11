<%@ Page Language="C#" MasterPageFile="~/Normal/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmIssuedNumber.aspx.cs" Inherits="Normal_frmIssuedNumber" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 212px;
        }
        .style10
        {
            width: 117px;
        }
        .style11
        {
            width: 177px;
            font-weight: bold;
        }
        .style12
        {
            width: 759px;
        }
    .style13
    {
        width: 213px;
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
    <table class="style8">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                Add New Number</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
                            <td>
                                Issued Date</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Width="170px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="TextBox4" ErrorMessage="Issued Date is Empty" 
                                    ValidationGroup="a"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                Contact No</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Contact No is empty!!" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Sim No</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Sim No. is Empty" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Max. Credit Limit</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Max Credit is Empty" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    ValidationGroup="a" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

