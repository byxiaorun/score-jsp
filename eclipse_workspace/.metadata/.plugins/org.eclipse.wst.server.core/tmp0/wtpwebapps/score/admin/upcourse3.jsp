<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags/" prefix="SET" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	
	request.setCharacterEncoding("utf-8");
	String idc=(String)session.getAttribute("idc");
	String cid=request.getParameter("cid").trim();
	String cname=request.getParameter("cname").trim();
	
%>
<SET:upcourse idc="<%=idc %>" cname="<%=cname %>" cid="<%=cid %>"></SET:upcourse>

</body>
</html>