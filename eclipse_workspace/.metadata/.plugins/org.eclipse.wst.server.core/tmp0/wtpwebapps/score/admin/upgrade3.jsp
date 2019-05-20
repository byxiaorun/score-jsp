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
	String sid=request.getParameter("sid").trim();
	String cid=request.getParameter("cid").trim();
	String grade=request.getParameter("grade").trim();
	String studentid=(String)session.getAttribute("studentid");
	String courseid=(String)session.getAttribute("courseid");
%>
<SET:upgrade sid="<%=sid %>" grade="<%=grade %>" cid="<%=cid %>" studentid="<%=studentid %>" courseid="<%=courseid %>"></SET:upgrade>
</body>
</html>