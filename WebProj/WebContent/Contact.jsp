<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="Main.css">
<link rel="stylesheet" type="text/css" href="Home.css">
<link rel="stylesheet" type="text/css" href="Sign_in.css">
<link rel="stylesheet" type="text/css" href="Sign_up.css">

<title>KORSWE</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>

<body>
	<header>
		<a href="Home.html"><img src="images/logo.png" height="80" width="180" alt="KORSWE" ></a>
		<a style="float:right"><button onclick="document.getElementById('register').style.display='block'" class="btn reg" style="width:auto" >Sign Up</button></a> 
		<a style="float:right"><button onclick="document.getElementById('login').style.display='block'" class="btn log" style ="width:auto" >Sign In</button></a> 	 
		 	
		<!-- tabs -->
		<nav>
		<div class="topnav">
 			 <a href="Home.jsp">Home</a>
  			 <a href="Swe.jsp">Sweden</a>
  			 <a href="Kor.jsp">Korea</a>
 			 <a href="Cafe.jsp">Cafe</a>
			  <a href="About.jsp">About</a>
 			 <a class="active" href="Contact.jsp">Contact</a>
 			
		</div>
		</nav>
		<!-- sign in, login pop window -->
		<div id="login" class="modal1">
		 <form class="modal-content animate" action="/action_page.php">
	   
	    <div class="imgcontainer">
	      <span onclick="document.getElementById('login').style.display='none'" class="close" title="Close Modal">&times;</span>  
	    </div>
	
	    <div class="container">
				    <h1>Sign in</h1>
	    <hr>
	      <label for="uname"><b>User name</b></label>
	      <input type="text" placeholder="Enter Username" name="uname" required>
	
	      <label for="psw"><b>Password</b></label>
	      <input type="password" placeholder="Enter Password" name="psw" required>
	        
	      <button type="submit">Login</button>
	      <label>
	        <input type="checkbox" checked="checked" name="remember"> Remember me
	      </label>
	    </div>
	    <div class="clearfix mr-10" style="background-color:#f1f1f1">
	      <button type="button" onclick="document.getElementById('login').style.display='none'" class="cancelbtn">Cancel</button>
	      <span class="psw">Forgot <a href="#">password?</a></span>
	    </div>
	  	</form>
		</div>
	 <!-- register pop window --> 
		<div id="register" class="modal2">
		 <form class="modal-content animate" action="/action_page.php">
	    <div class="imgcontainer">
	      <span onclick="document.getElementById('register').style.display='none'" class="close" title="Close Modal">&times;</span>
	    </div>
		    <div class="container">
		      <h1>Sign Up</h1>
		      <p>Please fill in this form to create an account.</p>
		      <hr>
		      <label for="email"><b>Email</b></label>
		      <input type="text" placeholder="Enter Email" name="email" required>
		
		      <label for="psw"><b>Password</b></label>
		      <input type="password" placeholder="Enter Password" name="psw" required>
		
		      <label for="psw-repeat"><b>Repeat Password</b></label>
		      <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
		      
		      <label>
		        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
		      </label>
		      <div class="clearfix">
		        <button type="button" onclick="document.getElementById('register').style.display='none'" class="cancelbtn">Cancel</button>
		        <button type="submit" class="signupbtn">Sign Up</button>
		      </div>
		    </div>
 		 </form>
		</div>
		
	 </header>
	
	<section>
	<h3>Contact Form</h3>

<div class="container">
  <form action="/action_page.php">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name..">


    <label for="subject">Subject</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>
	</section>
</body>
<script>

var modal1 = document.getElementById('login');
var modal2 = document.getElementById('register');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal1) {
    modal1.style.display = "none";
  }
}
window.onclick = function(event) {
	  if (event.target == modal2) {
	    modal2.style.display = "none";
}
}
</script>
</html>