 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="practice.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <link href="css/custom.css" rel="stylesheet" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="WebForm1.aspx"><span><img src="images/download.png" alt="webMall" height="30"/></span>Web Mall</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                             <li><a href="WebForm1.aspx">Home</a></li>
                
                        </ul>
                    </div>
                </div>
            </div>

            <!------login table ---->

              <div class="center-page">
                     <h3 style="border-bottom: thin solid #008080; font-weight: 500; text-align: center;" >Login Form<h3>

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
                       <asp:Button ID="btnlogin" class="btn btn-success" runat="server" Text="login" onclick="btnlogin_Click" Width="83px" />
                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">Sign Up</asp:HyperLink>
                   </div>
               
                   <div Class="col-xs-11"><asp:Label ID="lblmsg" runat="server"></asp:Label></div>
                 

                   

        </div>
              <!----footer---->
            <hr />
            <footer class="footer-pos2">
                <div class="container">
                    <p class="pull-right"><a href="#">back to top</a></p>
                    <p><a href="adminLogin.aspx">Admin Login</a></p>
                </div>
            </footer>

    </form>
    <p>
&nbsp;</p>
</body>
</html>
