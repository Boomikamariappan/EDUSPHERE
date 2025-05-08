<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateDelete_Student.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
        	font-size:large;
            text-align: right;
            width: 257px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <h2 class="pagetitle">Student - Edit / Update&nbsp; Entry</h2>
    <table style="width: 81%;" align="center">
            <tr>
                <td class="style1" style="text-align: right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    Register Number :</td>
                <td>
                    <asp:TextBox ID="txt_regno" runat="server" Width="200px" Font-Size="15pt"></asp:TextBox>
                    <asp:Button  ID="btn_edit" runat="server" Text="Edit" 
                          Height="32px" Width="125px" Font-Size="15pt" OnClick="btn_edit_Click" />
                </td>
                <td>
                    &nbsp;
                </td>
                        </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    Name :</td>
                <td>
                    <asp:TextBox ID="txt_name" runat="server" Width="400px" Font-Size="15pt"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    Class :</td>
                <td>
                    <asp:TextBox ID="txt_class" runat="server" Width="100px" Font-Size="15pt"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    Section :</td>
                <td>
                    <asp:TextBox ID="txt_section" runat="server" Width="50px" Font-Size="15pt"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;Mail Id:</td>
                <td>
                    <asp:TextBox ID="txt_mailid" runat="server" Width="364px" Font-Size="15pt"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Mobile:</td>
                <td>
                    <asp:TextBox ID="txt_mobile" runat="server" Width="200px" Font-Size="15pt"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button  ID="btn_Update" runat="server" Text="Update" 
                        onclick="btnUpdate_Click" Height="42px" Width="125px" Font-Size="15pt" />
                &nbsp;
                    <asp:Button  ID="btn_delete" runat="server" Text="Delete" 
                        Height="42px" Width="125px" Font-Size="15pt" OnClick="btn_delete_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblmsg" runat="server" Font-Size="12pt"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
   
    
        <table style="width: 70%;" align="center">
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
            </table>


</asp:Content>

