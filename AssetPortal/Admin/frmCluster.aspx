<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmCluster.aspx.cs" Inherits="Admin_frmCluster" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        width: 100%;
    }
    .style9
    {
        width: 213px;
    }
    .style10
    {
        width: 176px;
    }
    .style11
    {
        width: 53px;
    }
        .style12
        {
            width: 777px;
        }
        .style13
        {
            width: 176px;
            font-weight: bold;
        }
        .style14
        {
            width: 210px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style8">
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style12">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                    ForeColor="White" NavigateUrl="~/Admin/AdminHome.aspx">Back</asp:HyperLink>
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
        <td class="style11">
            &nbsp;</td>
        <td class="style13">
            Add New Cluster</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style11">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style11">
            Name</td>
        <td class="style10">
            <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Cluster Name is Empty!!" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style11">
            Circle</td>
        <td class="style10">
            <asp:DropDownList ID="DropDownList1" runat="server"
                ValidationGroup="a" Width="175px" AppendDataBoundItems="True">
                <asp:ListItem>Select a Circle</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Circle Not Selected" 
                InitialValue="Select a Circle" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style11">
            &nbsp;</td>
        <td class="style10">
            <asp:Button ID="Button1" runat="server" Text="Save" ValidationGroup="a" 
                Width="65px" onclick="Button1_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            &nbsp;</td>
        <td class="style11">
            &nbsp;</td>
        <td class="style10">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

