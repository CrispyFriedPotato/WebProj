<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First Page</title>
<link rel="stylesheet" type="text/css" href="Main.css">
<link rel="stylesheet" type="text/css" href="Home.css">
</head>
<body>
	<article>
	<table>
		
	
	
	</table>
	<!-- SlideShow section -->
	<section>
	
		<div class="slideshow-container">
		  <!-- Full-width images with number and caption text -->
		  <div class="mySlides fade">
		    <div class="numbertext">1 / 4</div>
		    <img src="images/KyeongBok.jpg" style="width:100%" height="50%">
		    <div class="text">Gyeongbokgung Palace in Korea</div>
		  </div>
		
		  <div class="mySlides fade">
		    <div class="numbertext">2 / 4</div>
		    <img src="images/Sami.jpg" style="width:100%" height="50%">
		    <div class="text">Sami in Sweden</div>
		  </div>
		
		  <div class="mySlides fade">
		    <div class="numbertext">3 / 4</div>
		    <img src="images/View_korea.jpg" style="width:100%" height="50%">
		    <div class="text">View of Korea</div>
		  </div>
		   <div class="mySlides fade">
		    <div class="numbertext">4 / 4</div>
		    <img src="images/stockholm.jpg" style="width:100%" height="50%">
		    <div class="text">Stockholm, capital of Sweden</div>
		  </div>
		
		  </div>
		<!-- The dots/circles -->
		<div style="text-align:center">
		  <span class="dot" onclick="currentSlide(1)"></span> 
		  <span class="dot" onclick="currentSlide(2)"></span> 
		  <span class="dot" onclick="currentSlide(3)"></span> 
		   <span class="dot" onclick="currentSlide(4)"></span> 
		</div>
	</section>
</article>
</body>
<script>
var slideIndex = 0;

showSlides();
	function showSlides() {
	  var i;
	  var slides = document.getElementsByClassName("mySlides");
	  var dots = document.getElementsByClassName("dot");
	  for (i = 0; i < slides.length; i++) {
	    slides[i].style.display = "none";  
	  }
	  slideIndex++;
	  if (slideIndex > slides.length) {slideIndex = 1}    
	  for (i = 0; i < dots.length; i++) {
	    dots[i].className = dots[i].className.replace(" active", "");
	  }
	  slides[slideIndex-1].style.display = "block";  
	  dots[slideIndex-1].className += " active";
	  setTimeout(showSlides, 4000); // Change image every 2 seconds
	}
</script>
</html>