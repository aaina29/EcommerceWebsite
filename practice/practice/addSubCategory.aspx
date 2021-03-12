<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addSubCategory.aspx.cs" Inherits="practice.addSubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <br />
            <br />
            <h2>Add Sub Category</h2>
            <hr />

              <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Main Category Id"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger"  ControlToValidate="DropDownList1" ErrorMessage="please enter main category id" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Sub Category Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="subcategory" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger"  ControlToValidate="subcategory" ErrorMessage="please enter sub category" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddSubCat" CssClass="btn btn-success" runat="server" Text="Add Sub Category" Width="152px" OnClick="btnAddSubCat_Click"/>
                </div>
            </div>

            <div class="form-group">
                  <div  class="col-md-3"><asp:Label ID="lblmsg" CssClass="col-md-11 control-label1" runat="server"></asp:Label></div>
            </div>
            
        </div>

          <h1>Sub Categories</h1>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Sub Categories</div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Sub Category</th>
                                <th>Main Category</th>
                                 <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                                <td><%# Eval("subCatId") %></td>
                                <td><%# Eval("subCatName") %></td>
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
