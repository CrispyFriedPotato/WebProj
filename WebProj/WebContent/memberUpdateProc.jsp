<%@ page contentType="text/html; charset=UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="mMgr" class="proj.MemberMgr"/>
<jsp:useBean id="mBean" class="proj.MemberBean"/>
<jsp:setProperty  name="mBean" property="*"/>
<%
	  boolean result = mMgr.updateMember(mBean);
	  if(result){
%>
<script type="text/javascript">
		alert("Succeed to modify your information");
		location.href="../main.jsp";
</script>
<% }else{%>
<script type="text/javascript">
		alert("Failed to modify your information");
		history.back();
</script>
<%} %>