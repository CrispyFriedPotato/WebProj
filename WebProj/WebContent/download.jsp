<%@page contentType="application; charset=EUC-KR"%>
<jsp:useBean id="bMgr" class="proj.BoardMgr" />
<%
	  bMgr.downLoad(request, response, out, pageContext);
%>