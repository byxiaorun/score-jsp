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
<%
    request.setCharacterEncoding("utf-8");
    String sid=request.getParameter("sid").trim();
    String cid=request.getParameter("cid").trim();
    String grade=request.getParameter("grade").trim();
%>
<ADD:addgrade sid="<%=sid %>" cid="<%=cid %>" grade="<%=grade %>"></ADD:addgrade>
</body>
</html>