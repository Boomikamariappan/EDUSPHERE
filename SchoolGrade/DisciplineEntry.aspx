<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DisciplineEntry.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

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

 <h2 class="pagetitle">Discipline Entry</h2>
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
                    Roll Number :</td>
                <td>
                    <asp:TextBox ID="txt_regno" runat="server" Width="162px" Font-Size="12pt"></asp:TextBox>
                    <asp:Button ID="btn_load" runat="server" OnClick="btn_load_Click" Text="Load" Font-Size="12pt" />
                </td>
                <td>
                    &nbsp;
                </td>
                        </tr>
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
                    Student Name :</td>
                <td>
                    <asp:Label ID="lbl_name" runat="server" Font-Size="13pt"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    Date of Enquiry :</td>
                <td>
                    <asp:TextBox ID="txt_dt" runat="server" Width="170px" Font-Size="13pt"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;Misbehavior:</td>
                <td>
                    <asp:TextBox ID="txt_mis" runat="server" Width="364px" Height="103px" TextMode="MultiLine" Font-Size="12pt"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Action Taken:</td>
                <td>
                    <asp:TextBox ID="txt_action" runat="server" Height="83px" TextMode="MultiLine" 
                        Width="361px" Font-Size="12pt"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button  ID="btnUpdate" runat="server" Text="Update" 
                        onclick="btnUpdate_Click" Height="38px" Width="103px" Font-Size="13pt" />
                &nbsp;
                    <asp:Button  ID="btn_delete" runat="server" Text="Delete" 
                          Height="38px" Width="103px" Font-Size="13pt" OnClick="btn_delete_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
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

