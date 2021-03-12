<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="prodView.aspx.cs" Inherits="practice.prodView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />

    <div style ="padding-top: 50px">
        <div class="col-md-5">
            <div style="max-width:480px" class="thumbnail">
                <%-- pro image slider ---%>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
    <div class="item active">
      <img src="images/prodImages/<%# Eval("prodId")%>/<%# Eval("name")%> <%#("extension") %>" alt="<%# Eval("name")%>">
      <div class="carousel-caption">
        01
      </div>
    </div>
        </ItemTemplate>
  </asp:Repeater>
    <div class="item">
      <img src="images/prodImages/22/Casual Full Sleeve Floral Print Women Black Top02.jpeg" alt="...">
      <div class="carousel-caption">
        02
      </div>
    </div>
    <div class="item">
      <img src="images/prodImages/22/Casual Full Sleeve Floral Print Women Black Top03.jpeg" alt="...">
      <div class="carousel-caption">
        03
      </div>
    </div>
    <div class="item">
      <img src="images/prodImages/22/Casual Full Sleeve Floral Print Women Black Top04.jpeg" alt="...">
      <div class="carousel-caption">
        04
      </div>
    </div>
    <div class="item">
      <img src="images/prodImages/22/Casual Full Sleeve Floral Print Women Black Top05.jpeg" alt="...">
      <div class="carousel-caption">
        05
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                <%-- pro image slider ending ---%>

            </div>
        </div>

        <div class="col-md-5">
             <div class="divDet1">
                 <h1 class="prodNameView"></h1>
                 <span class="prodOrigPriceView"></span><span class="prodDiscView"></span>
                 <p class="prodPriceView"></p>
             </div>

            <div class="divDet1">
                <h5 class="h5size"></h5>
                <div>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="S" Text="S"></asp:ListItem>
                        <asp:ListItem Value="M" Text="M"></asp:ListItem>
                        <asp:ListItem Value="L" Text="L"></asp:ListItem>
                        <asp:ListItem Value="XL" Text="XL"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>

             <div class="divDet1">
                 <asp:Button ID="btnAddToCart" CssClass="mainButton" runat="server" Text="Button" />
            </div>

             <div class="divDet1">
                 <h5 class="h5size">Description</h5>
                 <p></p>

                 <h5 class="h5size">Product Details</h5>
                 <p></p>

                 <h5 class="h5size">Material & Care </h5>
                 <p></p>
            </div>

            <div class="h5size">
                <p>Free Delivery</p>
                <p>30 days return</p>
                <p>Cash On Delivery</p>
            </div>
        </div>
    </div>
</asp:Content>
