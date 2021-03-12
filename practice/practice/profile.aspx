<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="practice.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 52px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="16px" Width="315px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" ForeColor="#333333" />
            <ItemTemplate>
                <table>
                    <tr>
                        <td>First Name</td>
                        <td class="auto-style1">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("firstName") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                   </tr>
                    <tr>
                        <td>Last Name</td>
                        <td class="auto-style1">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("lastName") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                   </tr>
                     <tr>
                        <td>Email</td>
                        <td class="auto-style1">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                   </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td class="auto-style1">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("phoneNo") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                   </tr>
                    <tr>
                        <td>Address</td>
                        <td class="auto-style1">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                   </tr>
                    <tr>
                        <td>Age</td>
                        <td class="auto-style1">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                   </tr>
                     <tr>
                        <td>Gender</td>
                        <td class="auto-style1">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                   </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="update" OnClick="update_Click" Width="73px" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="delete" OnClick="delete_Click" Width="70px" />
    </form>
</body>
</html>
