<%@ Page Language="C#" MasterPageFile="~/Normal/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmEmployees.aspx.cs" Inherits="Normal_frmEmployees" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        width: 100%;
    }
    .style10
    {
            width: 200px;
        }
    .style11
    {
        width: 84px;
    }
    .style12
    {
        width: 801px;
    }
    .style13
    {
        width: 203px;
    }
        .style14
        {
        }
        .style15
        {
            width: 187px;
            font-weight: bold;
        }
        .style16
        {
            height: 41px;
        }
        .style17
        {
            width: 187px;
            height: 41px;
        }
        .style18
        {
            height: 41px;
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="style8">
        <tr>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                    ForeColor="White" NavigateUrl="~/Normal/Home.aspx">Back</asp:HyperLink>
            </td>
            <td class="style12">
                &nbsp;</td>
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
        <td >
            &nbsp;</td>
        <td class="style15">
            Add New Employee</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td >
            &nbsp;</td>
        <td class="style15">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td >
            Name</td>
        <td class="style14">
            <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Name is Empty!!" ValidationGroup="a"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            Cluster</td>
        <td class="style14">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="174px" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
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
        <td>
            UPI Code</td>
        <td class="style14">
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
        <td>
            Job Type</td>
        <td class="style14">
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
        <td>
            Designation</td>
        <td class="style14">
            <asp:TextBox ID="TextBox5" runat="server" Width="170px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Designation is Empty!!" 
                ValidationGroup="a" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Enter valid designation.." 
                ValidationGroup="a" Display="Dynamic" InitialValue="admin"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="You cannot assign this role to user.." 
                ValidationGroup="a" Display="Dynamic" InitialValue="manager"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td>
            Email Id</td>
        <td class="style14">
            <asp:TextBox ID="TextBox3" runat="server" Width="170px" 
                ontextchanged="TextBox3_TextChanged"></asp:TextBox>
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
        <td>
            Desription</td>
        <td class="style14">
            <asp:TextBox ID="TextBox4" runat="server" Width="170px"></asp:TextBox>
        </td>
        <td>
            (Optional)</td>
    </tr>
    <tr>
        <td class="style18">
            </td>
        <td class="style16">
            </td>
        <td class="style17">
            <asp:Button ID="Button1" runat="server" Text="Save" ValidationGroup="a" 
                Width="65px" onclick="Button1_Click" />
        </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style14" colspan="2">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

