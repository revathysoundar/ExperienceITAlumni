

<!--Navigation bar-->
	<section id="Navlist">
	 
		<nav class="navbar navbar-default no-margin nav-first" role="navigation">
			<div class="navbar-header">
			<div class="navbar-logo">
			    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			      <span class="sr-only">Toggle navigation</span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			    </button>
    			<a  href="#"><img class="logo" src="<c:url value="/resources/Images/logo.png"/>"></a>
  			</div>
  			</div>
  			<div class="navbar-menu">
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    				<ul class="nav navbar-nav navbar-right">
    					<li class="menu"><a href="<c:url value="/index"/>">About Us</a></li>
						<li class="menu"><a href="<c:url value="/mentors"/>">Mentors</a></li>
						<li class="menu"><a href="<c:url value="/questions"/>">Forum</a>
						<li class="menu"><a href="<c:url value="/resourses"/>">Resources</a></li>
						<li class="menu"><a href="<c:url value="/faqs"/>">FAQ</a></li>
						
					</ul>
				</div><!-- /.navbar-collapse -->
				</div>
		</nav>
		
		 
		

	</section>
	<div class="container">
	
	<div class="media">
    <div class="media-left">
      <img src="${currentLogin.image }"  class="media-object img-circle" alt="${ currentLogin.name }" width="125" height="125"/>
    </div>
    <div class="media-body">
      
      <p style="color:blue;"> Hello! <c:out value="${currentLogin.name }"/>   </p>
    </div>
  </div>
</div>
