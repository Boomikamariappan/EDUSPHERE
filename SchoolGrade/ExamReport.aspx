<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ExamReport.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
        	font-size:large;
            text-align: right;
            width: 257px;
        }
       
        </style>
     <script type="text/javascript">
         
        function myFunc() {
            var flag = confirm('Roll Number Not Found Please Check Roll Number ?');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <h2 class="pagetitle">Exam Report </h2>

    <table style="width: 81%;" align="center">
            <tr>
                <td class="style1" style="text-align: right">
                     Class :</td>
                <td>
                    <asp:DropDownList ID="drp_sclass" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drp_sclass_SelectedIndexChanged" >
                    </asp:DropDownList></td>
                
            </tr>
            <tr>
                <td class="style1" style="text-align: right">
                     Section :</td>
                <td>
                    <asp:DropDownList ID="drp_ssection" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drp_ssection_SelectedIndexChanged" >
                    </asp:DropDownList></td>
                
            </tr>
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

