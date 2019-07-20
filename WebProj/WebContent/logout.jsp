<%@ page contentType="text/html; charset=UTF-8"%>
<%
      session.invalidate();
%>
<script>
   alert('Done Logout');
   top.document.location.reload(); 
   location.href="<%=request.getContextPath()%>/main.jsp";
</script>