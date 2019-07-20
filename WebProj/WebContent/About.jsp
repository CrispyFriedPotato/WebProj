<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="Sign_in.css" rel="stylesheet" type="text/css">
<link href="Sign_up.css" rel="stylesheet" type="text/css">
<title>About</title>
<style>
.card {
  position : relative;
  top: 20px;
  left : 20px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
  display : inline-block;
}
.pic {
  display: block;
  max-width:400px;
  max-height:380px;
  width: auto;
  height: auto;
}
.title {
  color: grey;
  font-size: 18px;
}
.card button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}
a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}
button:hover, a:hover {
  opacity: 0.7;
}
.leftcolumn { 
  float: left;
  width: 100%;
}
/* Right column */
.rightcolumn {
  float: right;
  width: 67%;
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
.box {
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

</style>
</head>
<body>


<section>
<jsp:include page="head.jsp"/>
<jsp:include page="Nav.jsp"/>
<div class="row">
  <div class="leftcolumn">
    <div class="box">
      <h1>The website</h1> <img src="images/logo2.png"  style="float:right;width:40%" >
    <div>
      <p style="font-size:120%;" >The site is about connecting people and sharing culture. The concept is about exchanging culture between Korea and Sweden, a board where users can connect and help each other, and share information about one another's culture and country! We hope that this site can bring people together and provide a place where connections are made between these two interesting countries! Sweden will celebrate the 60th anniversary of their diplomatic relations with Korea this year, so this was a great time to keep the bond strong!</p>
    </div>
  </div>
 </div>
</div>

<div class="rightcolumn">
    <div class="box">
      <h1>The developers</h1>
      <p style="font-size:120%" >The people amazing and awesome people behind the site. We are two computer science majors who are diving into web design, and this is our first project together. We have both an interesting connection since we both studied as exchange students at each others home university, in Sweden and South Korea. </p>
    </div>
  </div>


<div class="card mr-5" >
  <img class="pic" src="images/jiho.jpeg" alt="Jiho" style="width:300px" style="height:300px">
  <h1>Jiho Lee</h1>
  <p class="title">Developer</p>
  <p>Korea</p>
  <p>Sookmyung Women's University</p>
  <div style="margin: 24px 0;">
    <a href="https://github.com/CrispyFriedPotato"><i class="fa fa-github"></i></a> 
    <a href="https://www.linkedin.com/in/jihopotato"><i class="fa fa-linkedin"></i></a>  
    <a href="https://www.facebook.com/jihopotato"><i class="fa fa-facebook"></i></a> 
  </div>
  <p>Contact</p>
</div>

<div class="card mr-5">
  <img class="pic" src="images/erik.jpg" alt="Erik" style="width:300px" style="height:300px">
  <h1>Erik Sortelius</h1>
  <p class="title">Developer</p>
  <p>Sweden</p>
  <p>Skovde University</p>
  <div style="margin: 24px 0;">
    <a href="https://github.com/ErikSortelius"><i class="fa fa-github"></i></a> 
    <a href="https://www.linkedin.com/in/eriksortelius/"><i class="fa fa-linkedin"></i></a>  
  </div>
  <p>Contact</a></p>
</div>

</section>

</body>
</html>