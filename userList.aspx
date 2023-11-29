<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userList.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    User List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="row">
            <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <div class="card p-4" style="margin-top:120px;margin-bottom:100px;">
                                 <p>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
                                <br />
                                <asp:GridView CssClass="table table-striped bg-white" ID="GvYear" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="name" HeaderText="User Name" />
                                        <asp:BoundField DataField="email_id" HeaderText="Email Id" />
                                    </Columns>
                                 </asp:GridView>
                                  <p>
                                    Add Courses: <a class="text-primary" href="./admin.aspx">Click Here.</a>
                                </p>
                            </div>
                        </div>
            <div class="col-md-4"></div>

        </div>
</asp:Content>

