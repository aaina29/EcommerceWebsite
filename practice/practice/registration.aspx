<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="practice.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width= device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/custom.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

   
</head>
<body>
    <form id="form1" runat="server">
        <!-------------- navbar------->
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

        </div>

        <!------sign-up form--------->
        <div class="center-page">
                     <h3 style="border-bottom: thin solid #008080; font-weight: 500; text-align: center;" >Sign Up Form<h3>
                
                    <label class="col-xs-11">First Name</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="txtfname" runat="server" Class="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">
                       </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="only characters" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtfname" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                 
                    </div>
                    
                    
                       

              
                   <label class="col-xs-11">Last Name</label>
                   <div class="col-xs-11">
                       <asp:TextBox ID="txtlname" runat="server" Class="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="only characters" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtlname" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                      </asp:RequiredFieldValidator>
                   </div>
                  
                    
                

                   <label class="col-xs-11">User Name</label>
                   <div class="col-xs-11">
                       <asp:TextBox ID="username" runat="server" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="username" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">
                      </asp:RequiredFieldValidator>
                   
                   </div>
                  
                     
              
                   <label class="col-xs-11">Email</label>
                   <div class="col-xs-11">
                       <asp:TextBox ID="email" runat="server" Class="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="not valid email-id" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 
                   </div>
                  
                     

                   <label class="col-xs-11">Phone Number</label>
                   <div class="col-xs-11">
                       <asp:TextBox ID="phoneno" runat="server" Class="form-control"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phoneno" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="not valid phone number" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="phoneno" ValidationExpression= "[0-9]{10}"></asp:RegularExpressionValidator>
                  
                   </div>
                  
                       

                   <label class="col-xs-11">Address</label>
                   <div class="col-xs-11">
                       <asp:TextBox ID="address" runat="server" TextMode="MultiLine" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="address" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">
                      </asp:RequiredFieldValidator>
                 
                   </div>
                   
                     
                   <label class="col-xs-11">Age</label>
                   <div class="col-xs-11">
                       <asp:TextBox ID="age" runat="server" Class="form-control"></asp:TextBox>
                       
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="age" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                       <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="age must be between 12 to 35" Display="Dynamic" ControlToValidate="age" SetFocusOnError="True" ForeColor="Red" MinimumValue="12" MaximumValue="35" Type="Integer"></asp:RangeValidator>
                  
                   </div>
                   

             
                  <label class="col-xs-11">Gender</label>
                  <div class="col-xs-11">
                         <asp:DropDownList ID="gender" runat="server" Class="form-control">
                               <asp:ListItem Value="0">Please Select</asp:ListItem>  
                               <asp:ListItem>male</asp:ListItem>  
                               <asp:ListItem>female</asp:ListItem>  
                               <asp:ListItem>other</asp:ListItem>  
                         </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="gender" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" InitialValue="0">
                      </asp:RequiredFieldValidator>
                 

                  </div>
                  
                    
                    <label class="col-xs-11">Password</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="password" runat="server"  TextMode="Password" Class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="password" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">
                       </asp:RequiredFieldValidator>
                    </div>
                    
                       
                 

                    <label class="col-xs-11">Confirm Password</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="confirmPass" runat="server" TextMode="Password" Class="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="confirmPass" ErrorMessage="!!" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">
                       </asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password not matched" Display="Dynamic" ControlToValidate="confirmPass" ForeColor="Red" SetFocusOnError="True" Operator="Equal" ControlToCompare="password"></asp:CompareValidator>
                   
                
                    </div>
                      
            <label class="col-xs-11"></label>

                   <div Class="col-xs-11">
                       <asp:Button ID="btnregistration" class="btn btn-success" runat="server" Text="Login" onclick="btnregistration_Click" Width="83px" />

                   </div>
                      
                  <div Class="col-xs-11"><asp:Label ID="lblmsg" runat="server"></asp:Label></div>
           </div>


         <!----footer---->
            <hr />
            <footer class="footer-pos">
                <div class="container">
                    <p class="pull-right"><a href="#">back to top</a></p>
                    <p><a href="adminLogin.aspx">Admin LOgin</a></p>
                </div>
            </footer>
    </form>
</body>
</html>
