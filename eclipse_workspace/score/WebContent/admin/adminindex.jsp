<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="Reg" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>后台管理系统</title>
<style type="text/css">
a{text-decoration:none;}
</style>
</head>
<body bgcolor="#b9e6f9">
<Reg:reg></Reg:reg>
	<table style="width:80%;margin:aukto;background-color:white;" align="center" >
		<tr>
			<td colspan="2" style="text-align:center;color:white;"bgcolor="#31bbf5">
				<br/>
				<br/>
				<h1>后台管理系统</h1>
				<br>
				<br>
				</td>
		</tr>
		<tr>
			<td valign="top" width="200px" style="padding-left:20px">
			<h3>管理员菜单</h3>
			<a href=querytable.jsp target="_right" style="color:black";><h4>学生基本信息管理</h4></a>
			<a href=addstu.jsp target="_right">添加学生信息</a><br>
			<a href=upstu.jsp target="_right">修改学生信息</a><br>
			<a href=delstu.jsp target="_right">删除学生信息</a><br>
			<a href=querycourse.jsp target="_right" style="color:black";><h4>课程基本信息管理</h4></a>
			<a href=addcourse.jsp target="_right">添加课程信息</a><br>
			<a href=upcourse.jsp target="_right">修改课程信息</a><br>
			<a href=delcourse.jsp target="_right">删除课程信息</a><br>
			<a href=queryscore.jsp target="_right" style="color:black";><h4>成绩基本信息管理</h4></a>
			<a href=addgrade.jsp target="_right">添加成绩信息</a><br>
			<a href=upgrade.jsp target="_right">修改成绩信息</a><br>
			<a href=delgrade.jsp target="_right">删除成绩信息</a><br>
			<a href=logout.jsp>退出管理员登录</a>
			</td>
			<td><iframe id="right" name="_right" width="100%" height="768px" src="querytable.jsp"></iframe>
			&nbsp;</td>
			</tr>
	</table>

</body>
</html>