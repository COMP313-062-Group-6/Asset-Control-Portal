<%@ Page Language="C#" MasterPageFile="~/LoginMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        height: 440px;
    }
    .style3
    {
        width: 165px;
    }
    .style4
    {
        width: 65px;
    }
    .style6
    {
        width: 8px;
    }
    .style10
    {
        width: 13px;
        height: 30px;
    }
    .style11
    {
        width: 65px;
        height: 30px;
    }
    .style12
    {
        width: 165px;
        height: 30px;
    }
    .style13
    {
        height: 30px;
    }
    .style14
    {
        width: 13px;
        height: 45px;
    }
    .style15
    {
        width: 65px;
        height: 26px;
    }
    .style16
    {
        width: 165px;
        height: 26px;
    }
    .style22
    {
        width: 13px;
        height: 33px;
    }
    .style23
    {
        width: 65px;
        height: 33px;
    }
    .style24
    {
        width: 165px;
        height: 33px;
    }
    .style25
    {
        height: 33px;
    }
    .style26
    {
        width: 13px;
    }
    .style29
    {
            width: 97px;
            height: 29px;
        }
        .style32
    {
    	width:67px;
    	height:23px;
    }
    .style33
    {
    	width:100%;
    	height:23px;
    }
        .style39
        {
            height: 19px;
        }
        .style40
        {
            width: 67px;
            height: 19px;
        }
        .auto-style1 {
            width: 69px;
            height: 23px;
        }
        .auto-style2 {
            width: 71px;
            height: 23px;
        }
        .auto-style3 {
            width: 1230px;
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style33">
                <tr style="color: #FFFFFF">
                    <td class="auto-style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WELCOME TO CENTENNIAL COLLEGE POWERED ASSET PORTAL . PLEASE LOGIN TO CONTINUE..</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="background-image: url('Images/12.jpg')">
    <tr>
        <td>
            <table>
                <tr>
                    <td class="style26" style="color: #FFFFFF">
                        </td>
                    <td class="style4" style="color: #FFFFFF">
                        Username</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="155px"></asp:TextBox>
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td  style="color: #FFFFFF">
                        </td>
                    <td  style="color: #FFFFFF">
                        Password</td>
                    <td class="style29">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="155px" 
                            TabIndex="1"></asp:TextBox>
                    </td>
                    <td class="style29">
                        </td>
                </tr>
                <tr>
                    <td class="style22">
                        </td>
                    <td class="style23">
                        </td>
                    <td class="style24">
                        <asp:CheckBox ID="CheckBox1" runat="server" style="color: #FFFFFF" 
                            Text="Remember Me" TabIndex="2" />
                    </td>
                    <td class="style25">
                        </td>
                </tr>
                <tr>
                    <td class="style40">
                        </td>
                    <td class="style39" >
                        </td>
                    <td class="style39" >
                        <asp:Button ID="Button1" runat="server" Text="Login" Width="61px" 
                            ValidationGroup="1" onclick="Button1_Click" TabIndex="3" />
                    &nbsp;</td>
                    <td class="style39">
                        </td>
                </tr>
                <tr>
                    <td class="style26">
                        </td>
                    <td class="style4">
                        </td>
                    <td class="style3">
                        <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
                    </td>
                    <td>
                        </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" Display="Dynamic" 
                            ErrorMessage="Username is Empty!!!" ValidationGroup="1"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Password Empty!!!" 
                            ValidationGroup="1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

