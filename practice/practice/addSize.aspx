<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addSize.aspx.cs" Inherits="practice.addSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="form-horizontal">
            <br />
            <br />
            <h2>Add Size</h2>
            <hr />

              <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="size" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger"  ControlToValidate="size" ErrorMessage="please enter size" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>

               <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Brand"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="text-danger"  ControlToValidate="DropDownList2" ErrorMessage="please enter brand" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>

               <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="text-danger"  ControlToValidate="DropDownList3" ErrorMessage="please enter category" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>

              <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Sub Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger"  ControlToValidate="DropDownList1" ErrorMessage="please enter sub category" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>

               <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="text-danger"  ControlToValidate="DropDownList4" ErrorMessage="please enter gender" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>

            
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddSize" CssClass="btn btn-success" runat="server" Text="Add Size" Width="152px" OnClick="btnAddSize_Click"/>
                </div>
            </div>

            <div class="form-group">
                  <div  class="col-md-3"><asp:Label ID="lblmsg" CssClass="col-md-11 control-label1" runat="server"></asp:Label></div>
            </div>
            
        </div>

           <h1>Size</h1>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Sizes</div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Size</th>
                                <th>Brand</th>
                                <th>Category</th>
                                <th>Sub Category</th>
                                <th>Gender</th>
                                 <th>Edit</th> 
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                                <td><%# Eval("sizeId") %></td>
                                <td><%# Eval("sizeName") %></td>
                                <td><%# Eval("name") %></td>
                                <td><%# Eval("catName") %></td>
                                <td><%# Eval("subCatName") %></td>
                                <td><%# Eval("genderName") %></td>
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
