<%@ page contentType="text/html; charset=EUC-KR" %>
<%@page import="proj.BoardBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="bMgr" class="proj.BoardMgr" />
<%	
	  request.setCharacterEncoding("UTF-8");
	  
      int totalRecord=0; //��ü���ڵ��
	  int numPerPage=10; // �������� ���ڵ� �� 
	  int pagePerBlock=15; //���� �������� 
	  
	  int totalPage=0; //��ü ������ ��
	  int totalBlock=0;  //��ü ���� 

	  int nowPage=1; // ����������
	  int nowBlock=1;  //�����
	  
	  int start=0; //����� select ���۹�ȣ
	  int end=10; //���۹�ȣ�� ���� ������ select ����
	  
	  int listSize=0; //���� �о�� �Խù��� ��

	String keyWord = "", keyField = "";
	Vector<BoardBean> vlist = null;
	if (request.getParameter("keyWord") != null) {
		keyWord = request.getParameter("keyWord");
		keyField = request.getParameter("keyField");
	}
	if (request.getParameter("reload") != null){
		if(request.getParameter("reload").equals("true")) {
			keyWord = "";
			keyField = "";
		}
	}
	
	if (request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	 start = (nowPage * numPerPage)-numPerPage;
	 end = numPerPage;
	 
	totalRecord = bMgr.getTotalCount(keyField, keyWord);
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage);  //��ü��������
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock); //����� ���
	  
	totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock);  //��ü�����
%>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<link href="Sign_in.css" rel="stylesheet" type="text/css">
<link href="Sign_up.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function list() {
		document.listFrm.action = "list.jsp";
		document.listFrm.submit();
	}
	
	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}
	
	function block(value){
		 document.readFrm.nowPage.value=<%=pagePerBlock%>*(value-1)+1;
		 document.readFrm.submit();
	} 
	
	function read(num){
		document.readFrm.num.value=num;
		document.readFrm.action="read.jsp";
		document.readFrm.submit();
	}
	
	function check() {
	     if (document.searchFrm.keyWord.value == "") {
	   alert("Search");
	   document.searchFrm.keyWord.focus();
	   return;
	     }
	  document.searchFrm.submit();
	 }
</script>
<style type="text/css">
body.main {
  border-radius: 5px;
  border-style : solid;
  background-color: #f2f2f2;
  padding: 10px;
}

.btn {
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 8px 18px;
  font-size: 16px;
  cursor: pointer;
  border-radius: .5em;
  font-weight: 700;
}

.write {
  border-color: #4CAF50;
  color: #4CAF50;
  text-align: center;
  text-decoration: none;
}

.search {
  border-color: gray;
  color: gray;
  padding: .6em 1.4em .5em .8em;
  font-size: 16px;
  font-weight: 700;
  text-align: center;
}

.search:hover {
  background-color: #aaa;
  color: white;
  padding: .6em 1.4em .5em .8em;
  font-size: 16px;
  text-align: center;
}

.write:hover {
  background-color: #4CAF50;
  color: white;
  text-align: center;
}

.select-css {
    font-size: 16px;
    font-weight: 700;
    color: #444;
    line-height: 1.3;
    padding: .6em 1.4em .5em .8em;
    width: 40%;
    box-sizing: border-box;
    margin: 0;
    border: 1px solid #aaa;
    box-shadow: 0 1px 0 1px rgba(0,0,0,.04);
    border-radius: .5em;
    appearance: none;
    background-color: #fff;
    background-repeat: no-repeat, repeat;
    background-position: right .7em top 50%, 0 0;
    background-size: .65em auto, 100%;
}
.select-css::-ms-expand {
    display: none;
}
.select-css:hover {
    border-color: #888;
}
.select-css:focus {
    border-color: #aaa;
    box-shadow: 0 0 1px 3px rgba(59, 153, 252, .7);
    color: #222; 
    outline: none;
}
.select-css option {
    font-weight:normal;
}


</style>
</head>
<body class="main" bgcolor="#f4f4f4">
<jsp:include page="head.jsp"/>
<jsp:include page="Nav.jsp"/>
<div align="center">
	<table align="center" width="600">
		<tr>
			<td>Total : <%=totalRecord%>Articles(<font color="red"><%=nowPage%>/<%=totalPage%>Pages</font>)</td>
			<td align="right">
				<a class="btn write" href="post.jsp" role="button">Write</a>
				<a class="btn write" href="javascript:list()" role="button">First</a>
			</td>
		</tr>
	</table>
	<table align="center" width="600" cellpadding="3">
		<tr>
			<td align="center" colspan="2">
			<%
				  vlist = bMgr.getBoardList(keyField, keyWord, start, end);
				  listSize = vlist.size();//������ ȭ�鿡 ������ �Խù�����
				  if (vlist.isEmpty()) {
					out.println("No Post");
				  } else {
			%>
				  <table width="100%" cellpadding="2" cellspacing="0">
					<tr align="center" bgcolor="#D0D0D0" height="120%">
						<td>Number</td>
						<td>Title</td>
						<td>Name</td>
						<td>Date</td>
						<td>Views</td>
					</tr>
					<%
						  for (int i = 0;i<numPerPage; i++) {
							if (i == listSize) break;
							BoardBean bean = vlist.get(i);
							int num = bean.getNum();
							String name = bean.getName();
							String subject = bean.getSubject();
							String regdate = bean.getRegdate();
							int depth = bean.getDepth();
							int count = bean.getCount(); 
					%>
					<tr>
						<td align="center">
							<%=totalRecord-((nowPage-1)*numPerPage)-i%>
						</td>
						<td>
						<%
							  if(depth>0){
								for(int j=0;j<depth;j++){
									out.println("&nbsp;&nbsp;");
									}
								}
						%>
						  <a href="javascript:read('<%=num%>')"><%=subject%></a>
						</td>
						<td align="center"><%=name%></td>
						<td align="center"><%=regdate%></td>
						<td align="center"><%=count%></td>
						</tr>
					<%}//for%>
				</table> <%
 			}//if
 		%>
			</td>
		</tr>
		<tr>
			<td colspan="2"><br /><br /></td>
		</tr>
		<tr>
			<td>
			<!-- ����¡ �� �� ó�� Start--> 
			<%
   				  int pageStart = (nowBlock -1)*pagePerBlock + 1 ; //�ϴ� ������ ���۹�ȣ
   				  int pageEnd = ((pageStart + pagePerBlock ) <= totalPage) ?  (pageStart + pagePerBlock): totalPage+1; 
   				  //�ϴ� ������ ����ȣ
   				  if(totalPage !=0){
    			  	if (nowBlock > 1) {%>
    			  		<a href="javascript:block('<%=nowBlock-1%>')">prev...</a><%}%>&nbsp; 
    			  		<%for ( ; pageStart < pageEnd; pageStart++){%>
     			     	<a href="javascript:pageing('<%=pageStart %>')"> 
     					<%if(pageStart==nowPage) {%><font color="blue"> <%}%>
     					[<%=pageStart %>] 
     					<%if(pageStart==nowPage) {%></font> <%}%></a> 
    					<%}//for%>&nbsp; 
    					<%if (totalBlock > nowBlock ) {%>
    					<a href="javascript:block('<%=nowBlock+1%>')">.....next</a>
    				<%}%>&nbsp;  
   				<%}%>
 				<!-- ����¡ �� �� ó�� End-->
				</td>
			</tr>
		</table>
	<hr width="600" />
	<form  name="searchFrm"  method="get" action="list.jsp">
	<table width="600" cellpadding="4" cellspacing="0">
 		<tr>
  			<td align="center" valign="bottom">
   				<select class="select-css" name="keyField" size="1" >
    				<option value="name"> Name</option>
    				<option value="subject"> Title</option>
    				<option value="content"> Contents</option>
   				</select>
   				<input class="select-css" size="16" name="keyWord">
   				<input class="btn search" type="button"  value="Search" onClick="javascript:check()">
   				<input type="hidden" name="nowPage" value="1">
  			</td>
 		</tr>
	</table>
	</form>
	<form name="listFrm" method="post">
		<input type="hidden" name="reload" value="true"> 
		<input type="hidden" name="nowPage" value="1">
	</form>
	<form name="readFrm" method="get">
		<input type="hidden" name="num"> 
		<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
		<input type="hidden" name="keyField" value="<%=keyField%>"> 
		<input type="hidden" name="keyWord" value="<%=keyWord%>">
	</form>
</div>
</body>
</html>