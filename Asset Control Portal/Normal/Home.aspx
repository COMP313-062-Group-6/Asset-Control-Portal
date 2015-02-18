<%@ Page Language="C#" MasterPageFile="~/Normal/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
            height: 434px;
            margin-bottom: 1px;
        }
        .style16
        {
            width: 19px;
        }
        .style19
        {
            width: 969px;
        }
    .style20
    {
        width: 100%;
    }
        .style22
        {
            width: 555px;
        }
        .style23
        {
            width: 404px;
        }
        .style24
        {
            width: 13px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style20">
    <tr>
        <td class="style22">
            &nbsp;</td>
        <td class="style23">
            <asp:Menu ID="Menu1" runat="server" BackColor="Black" 
                DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Small" 
                ForeColor="White" Orientation="Horizontal" StaticSubMenuIndent="10px" 
                Width="260px" style="margin-left: 0px">
                <StaticSelectedStyle BackColor="#507CD1" />
                <StaticMenuItemStyle HorizontalPadding="15px" VerticalPadding="2px" />
                <DynamicHoverStyle BackColor="#000066" ForeColor="White" />
                <DynamicMenuStyle BackColor="Black" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="5px" />
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <Items>
                    <asp:MenuItem Text="Employee Master" Value="Employees Master">
                        <asp:MenuItem NavigateUrl="~/Normal/frmEmployees.aspx" Text="Add Employee" 
                            Value="Add Employee"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Normal/EmployeeList.aspx" Text="List Employees" 
                            Value="List Employees"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Generate Reports" Value="Generate Reports">
                        <asp:MenuItem NavigateUrl="~/Normal/frmReport.aspx" Text="Asset Wise" 
                            Value="Asset Wise"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Normal/frmClusterReport.aspx" Text="Cluster Wise" 
                            Value="Cluster Wise"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Normal/frmNumberList.aspx" Text="Numbers " 
                            Value="Numbers "></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Normal/CustomizedReport.aspx" 
                            Text="Customized Report" Value="Customized Report"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
        </td>
        <td class="style24">
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
        <tr style="background-color: #1A1A58">
            <td class="style16">
                </td>
            <td class="style19">
                <marquee behavior = "alternate" direction = left>
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
                            <b style="font-size:x-large; color:Purple"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</b><b><marquee 
                                behaviour ="scroll" direction ="up" scrollamount=2" 
                            style="width: 638px; height: 350px; margin-left: 0px;">
                    
                                                              
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" ForeColor="Black" GridLines="Vertical" 
                     Width="100%" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
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

