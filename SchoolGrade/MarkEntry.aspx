<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MarkEntry.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
        	font-size:large;
            text-align: right;
            width: 257px;
        }
       
        .auto-style5 {
            font-size: large;
            text-align: right;
            width: 257px;
            height: 35px;
        }
        .auto-style6 {
            height: 35px;
        }
       
    </style>
     <script type="text/javascript">
         
        function myFunc() {
            var flag = confirm('Roll Number Not Found Please Check Roll Number ?');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <h2 class="pagetitle">Mark Entry</h2>

    <table style="width: 81%;" align="center">
            <tr>
                <td class="style1" style="text-align: right">
                     Test :</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList></td>
                
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                     Subject :</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList></td>
                
            </tr>
         <tr>
                <td class="style1" style="text-align: right">
                     Date of Exam:</td>
                <td>
                     <asp:TextBox ID="txt_examdate" runat="server"></asp:TextBox>
                </td>
                
            </tr>
    </table>

    <hr />
     
    <table style="width: 81%;" align="center">
            <tr>
                <td class="auto-style5" style="text-align: right">
                    Roll Number :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txt_rollno" runat="server" Width="139px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;
                </td>
                        </tr>
            <tr>
                <td class="style1" style="text-align: right">
                    Mark :</td>
                <td>
                    <asp:TextBox ID="txt_mark" runat="server" Width="69px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                   
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button  ID="btnUpdate" runat="server" Text="Update" 
                        onclick="btnUpdate_Click" Height="32px" Width="107px" Font-Size="12pt" />
                &nbsp;</td>
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

