<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addCategory.aspx.cs" Inherits="practice.addCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="form-horizontal">
            <br />
            <br />
            <h2>Add Category</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Category Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="category" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger"  ControlToValidate="category" ErrorMessage="please enter category" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddCat" CssClass="btn btn-success" runat="server" Text="Add Category" Width="134px" OnClick="btnAddCat_Click" />
                </div>
            </div>

            <div class="form-group">
                  <div  class="col-md-3"><asp:Label ID="lblmsg" CssClass="col-md-11 control-label1" runat="server"></asp:Label></div>
            </div>
            
        </div>

         <h1>Categories</h1>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Categories</div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Categories</th>
                                  <th>Edit</th> 
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                                <td><%# Eval("categoryId") %></td>
                                <td><%# Eval("catName") %></td>
                                <td>Edit</td> 
                     </tr>
                </ItemTemplate>
                <FooterTemplate>
                     </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

        </div>
    </div>
</asp:Content>
