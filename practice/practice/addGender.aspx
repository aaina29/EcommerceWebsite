<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addGender.aspx.cs" Inherits="practice.addGender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <br />
            <br />
            <h2>Add Gender</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Gender"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="gender" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger"  ControlToValidate="gender" ErrorMessage="please enter gender" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddGender" CssClass="btn btn-success" runat="server" Text="Add Gender"  Width="108px" OnClick="btnAddGender_Click" />
                </div>
            </div>

            <div class="form-group">
                  <div  class="col-md-3"><asp:Label ID="lblmsg" CssClass="col-md-11 control-label1" runat="server"></asp:Label></div>
            </div>
            
        </div>

          <h1>Gender</h1>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">Gender</div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Gender</th>
                                 <th>Edit</th> 
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr>
                                <td><%# Eval("genderId") %></td>
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
