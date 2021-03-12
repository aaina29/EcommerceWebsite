<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addBrand.aspx.cs" Inherits="practice.addBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <br />
            <br />
            <h2>Add Brand</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Brand Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="brand" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger"  ControlToValidate="brand" ErrorMessage="please enter brand name" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddBrand" CssClass="btn btn-success" runat="server" Text="Add Brand" OnClick="btnAddBrand_Click" Width="95px" />
                </div>
            </div>

            <div class="form-group">
                  <div  class="col-md-3"><asp:Label ID="lblmsg" CssClass="col-md-11 control-label1" runat="server"></asp:Label></div>
            </div>
            
        </div>

        <h1>Brands</h1>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Brands</div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Brands</th>
                                 <th>Edit</th> 
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                                <td><%# Eval("brandId") %></td>
                                <td><%# Eval("name") %></td>
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
