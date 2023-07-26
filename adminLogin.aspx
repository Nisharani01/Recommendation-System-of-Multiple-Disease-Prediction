<%@ Page Language="VB" AutoEventWireup="false" CodeFile="adminLogin.aspx.vb" Inherits="adminLogin" %>

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
        .style1
        {
            width: 100%;
        }
    </style>

</head>
<body>

    <form id="form1" runat="server">
    <header>
    	<div class="row-1">
        	<div class="main">
            	<div class="container_12">
                	<div class="grid_12">
                    	<nav>
                            <ul class="menu">
                                <li><a href="Default.aspx">Home</a></li>
                                <%--<li><a href="frmDocRegister.aspx">New Doctor?</a></li>--%>                              
                                <li><a class="active"  href="adminLogin.aspx">Admin Login</a></li>                                
                                <li><a href="patientRegis.aspx">New Patient?</a></li>                              
                                <li><a href="patientLogin.aspx">Patient Login</a></li>
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
                           <center><a class="logo" href="Default.aspx">Efficient Disease Prediction System </a>&nbsp;&nbsp;&nbsp;&nbsp;
                        </center> 
                        </h1>
                    </div>
                     <div class="clear"></div>
                </div>
            </div>
        </div>    	
        <center><asp:Image ID="Image1" runat="server" ImageUrl="~/images/login.jpg" Height="189px" Width="751px" /></center>
    </header>
    
<!-- content -->
<br /><br />
    <section id="content">
          <table class="style1">
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td align="center">
                                                <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" 
                                                    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                                                    Font-Size="Medium" ForeColor="#333333" TextLayout="TextOnTop" Width="347px">
                                                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                                                    <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
                                                        BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                                                    <TextBoxStyle Font-Size="0.8em" />
                                                    <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
                                                        ForeColor="White" />
                                                </asp:Login>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
    </section>
    
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

    <div>
    
    </div>
    </form>
</body>
</html>
