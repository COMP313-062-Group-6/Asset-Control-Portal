<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmEmployees.aspx.cs" Inherits="Admin_frmEmployees" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        width: 100%;
    }
    .style9
    {
        }
    .style10
    {
        width: 238px;
    }
    .style11
    {
        width: 84px;
    }
        .style12
        {
            width: 720px;
        }
        .style13
        {
            width: 180px;
            font-weight: bold;
        }
        .style14
        {
            width: 238px;
            height: 38px;
        }
        .style15
        {
            width: 84px;
            height: 38px;
        }
        .style16
        {
            height: 38px;
        }
        .style17
        {
            width: 220px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style8">
        <tr>
            <td class="style17">
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
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            &nbsp;</td>
        <td class="style13">
            Add New Manager</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            &nbsp;</td>
        <td class="style13">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            Name</td>
        <td class="style9">
            <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Name is Empty!!" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToValidate="TextBox1" Display="Dynamic" 
                ErrorMessage="Not a volid name!!!" Operator="DataTypeCheck" ValidationGroup="a"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            Circle</td>
        <td class="style9">
            <asp:DropDownList ID="DropDownList3" runat="server" Width="174px" 
                AppendDataBoundItems="True" AutoPostBack="True" 
                onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>Select Circle</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="DropDownList3" ErrorMessage="Circle is not Selected" 
                InitialValue="Select Circle" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            Cluster</td>
        <td class="style9">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="174px" 
                AppendDataBoundItems="True">
                <asp:ListItem>Select Cluster</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Cluster is not Selected" 
                InitialValue="Select Cluster" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            UPI Code</td>
        <td class="style9">
            <asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="UPI Code is Empty!!" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            Job Type</td>
        <td class="style9">
            <asp:DropDownList ID="DropDownList2" runat="server" Width="174px">
                <asp:ListItem>Select Job Type</asp:ListItem>
                <asp:ListItem>On Roll</asp:ListItem>
                <asp:ListItem>Contract</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="DropDownList2" ErrorMessage="Job Type Not Selected" 
                InitialValue="Select Job Type" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            Email Id</td>
        <td class="style9">
            <asp:TextBox ID="TextBox3" runat="server" Width="170px"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Invalid Email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="a" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="EmailId is Empty!!" 
                ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            UserId</td>
        <td class="style9">
            <asp:TextBox ID="TextBox5" runat="server" Width="170px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="UserId is Empty!!" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            Password</td>
        <td class="style9">
            <asp:TextBox ID="TextBox6" runat="server" Width="170px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Password is Empty" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            Desription</td>
        <td class="style9">
            <asp:TextBox ID="TextBox4" runat="server" Width="170px"></asp:TextBox>
        </td>
        <td>
            (Optional)</td>
    </tr>
    <tr>
        <td class="style14">
            </td>
        <td class="style15">
            </td>
        <td class="style16">
            <asp:Button ID="Button1" runat="server" Text="Save" ValidationGroup="a" 
                Width="65px" onclick="Button1_Click" />
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            &nbsp;</td>
        <td class="style9" colspan="2">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

