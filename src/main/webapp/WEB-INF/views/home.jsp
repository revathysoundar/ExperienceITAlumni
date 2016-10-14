<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<link rel="stylesheet" href="resources/main.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>	
</head>
<body>

<div class="img"><img src="resources/Images/ExperienceITAlumniLOGO.png" ></div>
<!--  Carousel  -->   
    
      <div id="myCarousel" class="carousel slide">
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1" class=""></li>
              <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            </ol>  
          
            <div class="carousel-inner">            
                <div class="item active">
                  <img src="resources/Images/01.jpg" />
                   <div class="container">
                       <div class="carousel-caption">
                           <h1>Just Learn It</h1>
                           <p style="font-size:25px;">Wanted to learn something new, just do it</p>
                           <p><a href="https://slack.com/oauth/authorize?scope=identity.basic,identity.avatar,identity.email&client_id=4975543103.90426640038">	
							<img src="resources/Images/sign_in_with_slack.png"></a></p>
                       </div>                       
                   </div>
                </div>
                
                 <div class="item ">
                  <img src="resources/Images/02.jpg"/>
                   <div class="container">
                       <div class="carousel-caption">
                           <h1>Move with Confidence</h1>
                           <p style="font-size:25px;">Get skills, get confidence</p>
                           <p><a href="https://slack.com/oauth/authorize?scope=identity.basic,identity.avatar,identity.email&client_id=4975543103.90426640038">	
							<img src="resources/Images/sign_in_with_slack.png"></a></p>
                       </div>                       
                   </div>
                </div>
                
                <div class="item ">
                  <img src="resources/Images/03.jpg" />
                   <div class="container">
                       <div class="carousel-caption">
                           <h1>Learn it together</h1>
                           <p style="font-size:25px;">At Grand-Circus we believe that learning should be an enjoyable and rewarding experience</p>
                           <p><a href="https://slack.com/oauth/authorize?scope=identity.basic,identity.avatar,identity.email&client_id=4975543103.90426640038">	
							<img src="resources/Images/sign_in_with_slack.png"></a></p>
                       </div>                       
                   </div>
                </div>
                <div class="item ">
                  <img src="resources/Images/04.jpg" />
                   <div class="container">
                       <div class="carousel-caption">
                          <h1>Just Learn It</h1>
                           <p style="font-size:25px;">Wanted to learn something new, just do it</p>
                           <p><a href="https://slack.com/oauth/authorize?scope=identity.basic,identity.avatar,identity.email&client_id=4975543103.90426640038">	
							<img src="resources/Images/sign_in_with_slack.png"></a></p>
                       </div>                       
                   </div>
                </div>
                <div class="item ">
                  <img src="resources/Images/05.jpg" />
                   <div class="container">
                       <div class="carousel-caption">
                           <h1>Move with Confidence</h1>
                           <p style="font-size:25px;">Get skills, get confidence</p>
                           <p><a href="https://slack.com/oauth/authorize?scope=identity.basic,identity.avatar,identity.email&client_id=4975543103.90426640038">	
							<img src="resources/Images/sign_in_with_slack.png"></a></p>
                       </div>                       
                   </div>
                </div>
            </div> 
          
          <a class="left carousel-control" href="#myCarousel" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left"></span>
          </a>
            
          <a class="right carousel-control" href="#myCarousel" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right"></span>
          </a>          
      </div>         
    <!-- Carousel Complete -->
     <!--  Footer Starts -->
    <div class="container">
      <div class="row">
        <p align="center" style="padding:30px;">Copyright &copy; 2016 ExperienceIT Alumni. All rights reserved. 
	     
	    </p>
       </div>
    </div>
    
    <!-- Footer Ends  -->
<script>
    $('#myCarousel').carousel
    ({
        interval: 2000,


        })

    </script>


</body>
</html>
