<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib tagdir="/WEB-INF/tags/" prefix="Reg" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<Reg:reg></Reg:reg>

<p>
<%
			String ck = "course";
%>
		<Reg:queryall tbname="<%=ck%>" />
		<%=queryResult %>
		
<form action="delcourse2.jsp" method="post"><p>
请输入要删除的课程号：<input type="text" name="cid" required="required">
<input type="submit" value="删除">
</form>

</body>
</html>