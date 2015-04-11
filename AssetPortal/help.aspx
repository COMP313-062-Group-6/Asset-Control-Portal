<%@ Page Language="C#" MasterPageFile="~/LoginMasterPage.master" AutoEventWireup="true" CodeFile="help.aspx.cs" Inherits="help" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        height: 440px;
    }
    .style3
    {
            width: 247px;
        }
    .style4
    {
            width: 333px;
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
    .style23
    {
        width: 333px;
        height: 33px;
    }
    .style24
    {
        width: 247px;
        height: 33px;
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
        .style41
        {
            height: 19px;
            width: 333px;
        }
        .style42
        {
            height: 29px;
        }
        .style43
        {
            height: 19px;
            width: 247px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style33">
                <tr style="color: #FFFFFF">
                    <td class="style32">
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                            ForeColor="White" 
                            NavigateUrl="http://all.alcatel-lucent.com/wps/portal/!ut/p/kcxml/04_Sj9SPykssy0xPLMnMz0vM0Y_QjzKLt4z38nbSL8h2VAQAiXfVBA!!">IT 
                        Services</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" 
                            ForeColor="White" 
                            NavigateUrl="http://all.alcatel-lucent.com/wps/portal/!ut/p/kcxml/04_Sj9SPykssy0xPLMnMz0vM0Y_QjzKLd4w39XHUL8h2VAQA-X0I1w!!">IT 
                        Support/Help Desk</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" 
                            ForeColor="White" 
                            NavigateUrl="http://all.alcatel-lucent.com/wps/portal/!ut/p/kcxml/04_Sj9SPykssy0xPLMnMz0vM0Y_QjzKLt4x38XTRL8h2VAQAj5eZUA!!">Program 
                        &amp; Project</asp:HyperLink>
                    </td>
                    <td >
                        <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" 
                            ForeColor="White" 
                            NavigateUrl="http://all.alcatel-lucent.com/wps/portal/!ut/p/kcxml/04_Sj9SPykssy0xPLMnMz0vM0Y_QjzKLt4x3tXDUL8h2VAQAPd3hhg!!">Information 
                        Security</asp:HyperLink>
                    </td>
                    <td >
                        <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="False" 
                            NavigateUrl="http://all.alcatel-lucent.com/wps/portal/!ut/p/kcxml/04_Sj9SPykssy0xPLMnMz0vM0Y_QjzKLt4wP8vHQL8h2VAQA_0C3zw!!" 
                            style="color: #FFFFFF">IT Employee Sources</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="False" 
                            ForeColor="White" NavigateUrl="http://itoutage.web.alcatel-lucent.com">IT 
                        Outage Portal</asp:HyperLink>
                    </td>
                </tr>
            </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="background-image: url('Images/12.jpg')">
    <tr>
        <td>
            <table>
                <tr>
                    <td class="style4" style="color: #FFFFFF">
                        UPI Code</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="155px" 
                            style="margin-left: 0px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td  style="color: #FFFFFF" class="style4">
                        New
                        Password</td>
                    <td class="style42">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="155px" 
                            TabIndex="1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style23">
                        </td>
                    <td class="style24">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style41" >
                        </td>
                    <td class="style43" >
                        <asp:Button ID="Button1" runat="server" Text="Save" Width="61px" 
                            ValidationGroup="1" onclick="Button1_Click" TabIndex="3" />
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        </td>
                    <td class="style3">
                        <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" Display="Dynamic" 
                            ErrorMessage="UPI Code is Empty!!!" ValidationGroup="1"></asp:RequiredFieldValidator>
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


