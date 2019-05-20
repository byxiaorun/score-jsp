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
	String courseid=request.getParameter("courseid");	
	String studentid=request.getParameter("studentid");	
	session.setAttribute("courseid", courseid);
	session.setAttribute("studentid", studentid);
	
%>

<SETCOUR:querygrade studentid="<%=studentid %>" courseid="<%=courseid %>"></SETCOUR:querygrade>

<form action="upgrade3.jsp" method="post">
<table>
	<tr><th>学号</th><td><input type="text" name="sid" required="required" value="<%=studentid %>"></td></tr>
	<tr><th>课程号</th><td><input type="text" name="cid" required="required" value="<%=courseid %>"></td></tr>
	<tr><th>分数</th><td><input type="text" name="grade" required="required" value="<%=grade1 %>"></td></tr>
	<tr><td colspan="2"><input type="submit" value="提交"></td></tr>
</table>
</form>

</body>
</html>