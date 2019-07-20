<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="bean" class="proj.BoardBean" scope="session"/>
<%
	  String nowPage = request.getParameter("nowPage");
	  String subject = bean.getSubject();
	  String content = bean.getContent(); 
%>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif; background: #f4f4f4; }
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: white;
  border-radius: .5em;
}

input[type=file]{
  margin: 5px 0 22px 0;
}

textarea{
  margin: 5px 0 22px 0;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: white;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: blue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  opacity: 0.9;
  font-weight: 700;
  width: 100%;
}

button:hover {
  opacity:1;
}

.cancelbtn, .defaultbtn {
  float: left;
  width: 25%;
}

/* Extra styles for the cancel button */
.postbtn {
  padding: 14px 20px;
  background-color: #4CAF50;
  float: left;
  width: 50%;
}

.cancelbtn {
  background-color: #f44336;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
	}
}
</style>
<head>
<title>JSPBoard</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div align="center">
<br><br>
<h1>Write reply</h1>
<form method="post" action="boardReply" >
<table width="600" cellpadding="7">
 <tr>
  <td>
   <table>
    <tr>
     <td width="20%" style="font-weight:700">Name</td>
     <td width="80%">
	  <input type="text" name="name" size="30" maxlength="20"></td>
    </tr>
    <tr>
     <td style="font-weight:700">Title</td>
     <td>
	  <input type="text" name="subject" size="50" value="´äº¯ : <%=subject%>" maxlength="50"></td> 
    </tr>
	<tr>
     <td style="font-weight:700">Contents</td>
     <td>
	  <textarea name="content" rows="12" cols="70">
      	<%=content %>
      	Make a Reply!
      	</textarea>
      </td>
    </tr>
    <tr>
     <td style="font-weight:700">Password</td> 
     <td>
	  <input type="password" name="pass" size="15" maxlength="15"></td> 
    </tr>
    <tr>
     <td colspan="2" height="5"><hr/></td>
    </tr>
	<tr> 
     <td colspan="2">
	  <button class="postbtn" type="submit" value="Make a reply" >Post reply</button>
      <button class="defaultbtn" type="reset" value="Again">Reset</button>
      <button class="cancelbtn" type="button" value="Back" onClick="history.back()">Back</button>
     </td>
    </tr> 
   </table>
  </td>
 </tr>
</table>
 <input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>" >
 <input type="hidden" name="nowPage" value="<%=nowPage%>">
 <input type="hidden" name="ref" value="<%=bean.getRef()%>">
 <input type="hidden" name="pos" value="<%=bean.getPos()%>">
 <input type="hidden" name="depth" value="<%=bean.getDepth()%>">
</form> 
</div>
</body>
</html>