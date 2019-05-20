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
<form action="addcourse2.jsp" method="post">
<table>
<tr><th>课程号：</th><td><input type="text" name="cid" required="required"></td></tr>
<tr><th>课程名称：</th><td><input type="text" name="cname" required="required"></td></tr>
<tr><td colspan="2"><input type="submit" value="提交"></td></tr>
</table>
</form>
</body>
</html>