
<div class="container">

<!--Navigation bar-->
	<section id="Navlist">
	 
		<nav class="navbar navbar-default no-margin nav-first" role="navigation">
			<div class="navbar-header">
			    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			      <span class="sr-only">Toggle navigation</span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			    </button>
    			<a class="navbar-logo" href="#"><img class="logo" src="<c:url value="/resources/Images/logo.png"/>"></a>
  			</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    				<ul class="nav navbar-nav">
    					<li class="menu"><a href="<c:url value="/index"/>">About Us</a></li>
						<li class="menu"><a href="<c:url value="/mentors"/>">Mentors</a></li>
						<li class="menu"><a href="<c:url value="/questions"/>">Forum</a>
						<li class="menu"><a href="<c:url value="/resourses"/>">Resources</a></li>
						<li class="menu"><a href="<c:url value="/faqs"/>">FAQs</a></li>
						
					</ul>
				</div><!-- /.navbar-collapse -->
		</nav>
		
		 
		<nav class="navbar navbar-default navbar-lower no-margin nav-second" role="navigation">
			<div class="navbar-header">
			    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
			      <span class="sr-only">Toggle navigation</span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			    </button>
   				 <a class="navbar-brand" href="#"></a>
 			 </div>
					
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
    			<ul class="nav navbar-nav">
						<li class="menu">Hello</li>
						<li class="menu"><c:out value="${currentLogin.name }" /></li>
						<li class="menu"><img src="${currentLogin.image }" class="img-circle" alt="${ login.name }" width="125" height="125"/></li>
						
				</ul>	
				</div>
		
</nav>

	</section>
</div>