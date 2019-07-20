<%@page contentType="text/html; charset=UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="mgr" class="proj.MemberMgr"/>
<jsp:useBean id="bean" class="proj.MemberBean"/>
<!-- 폼에서 넘어온 모든 애를 setproperty 해줌  -->
<jsp:setProperty property="*" name="bean"/>
<%
		boolean result = mgr.insertMember(bean);
	 
	  if(result){
%>
		<script type="text/javascript">
		alert("Succeed to Sign up.");
		location.href="../main.jsp";
		</script>
		<% }else{%>
		<script type="text/javascript">
				alert("Failed to Sign up:(");
				history.back();
		</script>
		<%} %>