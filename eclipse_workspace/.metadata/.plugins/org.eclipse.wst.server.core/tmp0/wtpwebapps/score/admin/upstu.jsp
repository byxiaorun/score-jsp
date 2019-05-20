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

<%
			String ck="student";
%>
		<OK:queryall tbname="<%=ck%>" />
	<p><%=queryResult %>
<form action="upstu2.jsp" method="post"><p>
请输入要修改学生记录的学号：<input type="text" name="id" required="required">
<input type="submit" value="确定">
</form>
</body>
</html>