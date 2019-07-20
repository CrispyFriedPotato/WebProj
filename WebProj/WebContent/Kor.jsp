<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Korea</title>
<link rel="stylesheet" type="text/css" href="Main.css">
<link rel="stylesheet" type="text/css" href="Sign_in.css">
<link rel="stylesheet" type="text/css" href="Sign_up.css">
</head>
<style>
.leftcolumn { 
  float: left;
  width: 75%;
}
/* Right column */
.rightcolumn {
  float: left;
  width: 20%;
  padding-left: 20px;
  border-radius: 5px;
}
/* Fake image */
.fakeimg {
  background-color: #4993f4;
  width: 100%;
  padding: 20px;
}
/* Add a card effect for articles */
.card {
  background-color: white;
  padding: 20px;
  margin-top: 20px;
  border-style: groove;
}
/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn { 
    width: 100%;
    padding: 0;
  }
}
/* Slideshow container */
.slideshow-container {
  position: relative;
  background: #f1f1f1f1;
}
/* Slides */
.mySlides {
  display: none;
  padding: 80px;
  text-align: center;
}
/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -30px;
  padding: 16px;
  color: #888;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
}
/* Position the "next button" to the right */
.next {
  position: absolute;
  right: 0;
  border-radius: 3px 0 0 3px;
}
/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
  color: white;
}
/* The dot/bullet/indicator container */
.dot-container {
  text-align: center;
  padding: 20px;
  background: #ddd;
}
/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}
/* Add a background color to the active dot/circle */
.active, .dot:hover {
  background-color: #717171;
}
/* Add an italic font style to all quotes */
q {font-style: italic;}
/* Add a blue color to the author */
.author {
color: cornflowerblue;
}
</style>
<body>
<jsp:include page="head.jsp"/>
<jsp:include page="Nav.jsp"/>
<section>
<!-------------------------------------- QUOTES ----------------------------------------->
<div class="slideshow-container">

  <div class="mySlides">
    <q>I'm going to go where my heart takes me, even if it's a messy road.</q>
    <p class="author">- Ha Myung-hee</p>
  </div>

  <div class="mySlides">
    <q>Even in the far future, never forget the you of right now - Wherever you are right now, youre just taking a break.</q>
    <p class="author">- BTS</p>
  </div>

  <div class="mySlides">
    <q>Chew on your feelings that are cornerned like you would chew on rice. Anyway, life is something that you need to digest.</q>
    <p class="author">- Chun Yang Hee</p>
  </div>

  <!-- Next/prev buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>

<!-- Dots/bullets/indicators -->
<div class="dot-container">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<!-------------------------------------- BOXES ----------------------------------------->

<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h1>The eastern peninsula</h1>
      <h4>Introduction to South Korea as a country</h4>
      <img src="images/k2.jpg" style="width:95%">
      <p style="font-size:120%;" >South Korea is an extraordinary country filled with beautiful beaches, thriving cities, ancient temples, remarkable natural scenery and most importantly, friendly people with ancient history. South Korea has come a long way since The Korean War which ended in 1953. Almost all of South Korea was completely levelled during the war which is hard to imagine if you have seen Korea recently.</p>

    </div>
    <div class="card">
      <h1>Korean culture</h1>
      <h4>Food is close to Korean heart</h4>
      <img src="images/k4.jpg" style="width:95%">
      <p style="font-size:120%;" >Since ancient times, the Korean people have maintained a belief that food and medicine have the same origin and hence perform the same function, following the adage that 'food is the best medicine'. They believe that health and illness alike come from the food they consume and how they eat it, and this idea has played a crucial role in the development of traditional Korean medicine whose basic principle is that we should use medicine only after food has failed. </p>
    </div>
  </div>
  <div class="rightcolumn">
    <div class="card">
      <h2>About this site..</h2>
      <p>If you want to know more, head over to <a href="About.jsp">this page</a>.</p>
    </div>
  </div>
  <div class="rightcolumn">
    <div class="card">
      <h2>Create a connection</h2>
      <p>Connect with people from all over the world in the <a href="Cafe.jsp">cafe</a>.</p>
    </div>
  </div>
</div>
</section>
<script>
var modal1 = document.getElementById('login');
var modal2 = document.getElementById('register');


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
var slideIndex = 1;
showSlides(slideIndex);
function plusSlides(n) {
  showSlides(slideIndex += n);
}
function currentSlide(n) {
  showSlides(slideIndex = n);
}


function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1} 
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none"; 
    }
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
    }
  slides[slideIndex-1].style.display = "block"; 
  dots[slideIndex-1].className += " active";
}
</script>
</body>
</html>