<%@ Page Language="C#" MasterPageFile="~/Normal/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAsset.aspx.cs" Inherits="Normal_frmAsset" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 100%;
            height: 0px;
        }
        .style10
        {
            width: 247px;
        }
        .style11
        {
            width: 438px;
        }
    .style12
    {
        width: 314px;
    }
    .style13
    {
        width: 206px;
    }
        .style14
        {
            width: 247px;
            height: 379px;
        }
        .style15
        {
            height: 379px;
        }
        .style16
        {
            width: 542px;
        }
        .style17
        {
            height: 379px;
            width: 542px;
        }
        .style18
        {
            width: 175px;
        }
        .style19
        {
            width: 100%;
        }
        .style20
        {
            width: 173px;
        }
        .style21
        {
            width: 115px;
        }
        .style23
        {
            width: 15px;
        }
        .style26
        {
            width: 29px;
        }
        .style27
        {
            width: 107px;
        }
        .style28
        {
            width: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style8">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                    ForeColor="White" NavigateUrl="~/Normal/EmployeeList.aspx">Back</asp:HyperLink>
            </td>
            <td class="style12" >
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
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Panel ID="Panel4" runat="server" Height="342px">
                    <table class="style19">
                        <tr>
                            <td class="style23">
                                &nbsp;</td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="185px">
                                    <asp:ListItem>Select Asset</asp:ListItem>
                                    <asp:ListItem>Asset Register</asp:ListItem>
                                    <asp:ListItem>Contact Number</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style23">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                </td>
            <td class="style17" style="border: thick inset #996600">
                <asp:Panel ID="Panel1" runat="server" Height="375px" Width="542px">
                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                     <table width="100%">
       
        
        <tr>
            <td class="style26" >
                &nbsp;</td>
            <td class="style27" >
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
                         <tr>
                             <td class="style26">
                                 &nbsp;</td>
                             <td class="style27">
                                 &nbsp;</td>
                             <td class="style18">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style26">
                             </td>
                             <td class="style27">
                                 Issue Date</td>
                             <td class="style18">
                                 <asp:TextBox ID="TextBox1" runat="server" Width="170px"></asp:TextBox>
                             </td>
                             <td>
                                 (mm/dd/yyyy)<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                     runat="server" ControlToValidate="TextBox1" ErrorMessage="Issued Date is Empty" 
                                     ValidationGroup="a"></asp:RequiredFieldValidator>
                             </td>
                         </tr>
        <tr>
            <td class="style26">
                &nbsp;</td>
            <td class="style27">
                Asset Issue</td>
            <td class="style18">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="174px">
                    <asp:ListItem>Select Asset</asp:ListItem>
                    <asp:ListItem>Desktop</asp:ListItem>
                    <asp:ListItem>Laptop</asp:ListItem>
                    <asp:ListItem>Printer</asp:ListItem>
                    <asp:ListItem>Mobile</asp:ListItem>
                    <asp:ListItem>RSA</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Asset not Selected" 
                    InitialValue="Select Asset" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
                &nbsp;</td>
            <td class="style27">
                Serial No</td>
            <td class="style18">
                <asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Serial No is Empty" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
                &nbsp;</td>
            <td class="style27">
                Manufacturer</td>
            <td class="style18">
                <asp:TextBox ID="TextBox3" runat="server" Width="170px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Manufacturer is Empty!!" 
                    ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style18">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    ValidationGroup="a" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style26">
                &nbsp;</td>
            <td class="style27" >
                &nbsp;</td>
            <td class="style18">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
                    </asp:Panel>
                    <asp:Panel ID="Panel3" runat="server" Visible="False">
                    
                        <table class="style19">
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    Issue Date</td>
                                <td class="style20">
                                    <asp:TextBox ID="TextBox4" runat="server" Width="170px"></asp:TextBox>
                                </td>
                                <td>
                                    (mm/dd/yyyy)<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="TextBox4" ErrorMessage="Date is empty" 
                                        ValidationGroup="b" Display="Dynamic"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    Contact No</td>
                                <td class="style20">
                                    <asp:TextBox ID="TextBox5" runat="server" Width="170px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="TextBox5" ErrorMessage="Number is Empty" 
                                        ValidationGroup="b" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                        ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Invalid No." 
                                        MaximumValue="9999999999" MinimumValue="1000000000" ValidationGroup="b"></asp:RangeValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    Sim No</td>
                                <td class="style20">
                                    <asp:TextBox ID="TextBox6" runat="server" Width="170px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="TextBox6" ErrorMessage="Sim No is Empty" 
                                        ValidationGroup="b" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                        ControlToValidate="TextBox6" ErrorMessage="invalid sim!!" 
                                        Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    Max. Credit Limit</td>
                                <td class="style20">
                                    <asp:TextBox ID="TextBox7" runat="server" Width="170px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ControlToValidate="TextBox7" ErrorMessage="invalid amount!!" 
                                        Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    &nbsp;</td>
                                <td class="style20">
                                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" 
                                        ValidationGroup="b" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style28">
                                    &nbsp;</td>
                                <td class="style21">
                                    &nbsp;</td>
                                <td class="style20">
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    
                    </asp:Panel>
                    <br />
                </asp:Panel>
            </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

