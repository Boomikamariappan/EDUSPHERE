<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Exam_Email.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

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

 <h2 class="pagetitle">Exam E-Mail Notification </h2>
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
                    Select Exam Date :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;
                </td>
                        </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    Select Class :</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                        </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button  ID="btnUpdate" runat="server" Text="Load" 
                        onclick="btnUpdate_Click" Height="32px" Width="66px" Font-Size="12pt" />
                &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
        
   
    
        <table style="width: 81%;" align="center">
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
            <tr align="center">
                <td>
                    <asp:Button  ID="btnSendMail" runat="server" Text="Send E-Mail" 
                        Height="32px" Width="205px" Font-Size="12pt" onclick="btnSendMail_Click" />
                </td>
            </tr>
            <tr align="center">
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="lbl_message" runat="server"></asp:Label>
                </td>
            </tr>
            </table>


</asp:Content>

