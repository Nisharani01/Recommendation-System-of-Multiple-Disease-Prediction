<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Profile.aspx.vb" Inherits="Profile" %>

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
               width: 52%;
               margin-left: 24%;
                margin-top: 4%;
                height: 264px;
           }
           .style3
           {
           }
           .style10
           {
               width: 290px;
           }
           .style11
           {
               width: 347px;
           }
           .style12
           {
               font-weight: bold;
               text-decoration: underline;
           }
       </style>
</head>
<body>
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
                                    <a class="logo" href="Default.aspx">Efficient Disease Prediction System </a>
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
    </div>

    <p>
    <table class="style1"  border="2" cellpadding="2" cellspacing="2" 
               style="border-style: double;">

                                        <tr>
                                            <td align="center" class="style3">
                                                <span class="style12">My Profile<br />
                                                </span>
                                                <br />
                                                <asp:DetailsView ID="dvProfile" runat="server" Height="190px" Width="330px" 
                                                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                                    CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                    <FooterStyle BackColor="#CCCC99" />
                                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                    <RowStyle BackColor="#F7F7DE" />
                                                </asp:DetailsView>
                                            </td>
                                        </tr> 
                                        

                                                                                                                  
                                    </table>
    </p>

    </form>
</body>
</html>
