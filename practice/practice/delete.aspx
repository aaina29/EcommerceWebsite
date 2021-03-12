<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="practice.delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/custom.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="center-page">
                     <h3 style="border-bottom: thin solid #008080; font-weight: 500; text-align: center;" >Delete Form<h3>

                     <label class="col-xs-11">User Name</label>
                   <div class="col-xs-11">
                       <asp:TextBox ID="username" runat="server" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="username" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">
                      </asp:RequiredFieldValidator>
                   
                   </div>
                  
                   
                    <label class="col-xs-11">Password</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="password" runat="server"  TextMode="Password" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="password" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">
                       </asp:RequiredFieldValidator>
                    </div>
               
                     <label class="col-xs-11"></label>

                   <div Class="col-xs-11">
                       <asp:Button ID="btndelete" class="btn btn-success" runat="server" Text="Delete" onclick="btndel_Click" Width="83px" />

                   </div>
               
                   <div Class="col-xs-11"><asp:Label ID="lblmsg" runat="server"></asp:Label></div>
           

        </div>
    </form>
</body>
</html>
