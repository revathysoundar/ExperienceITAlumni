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
<div class="container">
<div class="img"><img src="resources/Images/ExperienceITAlumniLOGO.png" ></div>
<!--  Carousel  -->   
    
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1" class=""></li>
              <li data-target="#myCarousel" data-slide-to="2" class=""></li>
              <li data-target="#myCarousel" data-slide-to="3" calss=""></li>
              <li data-target="#myCarousel" data-slide-to="4" class=""></li>
            </ol>  
          
            <div class="carousel-inner" role="listbox">            
                <div class="item active">
                  <img src="resources/Images/01.jpg" />
                   <div class="container">
                       <div class="carousel-caption">
                           <h1>Just Learn It</h1>
                           <p style="font-size:25px; text-align:center;">Wanted to learn something new, just do it</p>
                           <p style=text-align:center;><a href="https://slack.com/oauth/authorize?scope=identity.basic,identity.avatar,identity.email&client_id=4975543103.90426640038">	
							<img src="resources/Images/sign_in_with_slack.png"></a></p>
                       </div>                       
                   </div>
                </div>
                
                 <div class="item">
                  <img src="resources/Images/02.jpg"/>
                   <div class="container">
                       <div class="carousel-caption">
                           <h1>Move with Confidence</h1>
                           <p style="font-size:25px; text-align:center;">Get skills, get confidence</p>
                           <p style="text-align:center;"><a href="https://slack.com/oauth/authorize?scope=identity.basic,identity.avatar,identity.email&client_id=4975543103.90426640038">	
							<img src="resources/Images/sign_in_with_slack.png"></a></p>
                       </div>                       
                   </div>
                </div>
                
                <div class="item">
                  <img src="resources/Images/03.jpg" />
                   <div class="container">
                       <div class="carousel-caption">
                           <h1>Learn it together</h1>
                           <p style="font-size:25px;text-align:center;">At Grand Circus we believe that learning should be an enjoyable and rewarding experience</p>
                           <p style="text-align:center;"><a href="https://slack.com/oauth/authorize?scope=identity.basic,identity.avatar,identity.email&client_id=4975543103.90426640038">	
							<img src="resources/Images/sign_in_with_slack.png"></a></p>
                       </div>                       
                   </div>
                </div>
                <div class="item">
                  <img src="resources/Images/04.jpg" />
                   <div class="container">
                       <div class="carousel-caption">
                          <h1>Just Learn It</h1>
                           <p style="font-size:25px;text-align:center;">Wanted to learn something new, just do it</p>
                           <p style="text-align:center;"><a href="https://slack.com/oauth/authorize?scope=identity.basic,identity.avatar,identity.email&client_id=4975543103.90426640038">	
							<img src="resources/Images/sign_in_with_slack.png"></a></p>
                       </div>                       
                   </div>
                </div>
                <div class="item">
                  <img src="resources/Images/05.jpg" />
                   <div class="container">
                       <div class="carousel-caption">
                           <h1>Move with Confidence</h1>
                           <p style="font-size:25px;text-align:center;">Get skills, get confidence</p>
                           <p style="text-align:center;"><a href="https://slack.com/oauth/authorize?scope=identity.basic,identity.avatar,identity.email&client_id=4975543103.90426640038">	
							<img src="resources/Images/sign_in_with_slack.png"></a></p>
                       </div>                       
                   </div>
                </div>
            </div> 
          
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>    
      </div>         
      </div>
    <!-- Carousel Complete -->
     <!--  Footer Starts -->
    <div class="footer">
      <div class="row">
        Copyright &copy; 2016 ExperienceIT Alumni. All rights reserved. 
	     
	    
       </div>
    </div>
    
    <!-- Footer Ends  -->
<script>
    $('#myCarousel').carousel
    ({
        interval: 2500,



        })

    </script>



</body>
</html>
