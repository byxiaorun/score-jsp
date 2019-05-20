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
	String id=(String)session.getAttribute("id");
	String sid=request.getParameter("sid").trim();
	String sname=request.getParameter("sname").trim();
	String sex=request.getParameter("sex");
	String borndate=request.getParameter("borndate");
	String address=request.getParameter("address").trim();
%>

<SET:upstu id="<%=id %>" sname="<%=sname %>" sid="<%=sid %>" sex="<%=sex %>" borndate="<%=borndate%>" address="<%=address %>"></SET:upstu>
</body>
</html>