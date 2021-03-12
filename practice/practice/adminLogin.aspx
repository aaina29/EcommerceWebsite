<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="practice.adminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table align="center" class="style1" style="border: thin solid #008080">
                 <tr>
                    <td colspan="3" 
                    style="border-bottom: thin solid #008080; font-weight: 700; text-align: center;">
                    Admin Login Form</td>
                 </tr>
                <tr><td class="style5">&nbsp;</td>
                    <td class="style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                 <tr>
                    <td class="style6">Admin Id</td>
                    <td class="style4"><asp:TextBox ID="adminid" runat="server" Width="120px"></asp:TextBox></td>
                    <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="adminid" ErrorMessage="enter your id" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">
                       </asp:RequiredFieldValidator>
                    </td>
                </tr>

                
                 <tr>
                    <td class="style6">Password</td>
                    <td class="style4"><asp:TextBox ID="password" runat="server" Width="120px" TextMode="Password"></asp:TextBox></td>
                    <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="enter your password" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">
                       </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                   <td class="auto-style1"></td>
                   <td  colspan="3" class="auto-style1"><asp:Button ID="btnlogin" runat="server" Text="Login" onclick="btnlogin_Click" Width="51px" style="margin-left: 45px"/></td>
                   <td class="auto-style1"></td>
                </tr>
                 
                 <tr>
                   <td class="style5">&nbsp;</td>
                   <td class="style2" colspan="2"><asp:Label ID="lblmsg" runat="server"></asp:Label></td>
                </tr>

              <tr>
                 <td align="center" colspan="3">  
                      <span>not registered</span><asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="~/registration.aspx">Click here</asp:HyperLink><span>to register</span>
                 </td>
              </tr>
          </table>
        </div>
    </form>
</body>
</html>
