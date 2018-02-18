<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Solo Drinker</title>
    <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
          <link href="css/main.css" rel="stylesheet">
	        <script type="text/javascript" src="first.js" ></script>
          <style>
            .jumbotron {
             padding:0px!important;
             margin:0px!important;
             }
           </style>


	<script>
			var hidden = false;

			function userIsLogged() {
				var logged = (function() {
					var isLogged = null;
					$.ajax({
						'async': false,
						'global': false,
						'url': '/user/isLogged/',
						'success': function(resp) {
							isLogged = (resp === "1");
						}
					});
					return isLogged;
				})();
				return logged;
			}
			function statusCheck() {
				hidden = !hidden;
				if(hidden) {
					document.getElementById('b1').style.visibility = 'hidden';
					document.getElementById('b2').style.visibility = 'hidden';
					document.getElementById('b3').style.visibility = 'visible';
				} else {
					document.getElementById('b1').style.visibility = 'visible';
					document.getElementById('b2').style.visibility = 'visible';
					document.getElementById('b3').style.visibility = 'hidden';
				}
			}
		</script>
  </head>
  <body>


<div class="container-fluid nopadding">

<!-- This is not really part of the nav bar -->
  <!-- Menu Items -->
  <div class="collapse navbar-collapse" id="mainNavBar" >
      <ul class="nav navbar-nav">
<!-- Implement as a popup? Using JS -->
<!-- Make this be replaced by My Profile when its clicked -->
<li><a href="login.jsp">Login/Register</a></li>
					<li><a href="how.html">How it Works</a></li>
					<li><a href="#">About Us</a></li>
          <% if((String)session.getAttribute("user_name")!=null){
            String user_name=""+(String)session.getAttribute("user_name");%>
            <li style="color: red;"><a href="#">Welcome <%=user_name %></a></li>
            <%} %>


      </ul>
  </div>
<a href="index.jsp"><img src="images/solodrinkerlogo.gif" class="img-rounded" style="position:absolute;z-index:2;display: block;margin-left:850px"></a>
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar">
    <span class="glyphicon glyphicon-menu-hamburger"></span>

</button>
</div>

<div class="jumbotron nopadding">
<!-- Gotta love specificityMeet other lonely drinker in your area who are out right now!!!-->
<img src="images/portcity.jpg" id="banner">
<div class="center">
<p style="font-family:sans-serif;font-size:100px;font-weight:bolder;background-color:black;color:white;letter-spacing:-2px;padding:10px;padding-bottom:40px;">
OUT ALONE?<span style=""></span>

</p>

<p style="font-family:serif;font-size:60px;font-weight:bold;font-style:italic;color:red;letter-spacing:5px;text-indent:400px;margin-top:-2em;">
You don't have to be...

</p>



<div style="padding:1em;align-center;width:30%;margin:auto;">
  <a class="btn btn-primary btn-xl" id="b1" href="shareCompany.jsp" role="button" style="background-color:#4CAF50;float:left;">Check In</a>
<a class="btn btn-primary btn-xl" id="b2" href="SearchServlet" role="button"  style="background-color:#4CAF50;float:right;">See Nearby Solo's</a>
<a class="btn btn-primary btn-xl" id="b3" href="login.jsp" role="button" style="background-color:#4CAF50;float:left;margin-top:20px;margin-right:20px">Register To Use Our Service</a>

</div>
</div>
</div>
</div>
<div class="container" style="margin-top:20px">
<div class="row">
<div class="col-lg-6">
<h1>About Us:</h1>


<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam feugiat finibus ipsum quis pulvinar. Phasellus malesuada massa arcu, non congue lectus efficitur sit amet. Vivamus ac magna eu magna euismod dapibus quis et lacus. Pellentesque molestie ultricies dictum. Donec in venenatis arcu. Nam eget ullamcorper metus, quis blandit enim. Vivamus at urna et libero malesuada gravida et et dolor. Aenean dolor libero, hendrerit vitae scelerisque id, convallis vel lorem. Morbi ex ipsum, suscipit eu nisl sed, interdum porta dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque turpis mauris, tristique vitae nibh in, sollicitudin varius libero.
</p>
</div>

<div class="col-lg-6">
<h4>Spontenaity</h4>
<p>Life is unpredictable! Is your night out not going as planned? Have no company and want to meet people?</p>

<h4>Socialize</h4>
<p>Make more friends! Who doesn't want to make more friends?</p>

<h4>Quick and Simple</h4>
<p>Start using the app before you finish reading this sentence!</p>
</div>

</div>
<div class="row footer">
<div class="col-lg-12">

</div>

</div>
</div> <!-- /container -->

      </body>
</html>
