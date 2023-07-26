<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="admin.aspx.vb" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 45%;
            margin-left:5%;
            margin-right:-10%;
        }
        .style2
        {
            width: 42px;
        }
        .style3
        {
             height: 100%;
        }
        .style4
        {
            width: 42px;
        }
        .style5
        {
            width: 60%;
        }
        .style6
        {
            height: 100%;
        }
        .newStyle1 {
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p >
        <br />
        <table class="style1"  border="2" cellpadding="2" cellspacing="2" style="border-style: double;width:90%" >

                                        <tr>
                                            <td align="right" class="style3">
                                                &nbsp;</td>
                                            <td align="center" class="style2"> &nbsp;</td>
                                            <td style="width:60%">
                                                &nbsp;</td>
                                        </tr> 
                                        

                                                                                <tr>
                                            <td align="right" class="style6">
                                                Search Hospital</td>
                                            <td align="center" class="style4"> : 
                                            </td>
                                            <td class="style5"><asp:TextBox ID="txtSearch" runat="server" Width="259px"></asp:TextBox>
                                                <br />
                                                <br />
                                                <asp:Button ID="btnSearch" runat="server" Text="Search" />
                                                &nbsp;&nbsp;&nbsp;
                                                <asp:CheckBox ID="chkView" runat="server" AutoPostBack="True" Font-Bold="True" 
                                                    Text="View All" />
                                                                                    </td>
                                        </tr>


                                                                                <tr>
                                            <td align="right" class="style6">
                                                &nbsp;</td>
                                            <td align="center" class="style4"> &nbsp;</td>
                                            <td class="style5" align="left">
                                                <asp:Label ID="lblStatus" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label>
                                                                                    </td>
                                        </tr>

                                                                                                                        <tr>

                                            <td align="center"  colspan="3">
                                         
                    <asp:GridView ID="gvDisease" runat="server" BackColor="White" 
                                                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                                    Font-Size="Small" AllowPaging="True" CssClass="newStyle1">
                                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                                    <RowStyle ForeColor="#330099" BackColor="White" />
                                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                                </asp:GridView>                                      
                                            </td>
                                        </tr>

 
                                  
                                    </table>
         </p><p style="text-align:center; margin-left:5%;" >
                                                
    </p>
</asp:Content>

