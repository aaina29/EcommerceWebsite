<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="practice.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>web mall</title>
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
        <div>

            <!--- navbar --->
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
                             <li class="active"><a href="WebForm1.aspx">Home</a></li>
                            <li><a href="profile.aspx">Profile</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Men</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Shirts</a></li>
                                    <li><a href="#">Jeans</a></li>
                                    <li><a href="#">Trousers</a></li>
                                    <li><a href="#">Track Pants</a></li>

                                     <li role="separator" class="divider"></li>                                     
                                     <li class="dropdown-header">Women</li>
                                     <li role="separator" class="divider"></li>
                                    <li><a href="#">Sweatshirts</a></li>
                                    <li><a href="#">Jeans And Jeggings</a></li>
                                    <li><a href="#">Kurtis</a></li>
                                    <li><a href="#">Tops</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <!---slider ---->
            <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/Background (1).png" alt="Los Angeles" style="width:100%; height:400px">
         <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">BUY NOW</a></p>
        </div>
      </div>

      <div class="item">
        <img src="images/Background.png" alt="Chicago" style="width:100%; height:400px">
         <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">BUY NOW</a></p>
        </div>
      </div>
    
      <div class="item">
        <img src="images/New Project (1).png" alt="New york" style="width:100%; height:400px">
         <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">BUY NOW</a></p>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

            
            <!-- CONTENT -->
            <hr />
            <div class="container center">
                <div class="row">
                    <div class="col-lg-4">
                        <img class="img-circle" src="images/616Iar76TLL._AC_UL320_.jpg" alt="thumb" width="140" height="140" />
                        <h2>WOMEN'S</h2>
                        <p>jjjjjjjjjjjjjjjjjjjjjjjjjj
                        </p>
                        <p><a class="btn btn-default" href="#" role="button">View More</a></p>
                    </div>

                    <div class="col-lg-4">
                        <img class="img-circle" src="images/71GjG5G4hML._AC_UL320_.jpg" alt="thumb" width="140" height="140" />
                        <h2>WOMEN'S</h2>
                        <p>jjjjjjjjjjjjjjjjjjjjjjjjjj</p>
                        <p><a class="btn btn-default" href="#" role="button">View More</a></p>
                    </div>

                    <div class="col-lg-4">
                        <img class="img-circle" src="images/81B6BSLsACL._AC_UL320_.jpg" alt="thumb" width="140" height="140" />
                        <h2>WOMEN'S</h2>
                        <p>jjjjjjjjjjjjjjjjjjjjjjjjjj</p>
                        <p><a class="btn btn-default" href="#" role="button">View More</a></p>
                    </div>

                     
                </div>
            </div>

            <!----footer---->
            <hr />
            <footer class="footer-pos">
                <div class="container">
                    <p class="pull-right"><a href="#">back to top</a></p>
                    <p><a href="adminLogin.aspx">Admin Login</a></p>
                </div>
            </footer>



        </div>
    </form>
    
   
   
</body>
</html>
