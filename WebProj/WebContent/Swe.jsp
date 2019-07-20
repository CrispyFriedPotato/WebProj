<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sweden</title>
	<link rel="stylesheet" type="text/css" href="Main.css">
	<link rel="stylesheet" type="text/css" href="Sign_in.css">
	<link rel="stylesheet" type="text/css" href="Sign_up.css">
</head>

<style>
/* Create two unequal columns that floats next to each other */
/* Left column */
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
    <q>I do not mind dying, just not tomorrow, I have a lot to do tomorrow. </q>
    <p class="author">- Astrid Lindgren</p>
  </div>

  <div class="mySlides">
    <q>Nothing is simpler - than being enchanted.</q>
    <p class="author">- Tomas Tranströmer</p>
  </div>

  <div class="mySlides">
    <q>The rear window is really dirty but it does not matter, I never look back.</q>
    <p class="author">- Håkan Hellström</p>
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
      <h1>The tall country in the north</h1>
      <h4>Introduction to Sweden as a country</h4>
      <img src="images/s2.jpg" style="width:95%">
      <p style="font-size:120%;" >Sweden is a sparsely populated country, characterised by its long coastline, extensive forests and numerous lakes. It is one of the world’s northernmost countries. In terms of surface area it is comparable to Spain, Thailand or the American state of California. Sweden’s borders have been unchanged since 1905 and the country has not been at war since 1814.</p>
    </div>
    <div class="card">
      <h1>How to become swedish</h1>
      <h4>Swedish culture and customs</h4>
      <img src="images/s4.jpg" style="width:95%">
      <p>If you want to learn about swedish culture and "Swedishness" you can take a look at this <a href="https://youtu.be/v8_7yPocGPg" >clip</a>.</p>
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
      <p>Connect with people from all over the world in the <a href="list.jsp">cafe</a>.</p>
    </div>
  </div>
</div>

</section>
</body>

<script>

var slideIndex = 1;
showSlides(slideIndex);
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

</html>