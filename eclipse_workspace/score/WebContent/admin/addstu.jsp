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
<form action="addstu2.jsp" method="post">
<table>
<tr><th>学号</th><td><input type="text" name="sid" required="required"></td></tr>
<tr><th>姓名</th><td><input type="text" name="sname" required="required"></td></tr>
<tr><th>性别</th><td><input type="radio" name="sex" value="男" checked>男
<input type="radio" name="sex" value="女">女 </td></tr>
<tr><th>出生日期</th><td><input type="text" name="borndate" ></td></tr>
<tr><th>家庭住址</th><td><input type="text" name="address" ></td></tr>
<tr><td colspan="2"><input type="submit" value="提交"></td></tr>
</table>
</form>
</body>
</html>