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
<p>
<form action="" method="post">
		查询<Select name="ck">
			<option value="student">学生表
			<option value="course">课程表
			<option value="score">成绩表
		</Select> 表的所有记录 <input type="submit" value="查询">
</form>
<br>
<%
			String ck = request.getParameter("ck");
			if(ck==null)
			ck="student";
%>
		<OK:queryall tbname="<%=ck%>" />
		<%=queryResult %>

</body>
</html>