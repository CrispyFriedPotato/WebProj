<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>JSP Board</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<style>

body {font-family: Arial, Helvetica, sans-serif;}
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
<body bgcolor="#f4f4f4">
<div align="center">
<br/><br/>
<h1>Write Post</h1>
<br/>
<form name="postFrm" method="post" action="boardPost" enctype="multipart/form-data">
<table width="600" cellpadding="3" align="center">
	<tr>
		<td align=center>
		<table align="center">
			<tr>
				<td width="10%" style="font-weight:700">Name</td>
				<td width="90%">
				<input type="text" name="name" size="10" maxlength="8"></td>
			</tr>
			<tr>
				<td style="font-weight:700" >Title</td>
				<td>
				<input type="text" name="subject" size="50" maxlength="30"></td>
			</tr>
			<tr>
				<td style="font-weight:700">Contents</td>
				<td><textarea name="content" rows="10" cols="70"></textarea></td>
			</tr>
			<tr>
				<td style="font-weight:700">Password</td>
				<td><input type="password" name="pass" size="15" maxlength="15"></td>
			</tr>
			<tr>
			 <tr>
     			<td style="font-weight:700">Find file</td> 
     			<td><input class="filebtn" type="file" name="filename" size="50" maxlength="50"></td>
    		</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td colspan="3">
					 <button class="postbtn" type="submit" value="Post">Post</button>
					 <button class="defaultbtn" type="reset" value="Re-write">Reset</button>
					 <button class="cancelbtn" type="button" value="List" onClick="javascript:location.href='list.jsp'">Back</button>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
</form>
</div>
</body>
</html>