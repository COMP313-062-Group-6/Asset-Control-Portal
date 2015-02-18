<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_AdminHome" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 306px;
        }
        .style10
        {
            width: 944px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style8">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Menu ID="Menu1" runat="server" ForeColor="#FF6600" 
                    Orientation="Horizontal" Width="100%">
                    <DynamicHoverStyle BackColor="#CC9900" />
                    <DynamicMenuStyle BackColor="Black" />
                    <DynamicMenuItemStyle BackColor="Black" />
                    <Items>
                        <asp:MenuItem Text="Circle" Value="Circle">
                            <asp:MenuItem NavigateUrl="~/Admin/frmCircle.aspx" Text="Add New Circle" 
                                Value="Add New Circle"></asp:MenuItem>
                            <asp:MenuItem Text="List All Circles" Value="List All Circles" 
                                NavigateUrl="~/Admin/frmCircleList.aspx"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Cluster" Value="Cluster">
                            <asp:MenuItem NavigateUrl="~/Admin/frmCluster.aspx" Text="Add New Cluster" 
                                Value="Add New Cluster"></asp:MenuItem>
                            <asp:MenuItem Text="List All Cluster" Value="List All Cluster" 
                                NavigateUrl="~/Admin/frmClusterList.aspx"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Managers" Value="Managers">
                            <asp:MenuItem NavigateUrl="~/Admin/frmEmployees.aspx" Text="Add Manager" 
                                Value="Add Manager"></asp:MenuItem>
                            <asp:MenuItem Text="List All Managers" Value="List All Managers" 
                                NavigateUrl="~/Admin/ManagersList.aspx"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmNotice.aspx" Text="Notices" 
                            Value="Notices"></asp:MenuItem>
                    </Items>
                </asp:Menu>
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
        <tr style="background-color: #1A1A58">
            <td class="style16">
                </td>
            <td class="style19">
                <marquee behavior = "alternate" direction = left style="color: #FFFFFF">
                <b style="font-size:x-large; color:White">
                 NOTICE BOARD
                 </b></marquee></td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style16" style="background-color: #1A1A58">
                &nbsp;</td>
            <td class="style19" style="border: thick inset #FF9933">
                            <b style="font-size:x-large; color:Purple"> &nbsp;</b><b>
                            <marquee behaviour ="scroll" direction ="up" scrollamount=2" 
                            style="width: 962px; height: 350px; margin-left: 0px;">
                    <b style="font-size:x-large; color:Purple"> NOTICE </b>
                    <br />
                    <br />
                     <br />
                     <b>
                                                    
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" ForeColor="Black" GridLines="Vertical" 
                     Width="100%" AllowPaging="True" >
                       <RowStyle BackColor="#F7F7DE" />
                   <Columns>
                       <asp:BoundField DataField="date" HeaderText="Date"  >
                                                    
                           <ControlStyle Width="60px">
                           </ControlStyle>
                                                    
                           <HeaderStyle Width="60px">
                           </HeaderStyle>
                       </asp:BoundField>
                       <asp:BoundField DataField="notice" HeaderText="Notice" />
                   </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                </b></marquee>        
                </td>
            <td style="background-color: #1A1A58">
                &nbsp;</td>
        </tr>
        <tr style="background-color: #1A1A58">
            <td class="style16">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

