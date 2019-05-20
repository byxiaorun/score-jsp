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
<% String ck="score"; %>
<p>
<OK:queryall tbname="<%=ck%>" />
		<%=queryResult %><br>
<form action="addgrade2.jsp" method="post">
<table>
<tr><th>请输入已有的学号：</th><td><input type="text" name="sid" required="required"></td></tr>
<tr><th>请输入已有课程号：</th><td><input type="text" name="cid" required="required"></td></tr>
<tr><th>请输入分数：</th><td><input type="text" name="grade"></td></tr>
<tr><td colspan="2"><input type="submit" value="提交"></td></tr>
</table>
</form>
</body>
</html>