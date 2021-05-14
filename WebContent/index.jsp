<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title> Login Form </title>

<script src="component/jquery-3.6.0.js"></script>
<script src="component/main.js"></script>
<script src="component/loginvalidate.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

    </script>
    <!-- //Meta tag Keywords -->
    <!-- Custom-Files -->
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="Views/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="Views/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700" rel="stylesheet">
    
    
</head>
<body>

<!-- main -->
    <div class="main-top-intro">
        <div class="bg-layer">
            <!-- header -->
            <div class="wrapper">
            
                <header>
                    <div class="header-w3layouts">
                        <h1>
                            <a class="navbar-brand logo" href="index.html">
                                Gadget
                                  Badget
                            </a>
                        </h1>
                    </div>
                    <div class="nav_w3pvt">
                        <nav>
                            <label for="drop" class="toggle mt-lg-0 mt-2"><span class="fa fa-bars" aria-hidden="true"></span></label>
                            <input type="checkbox" id="drop" />
                            <ul class="menu">
                                <li class="active"><a href="#">Home</a></li>
                                <li class=""><a href="#">About</a></li>
                                <li class=""><a href="#">Services</a></li>
                                <li class=""><a href="#">Contact us</a></li>
                                <li class=""><a href="#">Products</a></li>
                                
                                
                                <li class="p-0">
                                   
                                </li>
                                
                            </ul>
                        </nav>
                    </div>
                    <div class="buttons mt-lg-0 mt-3 ml-auto">
                        <div class="form-w3layouts-grid">
                            <form action="" method="post" class="newsletter">
                                <input class="search" type="search" placeholder=""  required="">
                                <button class="form-control btn" value=""><span class="fa fa-search"></span></button>
                                
                                <div class="clear"></div>
                            </form>
                        </div>
                    </div>
                    <div class="clear"></div>


                </header>
                
                <!-- //header -->
                <div class="content-inner-info">
                    <h2>WELCOME GadgetBadget (GB)!</h2>
                    
                    <div class="content-w3layouts-main">

                        <div class="form-w3ls-left-info">
                            <form action="Login" class="form"  method="post" name="formlogin" id="frm-login">


                                <input type="text" class="form-control" placeholder="Email Address" id="username" autocomplete="off" name="uname"  />
								<span id="emailmsg"></span>


                                <input type="password" placeholder="Password" autocomplete="off" id="password" name="pass"  />
                                <span id="passmsg"></span>
                                
 								<div class="links">
                                    <p><a href="signup.jsp">Create Account?</a></p>

                                </div>
                              
                              
                                <div class="bottom">
                                    <button id="btnLogin" class="btn" type="submit" >Log In</button>
                                    <button  class="btn reg" type="reset" >Clear</button>
                                    
                                </div>
                                
                               

                            </form>
                        </div>

                    </div>
                </div>
                <!-- copyright -->
                <div class="copy-w3layouts-inf">
                    <p>© 2021
                        GadgetBadget Login. All rights reserved | Design by Chalana Janith (CJ)
                       
                    </p>
                    <ul class="list-unstyled w3layouts-icons">
                        <li>
                            <a href="#" class="face-b">
                                <span class="fa fa-facebook-f"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="twit">
                                <span class="fa fa-twitter"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="dribble">
                                <span class="fa fa-dribbble"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="vk">
                                <span class="fa fa-vk"></span>
                            </a>
                        </li>
                    </ul>
                    <div class="clear"></div>
                </div>
                <!-- //copyright -->
            </div>
        </div>
    </div>
    
    

</body>
</html>