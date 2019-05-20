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
			String ck = "score";
%>
		<Reg:queryall tbname="<%=ck%>" />
		<%=queryResult %>
<form action="delgrade2.jsp" method="post"><p>
请输入要删除的学号：<input type="text" name="sid" required="required"><br>
请输入要删除的课程号：<input type="text" name="cid" required="required"><br>
<input type="submit" value="删除">
</form>

</body>
</html>