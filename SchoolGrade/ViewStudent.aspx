<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewStudent.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 255px;
            text-align: right;
        }
        .style2
        {
            width: 362px;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h2 class="pagetitle">View Students</h2>
        
         <table style="width: 70%;" align="center">
            <tr align="center">
                <td class="auto-style5">
                    Student&nbsp; Class :</td>
                <td class="auto-style6">
                    &nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style5">
                    Student Section:</td>
                <td class="auto-style6">
                    &nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr align="center">
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="btn_show" runat="server" OnClick="btn_show_Click" Text="Show" />
                </td>
            </tr>
        </table>
    
        <table style="width: 70%;" align="center">
            <tr align="center">
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr align="center">
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                        ForeColor="Black" GridLines="Vertical">
                        <FooterStyle BackColor="#CCCCCC" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                </td>
            </tr>
            <tr align="center">
                <td>
                    &nbsp;</td>
            </tr>
            </table>
        
    </asp:Content>

