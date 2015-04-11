<%@ Page Language="C#" MasterPageFile="~/Normal/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmNumberList.aspx.cs" Inherits="Normal_frmNumberList" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style11
        {
            width: 213px;
        }
        .style12
        {
            width: 508px;
        }
        .style13
        {
            width: 240px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style8">
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style13">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                    ForeColor="White" NavigateUrl="~/Normal/Home.aspx">Back</asp:HyperLink>
            </td>
            <td class="style12">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" 
                    ForeColor="White" onclick="LinkButton3_Click">Export To Excel</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                    ForeColor="White" onclick="LinkButton1_Click">Logout</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="3" CellSpacing="1" DataKeyNames="Employeeid" GridLines="None" 
        onrowdeleting="GridView1_RowDeleting" Width="100%" 
        AutoGenerateColumns="False">
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="clustername" HeaderText="Cluster" />
            <asp:BoundField DataField="circlename" HeaderText="Circle" />
            <asp:BoundField DataField="upicode" HeaderText="UPI Code" />
            <asp:BoundField DataField="jobtype" HeaderText="Job Type" />
            <asp:BoundField DataField="designation" HeaderText="Designation" />
            <asp:BoundField DataField="emailid" HeaderText="Email ID" />
            <asp:BoundField DataField="manager" HeaderText="Manager" />
            <asp:BoundField DataField="description" HeaderText="Description" />
            <asp:BoundField DataField="contactno" HeaderText="Contact No" />
            <asp:BoundField DataField="simno" HeaderText="Sim No" />
            <asp:BoundField DataField="issueddate" HeaderText="Issued Date" />
            <asp:BoundField DataField="maxcreditlimit" HeaderText="Credit Limit" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>
</asp:Content>

