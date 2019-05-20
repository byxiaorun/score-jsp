<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="SETCOUR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<SETCOUR:reg></SETCOUR:reg>
<%
	String idc=request.getParameter("Cid");	
	session.setAttribute("idc", idc);
%>

<SETCOUR:querycourse idc="<%=idc %>"></SETCOUR:querycourse>

<form action="upcourse3.jsp" method="post">
<table>
	<tr><th>课程号</th><td><input type="text" name="cid" required="required" value="<%=session.getAttribute("idc")%>"></td></tr>
	<tr><th>课程名称</th><td><input type="text" name="cname" required="required" value="<%=cname %>"></td></tr>

	<tr><td colspan="2"><input type="submit" value="提交"></td></tr>
</table>
</form>

</body>
</html>