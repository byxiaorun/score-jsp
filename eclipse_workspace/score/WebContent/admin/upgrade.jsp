<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="OK"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<OK:reg></OK:reg>
<p>
<%
			String ck = "score";
%>
		<OK:queryall tbname="<%=ck%>" />
		<%=queryResult %>
<form action="upgrade2.jsp" method="post"><p>
请输入要修改的学号：<input type="text" name="studentid" required="required"><br>
请输入要修改的课程号：<input type="text" name="courseid" required="required"><br>
<input type="submit" value="确定">
</form>
</body>
</html>