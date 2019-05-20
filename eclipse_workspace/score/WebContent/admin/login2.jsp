<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="login" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String username=request.getParameter("username").trim();
	String pwd=request.getParameter("pwd").trim();
	
%>
	<login:login pwd="<%=pwd %>" username="<%=username %>"></login:login>
</body>
</html>