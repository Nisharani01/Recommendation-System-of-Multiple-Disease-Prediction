<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmDocRegister.aspx.vb" Inherits="frmDocRegister" %>

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
    <header>
    	<div class="row-1">
        	<div class="main">
            	<div class="container_12">
                	<div class="grid_12">
                    	<nav>
                            <ul class="menu">
                                <li><a href="Default.aspx">Home</a></li>
                                <li><a class="active" href="frmDocRegister.aspx">New Doctor?</a></li>                              
                                <li><a  href="adminLogin.aspx">Admin Login</a></li>                                
                                <li><a  href="patientRegis.aspx">New Patient?</a></li>                              
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
                     <div class="clear"></div>
                </div>
            </div>
        </div>    	
        <center>        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/doctor.jpg" Height="189px" Width="751px" /></center>
    </header>
    
<!-- content -->

    <form id="form1" runat="server">
    <section id="content">
          <table class="style1">
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td align="center">
                   
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

       <center>
    <asp:Label ID="Label19" runat="server" Text="Doctor Registration Form" 
            Font-Bold="True" Font-Size="Large"></asp:Label>
    <br /><br />
          <table border="2" cellpadding="2" cellspacing="2" 
               
               style="padding: inherit; margin: auto; border-style: double; height: 404px; width: 748px;">

                                        <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                            </td>
                                            <td align="center" style="width:10%"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="TextBox1" runat="server" Width="357px"></asp:TextBox>&nbsp;</td>
                                        </tr> 
                                        

                                                                                <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                                            </td>
                                            <td align="center" style="width:10%"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="TextBox2" runat="server" Width="357px"></asp:TextBox>&nbsp;</td>
                                        </tr>

                                                                                <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label3" runat="server" Text="Sex"></asp:Label>
                                            </td>
                                            <td align="center" style="width:10%"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="TextBox3" runat="server" Width="357px"></asp:TextBox>&nbsp;</td>
                                        </tr>

                                                                                <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                                            </td>
                                            <td align="center" style="width:10%"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="TextBox4" runat="server" Width="357px"></asp:TextBox>&nbsp;</td>
                                        </tr>

                                                                                <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
                                            </td>
                                            <td align="center" style="width:10%"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="TextBox5" runat="server" Width="357px"></asp:TextBox>&nbsp;</td>
                                        </tr>

                                                                                <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label6" runat="server" Text="E~Mail"></asp:Label>
                                            </td>
                                            <td align="center" style="width:10%"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="TextBox6" runat="server" Width="357px"></asp:TextBox>&nbsp;</td>
                                        </tr>

<tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label7" runat="server" Text="Mobile No"></asp:Label>
                                            </td>
                                            <td align="center" style="width:10%"> : 
                                            </td>
                                            <td style="width:60%; margin-left: 120px;"><asp:TextBox ID="TextBox7" runat="server" Width="357px"></asp:TextBox>&nbsp;</td>
</tr>

<tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label8" runat="server" Text="Hospital Name"></asp:Label>
                                            </td>
                                            <td align="center" style="width:10%"> : 
                                            </td>
                                            <td style="width:60%; margin-left: 120px;"><asp:TextBox ID="TextBox8" runat="server" Width="357px"></asp:TextBox>&nbsp;</td>
</tr>


                                        <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label9" runat="server" Text="Education Qualification"></asp:Label>
                                            </td>
                                            <td align="center" style="width:10%"> : 
                                            </td>
                                            <td style="width:60%; margin-left: 120px;"><asp:TextBox ID="TextBox9" runat="server" Width="357px"></asp:TextBox>&nbsp;</td>
                                        </tr>


                                        <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label10" runat="server" 
                                                    Text="Handling Diseases (&amp; Separated)"></asp:Label>
                                            </td>
                                            <td align="center" style="width:10%"> : 
                                            </td>
                                            <td style="width:60%; margin-left: 120px;"><asp:TextBox ID="TextBox10" runat="server" Width="357px"></asp:TextBox>&nbsp;</td>
                                        </tr>

                                                                                                                        <tr>
                                            <td align="right" style="width:30%">
                                                
                                            </td>
                                            <td align="center" style="width:10%"> 
                                            </td>
                                            <td style="width:60%">
                                                <asp:Button ID="Button1" runat="server" Text="Save" /><asp:Button ID="Button2"
                                                    runat="server" Text="Clear" /></td>
                                        </tr>


                                  
                                    </table>
    </center>

    </form>
</body>
</html>