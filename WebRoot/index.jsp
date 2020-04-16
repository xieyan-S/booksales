﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Home</title>
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
                            <li>
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
        <div class="banner-bg-agileits">
            <!-- banner-text -->
            <div class="banner-text">
                <div class="container">
                    <p class="b-txt">the</p>
                    <h2 class="title">
                        Library
                    </h2>
                    <ul class="banner-txt">
                        <li>share.</li>
                        <li> explore. </li>
                        <li>amplify.</li>
                    </ul>
                </div>
            </div>
            <!-- //banner-text -->
        </div>
        <!-- //banner -->
        <!-- about -->
        <div class="about-sec section" id="about">
            <div class="container">
                <!-- about-left-grid -->
                <div class="col-md-7 about-left-grid">
                    <div class="inner-about2">
                        <h4>the splendid Central Library</h4>
                        <p>Billed as the largest in the world,and the library's collection holds more than 3 million items.</p>
                        <h5>the library catalogue</h5>
                        <ul class="about-list">
                            <li>
                                <i class="fa fa-play-circle-o" aria-hidden="true"></i>International Collections</li>
                            <li>
                                <i class="fa fa-play-circle-o" aria-hidden="true"></i>ebooks</li>
                            <li>
                                <i class="fa fa-play-circle-o" aria-hidden="true"></i>Manuscripts</li>
                            <li>
                                <i class="fa fa-play-circle-o" aria-hidden="true"></i>scientific and Technical Information</li>
                            <li>
                                <i class="fa fa-play-circle-o" aria-hidden="true"></i>Comic Books</li>
                            <li>
                                <i class="fa fa-play-circle-o" aria-hidden="true"></i>Cartography</li>
                            <li>
                                <i class="fa fa-play-circle-o" aria-hidden="true"></i>Journals</li>

                        </ul>
                        <a href="#">view more</a>
                    </div>
                    <!-- about left bottom - services -->
                    <div class="principles-grids principles-grids1">
                        <div class="abt-btm agileits w3layouts aos-init aos-animate">
                            <div class="col-md-6 col-sm-6 agileits elite-services1 w3layouts bottom-gds" data-aos="fade-up">
                                <div class="bott-img agileits w3layouts">
                                    <div class="icon-holder agileits w3layouts">
                                        <span class="fa fa-book agileits w3layouts service-icon" aria-hidden="true"></span>
                                    </div>
                                    <h4 class="mission agileits w3layouts">law library</h4>
                                    <div class="description agileits w3layouts">
                                        <a href="#">Read More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6 agileits elite-services2 w3layouts bottom-gds" data-aos="fade-down">
                                <div class="bott-img bott-img1 agileits w3layouts">
                                    <div class="icon-holder agileits w3layouts">
                                        <span class="fa fa-book agileits w3layouts service-icon" aria-hidden="true"></span>
                                    </div>
                                    <h4 class="mission agileits w3layouts">asian materials</h4>
                                    <div class="description agileits w3layouts">
                                        <a href="#">Read More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!-- //about left bottom - services ends here -->
                </div>
                <!-- //about-left-grid ends here-->
                <!-- about-right-grid -->
                <div class="col-md-5 about-right-grid"></div>
                <!-- //about-right-grid ends here -->
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //about ends here -->
        <!-- about bottom -->
        <div class="about-bottom section">
            <div class="container-fluid">
                <h4 class="rad-txt">
                    <span class="abtxt1">wonderful</span>
                    <span class="abtext"> world of reading</span>
                </h4>
                <!-- about-bottom grid1 -->
                <div class="col-md-6 about-bottom-right">
                    <p class="abt-p">Etiam massa quam, efficitur eu ante vestibulum, convallis molestie arcu. Morbi dapibus suscipit ante,
                        sit efficitur eu ante vestibulum, convallis molestie arcu. Morbi dapibus suscipit an amet pulvinar
                        risus.
                    </p>
                    <div class="col-md-6 col-sm-6 col-xs-6 services-w3ls">
                        <div class="ab1">
                            <div class="col-md-3 col-sm-3 col-xs-3 ab1-icon">
                                <span class="fa fa-book" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 ab1-text">
                                <h5>e-books</h5>
                                <p>loremipsum is a dummy text</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="ab1">
                            <div class="col-md-3 col-sm-3 col-xs-3 ab1-icon">
                                <span class="fa fa-book" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 ab1-text">
                                <h5>magazines</h5>
                                <p>loremipsum is a dummy text</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="ab1">
                            <div class="col-md-3 col-sm-3 col-xs-3 ab1-icon">
                                <span class="fa fa-book" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 ab1-text">
                                <h5>Fiction</h5>
                                <p>loremipsum is a dummy text</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="ab1">
                            <div class="col-md-3 col-sm-3 col-xs-3 ab1-icon">
                                <span class="fa fa-book" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 ab1-text">
                                <h5>audio books</h5>
                                <p>loremipsum is a dummy text</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6 services-w3ls service2">
                        <div class="ab1">
                            <div class="col-md-3 col-sm-3 col-xs-3 ab1-icon">
                                <span class="fa fa-book" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 ab1-text">
                                <h5>Journals</h5>
                                <p>loremipsum is a dummy text</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="ab1">
                            <div class="col-md-3 col-sm-3 col-xs-3 ab1-icon">
                                <span class="fa fa-book" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 ab1-text">
                                <h5>e-library</h5>
                                <p>loremipsum is a dummy text</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="ab1">
                            <div class="col-md-3 col-sm-3 col-xs-3 ab1-icon">
                                <span class="fa fa-book" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 ab1-text">
                                <h5>magazines</h5>
                                <p>loremipsum is a dummy text</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="ab1">
                            <div class="col-md-3 col-sm-3 col-xs-3 ab1-icon">
                                <span class="fa fa-book" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-9 col-sm-9 col-xs-9 ab1-text">
                                <h5>Comic Books</h5>
                                <p>loremipsum is a dummy text</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!-- //about-bottom grid1 ends here -->
                <div class="col-md-6 home-about2">
                <!-- about-bottom grid2 -->
                <div class="col-md-6 col-sm-6 col-xs-6 bg-right"></div>
                <!-- //about-bottom grid2 ends here -->
                <!-- about-bottom grid3 -->
                <div class="col-md-6 col-sm-6 col-xs-6 w3ls-section  stats">
                    <div class="stats-aboutinfo services-main">
                        <div class="agileits_w3layouts-stats-grids text-center">
                            <div class="stats-icon">
                                <span class="fa fa-book" aria-hidden="true"></span>
                            </div>
                            <div class="stats-right">
                                <h6>volumes</h6>
                                <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='221073' data-delay='.5' data-increment="300">221073</div>

                            </div>
                            <div class="clearfix"></div>

                        </div>
                        <div class="agileits_w3layouts-stats-grids text-center">
                            <div class="stats-icon">
                                <span class="fa fa-university" aria-hidden="true"></span>
                            </div>
                            <div class="stats-right">
                                <h6>branches</h6>
                                <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='780' data-delay='.5' data-increment="50">980</div>

                            </div>
                            <div class="clearfix"></div>


                        </div>
                        <div class="agileits_w3layouts-stats-grids text-center">
                            <div class="stats-icon">
                                <span class="fa fa-laptop" aria-hidden="true"></span>
                            </div>
                            <div class="stats-right">
                                <h6>e-books</h6>
                                <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='9800' data-delay='.5' data-increment="50">9800</div>

                            </div>
                            <div class="clearfix"></div>

                        </div>
                        <div class="agileits_w3layouts-stats-grids text-center">
                            <div class="stats-icon">
                                <span class="fa fa-users" aria-hidden="true"></span>
                            </div>
                            <div class="stats-right">
                                <h6>visitors</h6>
                                <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='123623' data-delay='.5' data-increment="300">123623</div>

                            </div>
                            <div class="clearfix"></div>

                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
               </div>
                <!-- //about-bottom grid3 ends here -->
                <!-- //Numscroller -->
                <div class="clearfix"></div>
            </div>
            <!-- //about container ends here-->
        </div>
        <!--//about bottom ends here-->
        <!-- team -->
        <div id="team" class="team section">
            <div class="team-container">
                <div class="team-row">
                    <!-- team grid1 -->
                    <div class="col-md-5 team-grid-left">
                        <!-- team individual grid -->
                        <div class="col-md-6 col-sm-6 col-xs-6 team-grids">
                            <div class="team-effect">
                                <img src="images/t3.jpg" alt="img" class="img-responsive">
                                <div class="social-icon">
                                    <a href="#" class="social-button twitter">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#" class="social-button facebook">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a href="#" class="social-button google">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="team-text">
                                <h4>John Smith</h4>
                                <span>Designation</span>
                                <p>vallis molestie arcu morbi dapibus suscipit ante sit efficitur eu ante vesti.</p>

                            </div>
                        </div>
                        <!-- //team individual grid -->
                        <!-- team individual grid -->
                        <div class="col-md-6 col-sm-6 col-xs-6 team-grids">
                            <div class="team-text">
                                <h4>Thomson Doe</h4>
                                <span>Designation</span>
                                <p>vallis molestie arcu morbi dapibus suscipit ante sit efficitur eu ante vesti.</p>
                            </div>
                            <div class="team-effect">
                                <img src="images/t1.jpg" alt="img" class="img-responsive">
                                <div class="social-icon">
                                    <a href="#" class="social-button twitter">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#" class="social-button facebook">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a href="#" class="social-button google">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </div>
                            </div>
                            <!-- //team individual grid -->
                        </div>
                    </div>
                    <!-- //team-grid1 ends here-->
                    <!--team-grid2 -->
                    <div class="col-md-2 col-sm-2 team-mid-txt text-center">
                        <span>our</span>
                        <h5>t</h5>
                        <h5>e</h5>
                        <h5>a</h5>
                        <h5>m</h5>
                    </div>
                    <!--//team-grid2 ends here-->
                    <!-- team grid3 -->
                    <!-- team individual grid -->
                    <div class="col-md-5 team-grid-right">
                        <div class="col-md-6 col-sm-6 col-xs-6 team-grids">
                            <div class="team-text">
                                <h4>Smith Kevin</h4>
                                <span>Designation</span>
                                <p>vallis molestie arcu morbi dapibus suscipit ante sit efficitur eu ante vesti.</p>
                            </div>
                            <div class="team-effect">
                                <img src="images/t2.jpg" alt="img" class="img-responsive">
                                <div class="social-icon">
                                    <a href="#" class="social-button twitter">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#" class="social-button facebook">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a href="#" class="social-button google">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- //team individual grid -->
                        <!-- team individual grid -->
                        <div class="col-md-6 col-sm-6 col-xs-6 team-grids">
                            <div class="team-effect">
                                <img src="images/t4.jpg" alt="img" class="img-responsive">
                                <div class="social-icon">
                                    <a href="#" class="social-button twitter">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#" class="social-button facebook">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a href="#" class="social-button google">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="team-text">
                                <h4>Laura Hill</h4>
                                <span>Designation</span>
                                <p>vallis molestie arcu morbi dapibus suscipit ante sit efficitur eu ante vesti.</p>
                            </div>
                        </div>
                        <!-- //team individual grid -->
                        <div class="clearfix"> </div>
                    </div>
                    <!-- //team grid3 -->
                    <div class="clearfix"> </div>
                </div>
                <!-- //team-row ends here -->
            </div>
            <!-- // team container ends here -->
        </div>
        <!-- //team -->
        <!--testimonials -->
        <div class="reviews section" id="testimonials">
            <div class="container">
                <h4 class="rad-txt">
                    <span class="abtxt1">visitors</span>
                    <span class="abtext">testimonials</span>
                </h4>
                <div id="Carousel" class="slide carousel">
                    <!-- Carousel items -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="row">
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids">
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                            <h6>convallis felis</h6>
                                            <p>Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non mattis.</p>
                                            <h5>Davidson</h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3  img-testi">
                                            <img class="img-responsive" src="images/c3.jpg" alt="">
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids t2">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/c2.jpg" alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                            <h6>Cras rutrum</h6>
                                            <p>Lorem ipsum dolor sit amet. enim, non convallis felis mattis.</p>
                                            <h5>Clifford</h5>
                                        </div>

                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids">
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                            <h6>felis mattis</h6>
                                            <p>Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non yallis.</p>
                                            <h5>Mercurio</h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/c4.jpg" alt="">
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids t2">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/c1.jpg" alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                            <h6>Cras rutrum</h6>
                                            <p>Lorem ipsum dolor sit amet. enim, non convallis felis mattis.</p>
                                            <h5>Clifford</h5>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                            </div>
                            <!--.row-->
                        </div>
                        <!--.item-->
                        <div class="item">
                            <div class="row">
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids">
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                            <h6>convallis felis</h6>
                                            <p>Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non mattis.</p>
                                            <h5>Davidson</h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/c3.jpg" alt="">
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                                <div class="col-md-6 testi-main">
                                    <div class="testi-grids t2">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/c2.jpg" alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                            <h6>Cras rutrum</h6>
                                            <p>Lorem ipsum dolor sit amet. enim, non convallis felis mattis.</p>
                                            <h5>Clifford</h5>
                                        </div>

                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids">
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                            <h6>felis mattis</h6>
                                            <p>Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non yallis.</p>
                                            <h5>Mercurio</h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/c4.jpg" alt="">
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids t2">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-responsive" src="images/c1.jpg" alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 team-w3ls-txt">
                                            <h6>Cras rutrum</h6>
                                            <p>Lorem ipsum dolor sit amet. enim, non convallis felis mattis.</p>
                                            <h5>Clifford</h5>
                                        </div>

                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                            </div>
                            <!--.row-->
                        </div>
                    </div>
                    <!--.carousel-inner-->
                    <a data-slide="prev" href="#Carousel" class="left carousel-control">‹</a>
                    <a data-slide="next" href="#Carousel" class="right carousel-control">›</a>
                </div>
                <!--.Carousel-->
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //testimonials-->
        <!-- footer-layouts -->
        <div class="addon-sec section">
            <div class="container">
                <h4 class="rad-txt">
                    <span class="abtxt1">footer</span>
                    <span class="abtext">layouts</span>
                </h4>
                <div class="col-md-3 col-sm-3 col-xs-3 fimg1">
                    <a href="footer1.jsp">
                        <img src="images/f1.png" class="img-responsive" alt="chronicle-image">
                    </a>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3 fimg1">
                    <a href="footer2.jsp">
                        <img src="images/f2.png" class="img-responsive" alt="chronicle-image">
                    </a>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3 fimg1">
                    <a href="footer3.jsp">
                        <img src="images/f3.png" class="img-responsive" alt="chronicle-image">
                    </a>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3 fimg1">
                    <a href="footer4.jsp">
                        <img src="images/f4.png" class="img-responsive" alt="chronicle-image">
                    </a>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //footer-layouts -->
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
    <!-- js -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!--search jQuery-->
    <script src="js/main.js"></script>
    <!--search jQuery-->
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
    <!-- Scrolling Nav JavaScript -->
    <script src="js/scrolling-nav.js"></script>
    <!-- //fixed-scroll-nav-js -->
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
    <!-- about bottom grid Numscroller -->
    <script src="js/numscroller-1.0.js"></script>
    <!-- //about bottom grid Numscroller -->
    <!-- Bootstrap core JavaScript
 ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>

</html>