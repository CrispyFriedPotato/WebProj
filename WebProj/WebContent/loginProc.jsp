<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="mMgr" class="proj.MemberMgr"/>
<%
	  request.setCharacterEncoding("UTF-8");
	  String cPath = request.getContextPath();
	  String id = request.getParameter("id");
	  String pass = request.getParameter("pwd");
	  String url = cPath+"/main.jsp";
	  String msg = "Failed to Sign in.";
	  
	  boolean result = mMgr.loginMember(id,pass);
	  if(result){
	    session.setAttribute("idKey",id);
	    msg = "Succeed to Sign in.";
	  }
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>