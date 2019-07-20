<%@ page contentType="text/html; charset=UTF-8" %>
<!-- usebean -->
<jsp:useBean id="mMgr" class="proj.MemberMgr" />
<%
	request.setCharacterEncoding("UTF-8");
	//URL로 넘겨준 id 받아서 
	String id = request.getParameter("id");
	//checkId 메소드 호출
	boolean result = mMgr.checkId(id);
%>
<html>
<head>
<title>ID Taken?</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#F8D7F7">
	<div align="center">
		<br/><b><%=id%></b>
		<%
			if (result) {
				
				out.println("\nThis ID already has been taken.<p/>");
			} else {
				
				out.println("You can use this ID.<p/>");
			}
		%>
		<a href="#" onClick="self.close()">Close</a>
	</div>
</body>
</html>