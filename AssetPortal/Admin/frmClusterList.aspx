<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmClusterList.aspx.cs" Inherits="Admin_frmClusterList" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 100%;
        }
        .style10
        {
            width: 209px;
        }
        .style11
        {
            width: 826px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style9">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
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
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="clusterid" GridLines="Vertical" 
        onrowdeleting="GridView1_RowDeleting" 
        Width="100%" AutoGenerateColumns="False">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
        <Columns>
            <asp:BoundField DataField="ClusterName" HeaderText="Cluster Name" />
            <asp:BoundField DataField="circlename" HeaderText="Circle" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#DCDCDC" />
    </asp:GridView>
</asp:Content>

