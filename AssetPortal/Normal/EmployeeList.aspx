<%@ Page Language="C#" MasterPageFile="~/Normal/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EmployeeList.aspx.cs" Inherits="Normal_EmployeeList" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 1073px;
        }
        .style11
        {
            width: 211px;
        }
        .style12
        {
            width: 751px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table width="100%" >
        <tr>
            <td class="style11" >
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
            <td class="style12" >
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                    ForeColor="White" NavigateUrl="~/Normal/Home.aspx">Back</asp:HyperLink>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                    ForeColor="White" onclick="LinkButton1_Click">Logout</asp:LinkButton>
            </td>
        </tr>
    </table>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" Width="100%" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="EmployeeId" 
        GridLines="Vertical" Height="59px" HorizontalAlign="Center" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowdatabound="GridView1_RowDataBound" onrowdeleting="GridView1_RowDeleting" 
        onrowediting="GridView1_RowEditing" 
    onrowcreated="GridView1_RowCreated">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        <Columns>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text = '<%#Bind("name")%>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    Name
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text = '<%#Bind("name")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="145px" 
                        AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:Label ID="lblCircle" runat="server" Text="Label" Visible="False"></asp:Label>
                </EditItemTemplate>
                <HeaderTemplate>
                    Circle
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text = '<%#Bind("circlename")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="145px">
                    </asp:DropDownList>
                    <asp:Label ID="lblCluster" runat="server" Text="Label" Visible="False"></asp:Label>
                </EditItemTemplate>
                <HeaderTemplate>
                    Cluster
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text = '<%#Bind("clustername")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text = '<%#Bind("upicode")%>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    UPICode
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text = '<%#Bind("upicode")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="22px" Width="146px" >
                        <asp:ListItem>On Roll</asp:ListItem>
                        <asp:ListItem>Contract</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <HeaderTemplate>
                    JobType
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text = '<%#Bind("jobtype")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text = '<%#Bind("designation")%>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    Designation
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text = '<%#Bind("designation")%>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text = '<%#Bind("emailid")%>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    EmailID
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text = '<%#Bind("emailid")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text = '<%#Bind("description")%>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    Description
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text = '<%#Bind("description")%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnIssue" runat="server" onclick="btnIssue_Click" 
                        Text="Issue Asset" />
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnAsset" runat="server" onclick="btnAsset_Click" 
                        Text="Issued Asset" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="BtnNumber" runat="server" onclick="BtnNumber_Click" 
                        Text="Issued No." />
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="Gainsboro" />
    </asp:GridView>
</asp:Content>

