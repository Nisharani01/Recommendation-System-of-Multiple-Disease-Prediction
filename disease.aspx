<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="disease.aspx.vb" Inherits="disease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 56%;
            margin-left:18%;
        }
        .style5
        {
            width: 50%;
            
        }
        .style6
    {
            width: 29%;
         
        }
        .style7
        {
            width: 50%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <br />
        <table class="style1"  border="2" cellpadding="2" cellspacing="2" 
               style="border-style: double;">

                                        <tr>
                                            <td align="left" class="style6">
                                                
                                          <b>Disease Database Pre-Processing</b><o:p></o:p><b></span></b>
                                            </td>
                                            <td align="right" class="style7">
                                                &nbsp;</td>
                                        </tr> 
                                        

                                                                                <tr>
                                            <td align="right" class="style6">
                                                &nbsp;</td>
                                            <td class="style5">
                                                <asp:Label ID="lblStatus1" runat="server" Font-Size="Small" ForeColor="#006600"></asp:Label>
                                                                                    </td>
                                        </tr>


                                                                                <tr>
                                            <td align="right" class="style6">
                                                &nbsp;</td>
                                            <td class="style5">&nbsp;</td>
                                        </tr>


                                                                                <tr>
                                            <td align="right" class="style6">
                                                &nbsp;</td>
                                            <td class="style5">
                                                <asp:Button ID="btnUpload" runat="server" Text="Uploading New Dataset" />
&nbsp;<asp:Button ID="btnRemove" runat="server" Text="Truncate DB" />
                                                                                    </td>
                                        </tr>


                                                                                <tr>
                                            <td align="right" class="style6">
                                                &nbsp;</td>
                                            <td class="style5">
                                                &nbsp;</td>
                                        </tr>
                                                    <tr>
                                            <td align="right" class="style6">
                                                Search Disease&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; </td>
                                        
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
                                            <td align="right">
                                                 &nbsp;</td>
                                            <td  align="left">
                                                
                                                <asp:Label ID="lblStatus" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label>
                                                                                    </td>
                                        </tr>
   <tr>
                                            <td  colspan="2" align="center">
                                                     <asp:GridView ID="gvDisease" runat="server" BackColor="White"  BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" AllowPaging="True" GridLines="Vertical" Width="400px" PageSize="20">
                                                         <AlternatingRowStyle BackColor="White" />
                                                    <FooterStyle BackColor="#CCCC99" />
                                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                    <RowStyle BackColor="#F7F7DE" />
                                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                                </asp:GridView>
                                                
                                                </td>
                                        </tr>


                                  
                                    </table>
    </p>
</asp:Content>

