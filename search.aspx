<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

 




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>Efficient Disease Prediction System</title>
        <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/style1.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen" />
    <script src="js/jquery-1.6.2.min.js" type="text/javascript"></script>
    <script src="js/jquery.galleriffic.js" type="text/javascript"></script>
    <script src="js/jquery.opacityrollover.js" type="text/javascript"></script>   
       <style type="text/css">
           .style1
           {
               width: 82%;
               margin-left: 15%;
                margin-top: 4%;
                height: 264px;
           }
           .style2
           {
           }
           .style3
           {
               width: 403px;
           }
           .style4
           {
               width: 227px;
               height: 15px;
           }
           .style5
           {
               width: 403px;
               height: 15px;
           }
           .style6
           {
           }
           .style7
           {
               width: 227px;
               height: 29px;
           }
           .style8
           {
               width: 403px;
               height: 29px;
           }
           .style10
           {
               width: 290px;
           }
           .style11
           {
               width: 347px;
           }
       </style>
</head>
<body >
    <form id="form1" runat="server">
    <div>
        <div style="border-width: thin; border-style: groove; height: 151px;">
     <header>
                <div class="row-2">
                    <div class="main">
                        <div class="container_12">
                            <div class="grid_9">
                                <h1>
                                <center>
                             
                                </center>
                                </h1>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                </div>
                </header>

    <div style="height: 24px; width: 1151px;">
    <table style="margin-left :50%">
    <tr>
    <td class="style11">
     <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Height="16px" Width="257px" 
            >
            <Items>
                <asp:MenuItem Text="My Profile" Value="My Profile" NavigateUrl="~/Profile.aspx"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/search.aspx" Text="Search Disease" 
                    Value="Search Disease"></asp:MenuItem>
            </Items>
        </asp:Menu>
    </td>
    <td class="style10">
     <asp:Label ID="lblUser" runat="server" ForeColor="#CC0099"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnLogout" runat="server" 
            ForeColor="#3366FF">Logout</asp:LinkButton>
    </td>
    </tr>
    </table>
       
    
       
    
    </div>
        </div>

<div>
   <center>
 <img src="images/disease-prediction.png" height="300px" width="90%" />
   </center>
    </div>


    <table class="style1" bgcolor="White" 
        style="border-style: groove; border-width: thin">
        <tr>
            <td class="style2" style="color: #800080; text-align: right;">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
              </td>
            <td class="style3">
              </td>
            <td>
                List of Symptom</td>
        </tr>
        <tr>
            <td class="style2" style="color: #800080; text-align: center;">
                Select the Symptom</td>
            <td class="style3">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                     <asp:DropDownList ID="ddlSymptom" runat="server" Width="305px" 
                    AutoPostBack="True" Height="29px" style="margin-bottom: 0px">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="btnAdd" runat="server" Text="Add Symptom" Width="99px" />
                </ContentTemplate>
                </asp:UpdatePanel>
           
            </td>
            <td align="right">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                <asp:ListBox ID="lstSymptom" runat="server" Height="111px" Width="344px">
                </asp:ListBox>
                </ContentTemplate></asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td class="style2" style="color: #800080; text-align: right;">
              </td>
            <td class="style3">
              </td>
            <td align="right">
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:Button ID="btnRemoveSymp" runat="server" Text="Remove Symptom" />
                </ContentTemplate></asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td class="style2" style="color: #800080; text-align: right;">
              </td>
            <td class="style3">
              &nbsp;<asp:Button ID="btnPredict" runat="server" Text="Predict Disease" />
              </td>
            <td>
              </td>
        </tr>
        <tr>
            <td class="style4" style="color: #800080; text-align: right;">
                </td>
            <td class="style5">
                </td>
            <td class="style6" rowspan="3">
                <asp:GridView ID="gvDisease" runat="server" AllowPaging="True" CellPadding="4" 
                    Font-Size="Small" ForeColor="Black" GridLines="Vertical" PageSize="4" 
                    Width="335px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
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
        <tr>
            <td class="style7" style="color: #800080; text-align: right;">
                <asp:Label ID="lblDisease0" runat="server" ForeColor="#993366">Disease Name</asp:Label>
              </td>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblDisease" runat="server" ForeColor="#003399"></asp:Label>
              </td>
        </tr>
        <tr>
            <td class="style2" style="color: #800080; text-align: center;" colspan="2">
                <asp:Label ID="lblDisease1" runat="server" ForeColor="#990033">Treatment Available Hospital</asp:Label>
              </td>
        </tr>
        <tr>
            <td class="style2" colspan="3" style="color: #800080; text-align: center;">
                
        <asp:GridView ID="gvHospital" runat="server" CellPadding="4" 
            Height="100%" Width="98%" ForeColor="#333333" GridLines="None" 
            AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle ForeColor="#333333" BackColor="#FFFBD6" BorderStyle="Groove" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

            </td>
        </tr>
    </table>
    <p style="margin-left: 1%; text-align:center; width: 93%; height: 206px;" >



    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </p>

    </div>
     
    </form>
</body>
</html>
