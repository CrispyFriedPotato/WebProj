<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
      String strTitle = "KORSWE";
	String contentPage=request.getParameter("contentPage");
    if(contentPage==null)
        contentPage="FirstView.jsp";
%>

<html>
<head>
<meta charset="UTF-8">
<title><%=strTitle%></title>
<link href="Main.css" rel="stylesheet" type="text/css">
<link href="Sign_in.css" rel="stylesheet" type="text/css">
<link href="Sign_up.css" rel="stylesheet" type="text/css">
<style>
    	#header {
            float: left;
            width: 100%;
            height: 100px;
        }
        #tabs {
        		float:left;
        		background-color: #0045a0;
        		width: 100%;
        		height: 50px;
        }
        
        #main {
            float: left;
            width: 100%;
            height:1000px;
            text-align:center;
            vertical-align: middle;
        }
       
    </style>
</head>
<body>
		
		<div id="header">
			<jsp:include page="head.jsp"/>
		</div>
	
		<div id="tabs">
			<jsp:include page="Nav.jsp"/>
		</div>
		
		<div id="main">
			<jsp:include page="<%=contentPage%>"/>
		</div>
		</body>
</html>