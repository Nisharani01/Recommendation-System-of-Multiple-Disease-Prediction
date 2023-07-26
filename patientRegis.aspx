<%@ Page Language="VB" AutoEventWireup="false" CodeFile="patientRegis.aspx.vb" Inherits="patientRegis" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Efficient Disease Prediction System</title>
        <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen"> 
    <script src="js/jquery-1.6.2.min.js" type="text/javascript"></script>
    <script src="js/jquery.galleriffic.js" type="text/javascript"></script>
    <script src="js/jquery.opacityrollover.js" type="text/javascript"></script>      

    <style type="text/css">
        .style2
        {
            width: 5%;
        }
        .style3
        {
            width: 25%;
        }
    </style>

</head>
<body>
    <header>
    	<div class="row-1">
        	<div class="main">
            	<div class="container_12">
                	<div class="grid_12">
                    	<nav>
                            <ul class="menu">
                                <li><a href="Default.aspx">Home</a></li>
                                <%--<li><a  href="frmDocRegister.aspx">New Doctor?</a></li>--%>                              
                                <li><a  href="adminLogin.aspx">Admin Login</a></li>                                
                                <li><a class="active"  href="patientRegis.aspx">New Patient?</a></li>                              
                                <li><a  href="patientLogin.aspx">Patient Login</a></li>
                                
                                
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="row-2">
        	<div class="main">
            	<div class="container_12">
                	<div class="grid_9">
                    	<h1>
                            <center><a class="logo" href="Default.aspx">Efficient Disease Prediction System </a></center> 
                        </h1>
                    </div>   
                </div>
            </div>
        </div>
    <center><asp:Image ID="Image1" runat="server" ImageUrl="~/images/PatReg.jpg" Height="189px" Width="751px" /></center>
    </header>
    
<!-- content -->

    <form id="form1" runat="server">
    
	<!--==============================footer=================================-->
    <script type="text/javascript">
        $(window).load(function () {
            // We only want these styles applied when javascript is enabled
            $('div.navigation').css({ 'width': '320px', 'float': 'right' });
            $('div.content').css('display', 'block');

            // Initially set opacity on thumbs and add
            // additional styling for hover effect on thumbs
            var onMouseOutOpacity = 0.5;
            $('#thumbs ul.thumbs li span').opacityrollover({
                mouseOutOpacity: onMouseOutOpacity,
                mouseOverOpacity: 0.0,
                fadeSpeed: 'fast',
                exemptionSelector: '.selected'
            });

            // Initialize Advanced Galleriffic Gallery
            var gallery = $('#thumbs').galleriffic({
                delay: 7000,
                numThumbs: 12,
                preloadAhead: 6,
                enableTopPager: false,
                enableBottomPager: false,
                imageContainerSel: '#slideshow',
                controlsContainerSel: '',
                captionContainerSel: '',
                loadingContainerSel: '',
                renderSSControls: true,
                renderNavControls: true,
                playLinkText: 'Play Slideshow',
                pauseLinkText: 'Pause Slideshow',
                prevLinkText: 'Prev',
                nextLinkText: 'Next',
                nextPageLinkText: 'Next',
                prevPageLinkText: 'Prev',
                enableHistory: true,
                autoStart: 7000,
                syncTransitions: true,
                defaultTransitionDuration: 900,
                onSlideChange: function (prevIndex, nextIndex) {
                    // 'this' refers to the gallery, which is an extension of $('#thumbs')
                    this.find('ul.thumbs li span')
						.css({ opacity: 0.5 })
                },
                onPageTransitionOut: function (callback) {
                    this.find('ul.thumbs li span').css({ display: 'block' });
                },
                onPageTransitionIn: function () {
                    this.find('ul.thumbs li span').css({ display: 'none' });
                }
            });
        });
	</script>

       <center>
<%--    <asp:Label ID="Label19" runat="server" Text="Patient Registration Form" 
            Font-Bold="True" Font-Size="Large"></asp:Label>
    <br /><br />--%>
          <table border="2" cellpadding="2" cellspacing="2" 
               style="border-style: double; height: 347px; width: 642px;">

                                        <tr>
                                            <td align="right" class="style3">
                                                &nbsp;</td>
                                            <td align="center" class="style2"> &nbsp;</td>
                                            <td style="width:60%">
                                               <blink> <asp:Label ID="lblStatus" runat="server" Font-Size="Small" ForeColor="#006600" 
                                                    Font-Bold="True"></asp:Label>
                                                    </blink>
                                            </td>
                                        </tr> 
                                        

                                        <tr>
                                            <td align="right" class="style3">
                                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="ttxName" runat="server" Width="357px"></asp:TextBox>&nbsp;
                                                <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ControlToValidate="ttxName" ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator> &nbsp;
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ttxName" ValidationExpression="[a-zA-Z ]*$" ErrorMessage="*Valid characters: Alphabets and space." />
                                            </td>
                                        </tr> 
                                        

                                                                                <tr>
                                            <td align="right" class="style3">
                                                <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="txtAge" runat="server" Width="357px"></asp:TextBox> &nbsp;
                                                <asp:RequiredFieldValidator   ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAge"  ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator> &nbsp;
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtAge" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"> </asp:RegularExpressionValidator> &nbsp;
                                                <asp:RangeValidator ID="RangeValidator1"  runat="server" ControlToValidate="txtAge" ErrorMessage="1 to 99 only allowed" MaximumValue="99"  MinimumValue="1" Type="Integer" ></asp:RangeValidator>
                                            </td>
                                        </tr>

                                                                                <tr>
                                            <td align="right" class="style3">
                                                <asp:Label ID="Label3" runat="server" Text="Sex"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%"  align="left"> 
                                                <asp:DropDownList ID="ddlSex" runat="server" Height="30px" Width="223px">
                                                    <asp:ListItem>Male</asp:ListItem>
                                                    <asp:ListItem>Female</asp:ListItem>
                                                    <asp:ListItem>Others</asp:ListItem>
                                                </asp:DropDownList>                                               
                                        </td>
                                        </tr>

                                                                                <tr>
                                            <td align="right" class="style3">
                                                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="txtAddress" runat="server" Width="357px"></asp:TextBox>&nbsp;
                                                <asp:RequiredFieldValidator  ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress"  ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator>
                                                                                    </td>
                                        </tr>

                                                                                <tr>
                                            <td align="right" class="style3">
                                                <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="txtCity" runat="server" Width="357px"></asp:TextBox>&nbsp;
                                                <asp:RequiredFieldValidator  ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCity"  ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator>&nbsp;
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCity" ValidationExpression="[a-zA-Z ]*$" ErrorMessage="*Valid characters: Alphabets and space." />
                                                                                    </td>
                                        </tr>

                                                                                <tr>
                                            <td align="right" class="style3">
                                                <asp:Label ID="Label6" runat="server" Text="E~Mail"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="txtMail" runat="server" Width="357px"></asp:TextBox>&nbsp;
                                                <asp:RequiredFieldValidator  ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMail"  ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator>&nbsp;
                                                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtMail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>

                                                                                <tr>
                                            <td align="right" class="style3">
                                                <asp:Label ID="Label7" runat="server" Text="Mobile No"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%; margin-left: 120px;"><asp:TextBox ID="txtMobile"  runat="server" Width="357px"></asp:TextBox>&nbsp;
                                                <asp:RequiredFieldValidator  ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMobile"  ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator>&nbsp;<br />
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"   ControlToValidate="txtMobile" ErrorMessage="10 digits only accepted"   ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                             </td>
                                        </tr>

                                                                                                                        <tr>
                                            <td align="right" class="style3">
                                                
                                            </td>
                                            <td align="center" class="style2"> 
                                            </td>
                                            <td style="width:60%">
                                                <asp:Button ID="btnSave" runat="server" Text="Save" ValidationGroup="plog" 
                                                    Width="63px" />
                                                <asp:Button ID="btnClear"
                                                    runat="server" Text="Clear" style="margin-left: 22px" Width="53px" /></td>
                                        </tr>


                                  
                                    </table>
    </center>
        <br /><br />
    </form>
</body>
</html>