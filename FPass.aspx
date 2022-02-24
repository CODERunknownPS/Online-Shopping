<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="FPass.aspx.cs" Inherits="FPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">

    .style4
    {
        height: 9px;
    }
        .style6
        {
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Forgot Password Form</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <table align="center" class="style2" 
                    style="border: thin solid #008000; width: 273px;">
                    <tr>
                        <td class="tblhead" colspan="2">
                            Enter your detail</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Email :
                        </td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="txt" Width="140px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="Correct Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="left" valign="top">
                            <table class="style5">
                                <tr>
                                    <td>
                                        <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="Submit" 
                                            onclick="btnlogin_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                        </td>
                        <td align="left" class="style3">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center; color: Green">
           <asp:Label ID="lblMessage" runat="server" ForeColor="#339933"></asp:Label>            </td>
        </tr>
        <tr>
            <td style="text-align: center; color: Green">
            Dont have Username and Password
              <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registration.aspx">Register Now !!</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>