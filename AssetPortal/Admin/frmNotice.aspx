<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmNotice.aspx.cs" Inherits="Admin_frmNotice" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 301px;
        }
        .style10
        {
            width: 47px;
        }
        .style11
        {
        }
        .style12
        {
            width: 231px;
        }
        .style13
        {
            width: 199px;
        }
        .style14
        {
            width: 222px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style8">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style14">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                    ForeColor="White" NavigateUrl="~/Admin/AdminHome.aspx">Back</asp:HyperLink>
            </td>
            <td>
                Notice Board</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                Notice</td>
            <td class="style12">
                <asp:TextBox ID="TextBox1" runat="server" Height="132px" MaxLength="100" 
                    style="margin-right: 11px" TextMode="MultiLine" Width="326px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Notice is Empty" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    ValidationGroup="a" />
&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    DataKeyNames="noticeno" ForeColor="Black" 
                    onpageindexchanging="GridView1_PageIndexChanging" 
                    onrowdeleting="GridView1_RowDeleting" PageSize="4" Width="100%">
                    <RowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:BoundField DataField="date" HeaderText="Date" />
                        <asp:BoundField DataField="notice" HeaderText="Notice" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

