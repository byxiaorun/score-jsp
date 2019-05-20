<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成绩查询系统</title>
<style type="text/css">
.head {
	font-weight: bold;
	font-size: 36px;
}

.body {
	background-color: #0CF;
}
</style>
</head>
<body class="body">
	<table width="900" border="1" bgcolor="#FFFFFF" align="center">
		<tr>
			<td align="center" class="head">成绩查询系统</td>
		</tr>
		<tr>
		<td align="right">
		<a href="admin/login1.jsp"  target="_blank">管理员登录</a>
		</td>
		</tr>

		<tr>
			<td align="center">
				<form action="score2.jsp" method="get">
					输入查询条件:<select name="chk">
						<option value="student.sid">按学号
						<option value="sname">按姓名
						<option value="cname">按课程名称
					</select> 查询关键字<input type="text" name="txt1"> <input type="submit"
						value="查询">
				</form>
			</td>
		</tr>
		<tr>
			<td align="center">&nbsp;</td>
		</tr>
	</table>

</body>
</html>