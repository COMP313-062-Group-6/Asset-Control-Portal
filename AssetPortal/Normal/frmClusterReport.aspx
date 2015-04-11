<%@ Page Language="C#" MasterPageFile="~/Normal/MasterPage.master" AutoEventWireup="true" CodeFile="frmClusterReport.aspx.cs" Inherits="Normal_frmClusterReport" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style6
        {
            width: 430px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    
    <table class="style5">
        <tr>
            <td class="style6">
                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                    ForeColor="White" NavigateUrl="~/Normal/Home.aspx">Back</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CLUSTER WISE REPORT&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" 
                    ForeColor="White" onclick="LinkButton3_Click">Export To Excel</asp:LinkButton>
            </td>
        </tr>
    </table>
    
</asp:Content>

<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">

            <table style="height: 140px" width="100%" >
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        Select Circle Here</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="175px" 
                            AppendDataBoundItems="True">
                            <asp:ListItem>Select Circle</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="175px" 
                            AppendDataBoundItems="True" ValidationGroup="a">
                        </asp:DropDownList>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="DropDownList1" ErrorMessage="Select Circle First!!" 
                            InitialValue="Select Circle" ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
    </table>

&nbsp; 

</asp:Content>
<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder5">

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" ForeColor="Black" PageSize="12" Width="100%">
                <RowStyle BackColor="White" HorizontalAlign="Center" />
                <FooterStyle BackColor="#CCCCCC" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>

</asp:Content>


