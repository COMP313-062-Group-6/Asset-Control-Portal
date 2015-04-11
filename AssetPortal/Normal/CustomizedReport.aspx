<%@ Page Language="C#" MasterPageFile="~/Normal/MasterPage.master" AutoEventWireup="true" CodeFile="CustomizedReport.aspx.cs" Inherits="Normal_CustomizedReport" Title="Untitled Page" %>

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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CUSTOMIZED REPORT&nbsp;</td>
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
                        Enter Employee Name</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                            ValidationGroup="a" Width="76px" />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Name is empty!" ValidationGroup="a"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
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

