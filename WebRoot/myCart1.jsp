<%@ page language="java" import="java.util.*,java.sql.*,bean.DBClass,bean.CartInf" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Checkout</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <!-- shop css -->
    <link href="css/shop.css" type="text/css" rel="stylesheet" media="all">
    <!-- checkout css -->
    <link href="css/checkout.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <!-- logo -->
    <link href="http://fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
    <!-- titles -->
    <link href="http://fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i" rel="stylesheet">
    <!-- body -->
    <link href="http://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
    <!-- //online-fonts -->
</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <div id="home">
        <!-- header -->
        <!-- navbar -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="main-nav">
                <div class="container">

                    <div class="navbar-header page-scroll">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                            <span class="sr-only">Chronicle</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <h1>
                            <a class="navbar-brand" href="index.jsp">Chronicle</a>
                        </h1>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-ex1-collapse nav-right">
                        <ul class="nav navbar-nav navbar-left cl-effect-15">
                            <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                            <li class="hidden">
                                <a class="page-scroll" href="#page-top"></a>
                            </li>
                            <li>
                                <a href="index.jsp">Home</a>
                            </li>
                            <li class="active">
                                <a href="about.jsp">about us</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle effect-3" data-toggle="dropdown">shop
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="shop.jsp">product catalog</a>
                                    </li>
                                    <li>
                                        <a href="single_product.jsp">single product</a>
                                    </li>
                                    <li>
                                        <a href="checkout.jsp">checkout</a>
                                    </li>
									<li>
                                        <a href="payment.jsp">Payment</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle effect-3" data-toggle="dropdown">footers
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="footer.jsp">Default</a>
                                    </li>
                                    <li>
                                        <a href="footer1.jsp">variant1</a>
                                    </li>
                                    <li>
                                        <a href="footer2.jsp">variant2</a>
                                    </li>
                                    <li>
                                        <a href="footer3.jsp">variant3</a>
                                    </li>
                                    <li>
                                        <a href="footer4.jsp">variant4</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="contact.jsp">Contact us</a>
                            </li>
                            <li>
                                <a href="login.jsp" title="SignIn & SignUp">
                                    <span class="fa fa-user nav-icon" aria-hidden="true"></span>
                                </a>
                            </li>

                        </ul>
                        <!-- search-bar -->
                        <div class="search-bar-agileits">
                            <div class="cd-main-header">
                                <ul class="cd-header-buttons">
                                    <li>
                                        <a class="cd-search-trigger" href="#cd-search">
                                            <span></span>
                                        </a>
                                    </li>
                                </ul>
                                <!-- cd-header-buttons -->
                            </div>
                            <div id="cd-search" class="cd-search">
                                <form action="#" method="post">
                                    <input name="Search" type="search" placeholder="Type and Hit Enter...">
                                </form>
                            </div>
                        </div>
                        <!-- //search-bar ends here -->
                        <!-- shopping cart -->
                        <div class="cart-mainf">
                            <div class="chrcart chrcart2 cart cart box_1">
                                <form action="#" method="post" class="last">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="display" value="1">
                                    <button class="top_chr_cart" type="submit" name="submit" value="">
                                        <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                        <!-- //shopping cart ends here -->
                    </div>
                    <!-- /.navbar-collapse -->
                    <div class="clearfix"></div>
                </div>
                <!-- /.container -->
            </div>
        </nav>
        <!-- //navbar ends here -->
        <!-- banner -->
        <div class="banner-bg-inner">
            <!-- banner-text -->
            <div class="banner-text-inner">
                <div class="container">
                    <h2 class="title-inner">
                        world of reading
                    </h2>

                </div>
            </div>
            <!-- //banner-text -->
        </div>
        <!-- //banner -->
        <!-- breadcrumbs -->
        <div class="crumbs text-center">
            <div class="container">
                <div class="row">
                    <ul class="btn-group btn-breadcrumb bc-list">
                        <li class="btn btn1">
                            <a href="index.jsp">
                                <i class="glyphicon glyphicon-home"></i>
                            </a>
                        </li>
                        <li class="btn btn2">
                            <a href="shop.jsp">Product Catalogue</a>
                        </li>
                        <li class="btn btn3 btn3a">
                            <a href="single_product.jsp">Single product</a>
                        </li>
                        <li class="btn btn4">
                            <a href="checkout.jsp">Checkout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--//breadcrumbs ends here-->
        <!--checkout-->
        <div class="innerf-pages section">
            <div class="container">
                <div class="privacy about">
                	<h4 class="rad-txt">
                        <span class="abtxt1">review</span>
                        <span class="abtext">your order</span>
                    </h4>
                
                
                    <div class="checkout-right">
                    
                    
                    		  <% if(session.getAttribute("cartList")==null) { %>
		  目前您的购物车是空的
		  <% } else { 
		     Vector list=(Vector)session.getAttribute("cartList");
			 int n=list.size(); %>
			 
			 		<h4>Your shopping cart contains:
                        <span><%=n %> Products</span>
                    </h4>
			 
		  <div align="center">
						 <table width="100%" border="0" class="timetable_sub table-responsive">
							<tr>
							<th width="10%" class="abc">SL No.</th>
							<th width="17%" class="abc"><div align="center" class="abc">书名</div></th>
								<th width="10%" class="abc"><div align="center" class="abc">作者</div>				  <div align="center"></div></th>
								<th width="10%" class="abc"><div align="center" class="abc">单价</div></th>
								<th width="10%" class="abc"><div align="center" class="STYLE8 STYLE14 STYLE15">数量</div></th>
								<th width="25%" class="abc"><div align="center" class="STYLE8 STYLE14 STYLE15">修改预定的数量</div></th>
								<th width="20%" class="abc" ><div align="center" class="STYLE8 STYLE15 STYLE14">删除</div></th>
							</tr>

						  <%  float money=0;
						  		for(int i=0;i<n;i++) {
							  CartInf cart=(CartInf)list.elementAt(i);
							   String query="SELECT bookname,author,price FROM book WHERE id="
							                  + (String)cart.getBookId();
							   DBClass db=new DBClass();
							   db.connect();
							   ResultSet resultset=db.executeQuery(query);
							   resultset.next();
							   String price=resultset.getString("price");
							   money+=Float.parseFloat(price)*cart.getBookNum();
							 %>
					             <tr>
					             <td class="abc" ><div align="center"><%=i+1 %></div></td>
					               <td class="abc" ><div align="center"><%=resultset.getString("bookname") %></div></td>
								<td class="abc" ><div align="center"><%=resultset.getString("author") %></div>				  <div align="center"></div></td>
								<td class="abc" ><div align="center">&yen;<%= price %></div></td>
								<td class="abc" ><div align="center"><%=cart.getBookNum() %></div></td>
								<td class="abc" ><form name="form1" method="post" action="ChangeOrder_do.jsp">
								  <div align="center">我要
								      <input name=<%=(String)cart.getBookId()%> type="text" value=<%=cart.getBookNum()%> size="3">
								      本
					                     <input type="submit" name="Submit" value="修改">
					                   </div>
								</form>			  </td>
					             <td class="abc"><form name="form2" method="post" action="ChangeOrder_do.jsp">
					               <div align="center">
					                 <input type="hidden" name=<%=(String)cart.getBookId()%> value="0">
					                 <label>
					                 <input type="image" name="imageField" src="source/DELETE_01.GIF">
					                 </label>
					               </div>
					             </form></td>
							  </tr>
					             <%   db.closeConnection();
							     
							  } 
							 %>
							    <td colspan="5">
								  <div align="left">共计人民币<%= money %>元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								  <% //String submitURL="SubmitOrder?money="+Float.toString(money); %>
								   <% String submitURL="SubmitOrder.jsp?money="+Float.toString(money); %>
								  <a href=<%= submitURL %>><img src="source/car_icon_10.gif" width="75" height="60" border="0"></a></div></td>
								 
							    <td colspan="2" class="errInf">
								<form name="form3" method="post" action="EmptyCart_do.jsp">
					               <div align="center">
					                             <label>
					                 <input type="image" name="imageField" src="source/car_icon_01.gif">
					                 </label>
					               </div>
					             </form>
							
							      <div align="right">
							          <% if(request.getAttribute("errInf")!=null){ %>
					                     <%= (String)request.getAttribute("errInf") %>
					                     <% } %>
							      </div></td>
							    </tr>
					           </table>
            			    </div>
	        <% } %>
            
            
                    </div>
                    <div class="checkout-left">
                        <div class="col-md-4 checkout-left-basket">
                            <h4>Continue to basket</h4>
                            <ul>
                                <li>Be Creative
                                    <i>-</i>
                                    <span>$100.00 </span>
                                </li>
                                <li>Work From Home
                                    <i>-</i>
                                    <span>$80.00 </span>
                                </li>
                                <li>E-Commerce
                                    <i>-</i>
                                    <span>$120.00 </span>
                                </li>
                                <li>Total Service Charges
                                    <i>-</i>
                                    <span>$55.00</span>
                                </li>
                                <li>Total
                                    <i>-</i>
                                    <span>$355.00</span>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-8 address_form">
                            <h4>Billing Address</h4>
                            <form action="payment.jsp" method="post" class="creditly-card-form shopf-sear-headinfo_form">
                                <div class="creditly-wrapper wrapper">
                                    <div class="information-wrapper">
                                        <div class="first-row form-group">
                                            <div class="controls">
                                                <label class="control-label">Full name: </label>
                                                <input class="billing-address-name form-control" type="text" name="name" placeholder="Full name">
                                            </div>
                                            <div class="card_number_grids">
                                                <div class="card_number_grid_left">
                                                    <div class="controls">
                                                        <label class="control-label">Mobile number:</label>
                                                        <input class="form-control" type="text" placeholder="Mobile number">
                                                    </div>
                                                </div>
                                                <div class="card_number_grid_right">
                                                    <div class="controls">
                                                        <label class="control-label">Landmark: </label>
                                                        <input class="form-control" type="text" placeholder="Landmark">
                                                    </div>
                                                </div>
                                                <div class="clear"> </div>
                                            </div>
                                            <div class="controls">
                                                <label class="control-label">Town/City: </label>
                                                <input class="form-control" type="text" placeholder="Town/City">
                                            </div>
                                            <div class="controls">
                                                <label class="control-label">Address type: </label>
                                                <select class="form-control option-fieldf">
                                                    <option>Office</option>
                                                    <option>Home</option>
                                                    <option>Commercial</option>

                                                </select>
                                            </div>
                                        </div>
                                        <button class="submit check_out">place order</button>
                                    </div>
                                </div>
                            </form>

                        </div>

                        <div class="clearfix"> </div>

                    </div>

                </div>

            </div>
        </div>
        <!--//checkout-->
        <!-- footer -->
        <div class="footer-bottom section">
            <div class="container">
                <!-- newsletter -->
                <div class="subscribe-main section-w3layouts text-center">
                    <h4 class="rad-txt">
                        <span class="abtxt1">keep yourself</span>
                        <span class="abtext">updated</span>
                    </h4>
                    <h5>subscribe to our newsletter to stay up-to-date with our projects.</h5>
                    <div class="subscribe-form">
                        <form action="#" method="post" class="subscribe_form">
                            <div class="email-news">
                                <input type="email" placeholder="Email" required="">
                            </div>
                            <div class="sub-news">
                                <input type="submit" value="subscribe">
                            </div>
                        </form>
                        <div class="clearfix"> </div>
                    </div>
                    <p>We respect your privacy.No spam ever!</p>
                </div>
                <!-- //newsletter ends here -->
                <!-- footer grids-->
                <div class="footer-cpy">
                    <!-- footer-grid1 -->
                    <div class="col-md-3 col-sm-6 footer-logo">
                        <h3>
                            <a href="index.jsp">Chronicle</a>
                        </h3>
                        <h4>about us</h4>
                        <p>Vallis Molestie Arcu Morbi Dapibus Suscipit Ante Sit Efficitur Eu estie Arcu Mor Anestie Ate Vesti.</p>
                    </div>
                    <!-- //footer-grid1 -->
                    <!-- footer-grid2 -->
                    <div class="col-md-3 col-sm-6 footer-nav text-center">
                        <h4>navigation</h4>
                        <ul>
                            <li>
                                <a href="index.jsp">Home</a>
                            </li>
                            <li>
                                <a href="about.jsp">About us</a>
                            </li>
                            <li>
                                <a href="shop.jsp">shop</a>
                            </li>
                            <li>
                                <a href="contact.jsp">contact us</a>
                            </li>
                        </ul>
                    </div>
                    <!-- //footer-grid2 -->
                    <!-- footer-grid3 -->
                    <div class="col-md-3 col-sm-6 blog-footer">
                        <h4>latest from blog</h4>
                        <div class="blog1">
                            <div class="col-md-3 col-sm-3 col-xs-2 bl1">
                                <a href="#">
                                    <img src="images/b1.jpg" alt="" class="img-responsive" />
                                </a>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-10 bl2">
                                <a href="#">Dapibus Suscipit Ante Sit by instagram</a>
                                <p>February 15, 2018</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="blog1">
                            <div class="col-md-3 col-sm-3 col-xs-2 bl1">
                                <a href="#">
                                    <img src="images/b2.jpg" alt="" class="img-responsive" />
                                </a>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-10 bl2">
                                <a href="#">Dapibus Suscipit Ante Sit by instagram</a>
                                <p>February 20, 2018</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!-- //footer-grid3 -->
                    <!-- footer-grid4 -->
                    <div class="col-md-3 col-sm-6 contact-foot text-right">
                        <h4>contact us</h4>
                        <ul>
                            <li>
                                <span class="fa fa-home"></span>
                                1185 Burlington
                                <br> Canada.
                            </li>
                            <li>
                                <span class="fa fa-phone"></span>
                                +12 345 678
                            </li>
                            <li>
                                <span class="fa fa-envelope"></span>
                                <a href="mailto:info@example.com">mail@chronicle.com</a>
                            </li>
                        </ul>
                    </div>
                    <!-- //footer-grid4 -->
                    <div class="clearfix"></div>
                </div>
                <!-- //footer-grids -->
                <!-- footer social -->
                <div class="footer-social text-center">
                    <h4>stay connected</h4>
                    <ul>
                        <li>
                            <a href="#">
                                <span class="fa fa-facebook icon_facebook"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa fa-twitter icon_twitter"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa fa-dribbble icon_dribbble"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa fa-google-plus icon_g_plus"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- //footer social -->
            </div>
            <!-- //footer container -->
        </div>
        <!-- //footer -->
        <div class="cpy-right">
            <p>Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
            </p>
        </div>
    </div>
    <!-- //home -->

    <!-- Common js -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!--// Common js -->
    <!-- cart-js -->
    <script src="js/minicart.js"></script>
    <script>
        chr.render();

        chr.cart.on('new_checkout', function (evt) {
            var items, len, i;

            if (this.subtotal() > 0) {
                items = this.items();

                for (i = 0, len = items.length; i < len; i++) {}
            }
        });
    </script>
    <!-- //cart-js -->
    <!--quantity-->
    <script>
        $('.value-plus').on('click', function () {
            var divUpd = $(this).parent().find('.value'),
                newVal = parseInt(divUpd.text(), 10) + 1;
            divUpd.text(newVal);
        });

        $('.value-minus').on('click', function () {
            var divUpd = $(this).parent().find('.value'),
                newVal = parseInt(divUpd.text(), 10) - 1;
            if (newVal >= 1) divUpd.text(newVal);
        });
    </script>
    <!--quantity-->
    <!-- FadeOut-Script -->
    <script>
        $(document).ready(function (c) {
            $('.close1').on('click', function (c) {
                $('.rem1').fadeOut('slow', function (c) {
                    $('.rem1').remove();
                });
            });
        });
    </script>
    <script>
        $(document).ready(function (c) {
            $('.close2').on('click', function (c) {
                $('.rem2').fadeOut('slow', function (c) {
                    $('.rem2').remove();
                });
            });
        });
    </script>
    <script>
        $(document).ready(function (c) {
            $('.close3').on('click', function (c) {
                $('.rem3').fadeOut('slow', function (c) {
                    $('.rem3').remove();
                });
            });
        });
    </script>
    <!--// FadeOut-Script -->

    <!-- dropdown nav -->
    <script>
        $(document).ready(function () {
            $(".dropdown").hover(
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- //dropdown nav -->
    <!--search jQuery-->
    <script src="js/main.js"></script>
    <!--search jQuery-->

    <!-- Scrolling Nav JavaScript -->
    <script src="js/scrolling-nav.js"></script>
    <!-- //fixed-scroll-nav-js -->
    <!--//scripts-->
    <!-- start-smooth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <script src="js/SmoothScroll.min.js"></script>
    <!-- //smooth-scrolling-of-move-up -->
    <!-- Bootstrap core JavaScript
 ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>

</html>