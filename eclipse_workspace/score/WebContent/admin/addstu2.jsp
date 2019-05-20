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
    String sid=request.getParameter("sid").trim();
    String sname=request.getParameter("sname").trim();
    String sex=request.getParameter("sex");
    String borndate=request.getParameter("borndate");
    String address=request.getParameter("address").trim();  
  %>
  <ADD:addstu sname="<%=sname %>" sid="<%=sid %>" sex="<%=sex %>" borndate="<%=borndate%>" address="<%=address%>"></ADD:addstu>
</body>
</html>