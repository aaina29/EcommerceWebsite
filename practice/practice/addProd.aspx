<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addProd.aspx.cs" Inherits="practice.addProd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <br />
            <br />
            
            <h2>Add Product </h2>
            <hr />
            
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Product name" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="prodname" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Price" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="price" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Selling Price" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="sellingprice" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Brand" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="form-control" ></asp:DropDownList>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Category" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList2" runat="server"  CssClass="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label6" runat="server" Text="Sub Category" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList3" runat="server"  CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" ></asp:DropDownList>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label19" runat="server" Text="Gender" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="DropDownList4" runat="server"  CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" ></asp:DropDownList>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label7" runat="server" Text="Size" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="form-control" RepeatDirection="Horizontal" ></asp:CheckBoxList>
                </div>
            </div>

              <div class="form-group">
                <asp:Label ID="Label20" runat="server" Text="Quantity" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="quantity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label8" runat="server" Text="Description" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="description" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label9" runat="server" Text="Product Details" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="proddetails" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label10" runat="server" Text="Materials and Care" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label11" runat="server" Text="Upload Image" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUpload1" CssClass="form-control"  runat="server" />
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label12" runat="server" Text="Upload Image" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUpload2" CssClass="form-control"  runat="server" />
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label13" runat="server" Text="Upload Image" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUpload3" CssClass="form-control"  runat="server" />
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label14" runat="server" Text="Upload Image" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUpload4" CssClass="form-control"  runat="server" />
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label15" runat="server" Text="Upload Image" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUpload5" CssClass="form-control"  runat="server" />
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label16" runat="server" Text="Free Delivery" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </div>
            </div>

              <div class="form-group">
                <asp:Label ID="Label17" runat="server" Text="30 Days Return" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="CheckBox2" runat="server" />
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label18" runat="server" Text="Cash On Delivery" cssClass="col-md-2 control-label"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="CheckBox3" runat="server" />
                </div>
            </div>

             <div class="form-group">
                <div class="col-md-2"></div>
                 <div class="col-md-6">
                     <asp:Button ID="btnadd" CssClass="btn btn-success" runat="server" Text="Add Product" OnClick="btnadd_Click" />
                 </div>
            </div>

             <div class="form-group">
                <div class="col-md-2"></div>
                 <div class="col-md-6">
                     <asp:Label ID="lblmsg" runat="server"></asp:Label>
                 </div>
            </div>
        </div>

    </div>
</asp:Content>
