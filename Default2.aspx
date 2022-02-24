
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Mobile Shop</title><link href="meera.css" rel="stylesheet" type="text/css" /><link rel="stylesheet" type="text/css" href="engine1/style.css" media="screen" />
	<style type="text/css">a#vlb{display:none}
        .style1
        {
            width: 100%;
        }
        .cat{
            text-align:right;
            background-color:#5F98F3;
            align-items:inherit;
            height:40px;

        }
        .timer{
            padding-top:10px;
            padding-bottom:10px;

        }
        .auto-style1 {
            width: 134px;
            height: 130px;
        }
        .logo{
            border : 2px solid ;
            width : 995px;
            padding-bottom: 3px;
            margin:0 auto;
        
        }
        .auto-style2 {
            height: 47px;
        }
        .auto-style3 {
            height: 47px;
            width: 684px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            margin-left: 409px;
            height:30px;
        }
        .auto-style6 {
            height: 47px;
            width: 234px;
        }
        </style>
	<script type="text/javascript" src="engine1/jquery.js"></script>
    <script language="javascript" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="logo">

    <table style="width:995px; margin:0 auto; background-color:white">
        <%-- Header Start from Here --%>

        <tr style="width:995px; height:50px; border-color:#5f98f3; background-color:white">
            <td style="width:150px; text-align:right">
                <img src="Photo/logo1.jpg" class="auto-style1" />
            </td>
            <td style=" width:740px" align="center">


                <asp:Label ID="Label1" runat="server" Text="ONLINE MOBILE SHOPPING" Font-Bold="True" 
                    Font-Names="Copperplate Gothic Bold" ForeColor="RoyalBlue" Font-Size="40px"></asp:Label>
                <br /><b> </b>
            </td>
            
        </tr>
        </table></div>  <div id="menuu">
        
       
        <table class="style2" >
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="HOME" CssClass="btnmenu" 
                        CausesValidation="False" PostBackUrl="~/Default2.aspx" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="SIGN UP" CssClass="btnmenu" 
                        CausesValidation="False" PostBackUrl="~/Register.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="LOGIN" CssClass="btnmenu" 
                        CausesValidation="False" PostBackUrl="~/Login.aspx" />
                </td>
                
                <td>
                    <asp:Button ID="Button7" runat="server" Text="FEEDBACK" CssClass="btnmenu" 
                        CausesValidation="False" PostBackUrl="~/Feedback.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button8" runat="server" Text="CONTACT US" CssClass="btnmenu" 
                        CausesValidation="False" PostBackUrl="~/Contact us.aspx" />
                </td>
            </tr>
        </table>
 </div>
 

 
    <div id="second">
       
        <div class="timer">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <asp:Image ID="Image1" runat="server" BackColor="White" BorderColor="Gray" BorderStyle="Double" Height="270px" Width="995px" ImageAlign="Middle" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>

        <div class="cat">
            <table class="style3">
                 <tr>
                     <td class="auto-style2">
                          <asp:DropDownList ID="product_cat" runat="server" AutoPostBack="True"  BackColor="#5F98F3" Font-Bold="True" Font-Size="Medium" ForeColor="White"
                               OnSelectedIndexChanged="product_cat_SelectedIndexChanged" CssClass="auto-style5" Height="30px" Width="196px"></asp:DropDownList>
                     </td>
                     <td class="auto-style6">
                         <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="281px" CssClass="auto-style4"></asp:TextBox>
                     </td>
                     <td class="auto-style3">
                         <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" 
                                       Width="78px" CssClass="btn" CausesValidation="False" />

                     </td>
                   </tr>
               </table>
        </div>


    <div id="main">
        <div id="item">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
                RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    <table style="border: thin solid #369" width="199">
                        <tr>
                            <td height="30" 
                                style="color: #369; font-weight: bold; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #369;">
                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("IName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image4" runat="server" Height="135px" 
                                    ImageUrl='<%#Eval("Image") %>'  style="text-align: center" 
                                    Width="90px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #339966">
                                <asp:Button ID="Button9" runat="server" CommandArgument='<%#Eval("id") %>' 
                                    CssClass="btnmenu" Height="30px" Text="Buy Now !" Width="193px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>

        </div>
    </div> </div>
    
    </form>
</body>
</html>