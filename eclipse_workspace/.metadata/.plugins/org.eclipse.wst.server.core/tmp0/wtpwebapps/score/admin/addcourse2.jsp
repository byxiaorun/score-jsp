<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="ADD" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ADD:reg></ADD:reg>
<%
    request.setCharacterEncoding("utf-8");
    String cid=request.getParameter("cid").trim();
    String cname=request.getParameter("cname").trim();
%>
<ADD:addcourse cname="<%=cname %>" cid="<%=cid %>"></ADD:addcourse>
</body>
</html>