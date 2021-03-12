<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="prodShow.aspx.cs" Inherits="practice.prodShow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h3>welcome to view all products</h3>

    <div class="row" style =" padding-top: 50px">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                 <div class="col-sm-3 col-md-3">
                     <a href="prodView.aspx?PID=<%# Eval("PID")%>" style="text-decoration:none;">
            <div class="thumbnail">
                <img src="images/prodImages/<%# Eval("PID")%>/<%# Eval("imageName")%> <%#("extension") %>" alt="<%# Eval("imageName")%>" />
                <div class="caption">
                    <div class="prodbrand"><%# Eval("brandName")%></div>
                    <div class="prodname"><%# Eval("productName")%></div>
                    <div class="prodprice"><span class="prodorigprice"> <%# Eval("productPrice") %> </span> <%# Eval("productSell")%> <span class="prodpricedisc"> (<%# Eval("discAmount") %>)</span></div>
                </div>
            </div>
                     </a>
        </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
