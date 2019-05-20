<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.sql.*" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags/" prefix="Qscore"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>数据库成绩查询系统</title>
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
<% request.setCharacterEncoding("utf-8");
   String chk=request.getParameter("chk");
   String rd=request.getParameter("rd");
   String txt1=request.getParameter("txt1").trim();
   if(chk==null)
	   chk="student.sid";
%>

	<table width="900" border="1" bgcolor="#FFFFFF" align="center">
		<tr>
			<td align="center" class="head">成绩查询系统</td>
		</tr>
		<tr>
			<td align="center">
			<form action="score2.jsp">
					输入查询条件:<select name="chk">
						<option value="student.sid">按学号
						<option value="sname">按姓名
						<option value="cname">按课程名称
					</select> 查询关键字<input type="text" name="txt1"> <input type="submit"
						value="查询">
				</form>
             <form action="" method=post>
     <input type="radio"  name="rd" value="student.sid" checked="checked">按学号排序
     <input type="radio"  name="rd" value="cname">按课程名称排序
     <input type="radio"  name="rd" value="grade">按成绩排序    
     <input type="submit" value="排序">
 </form>
			</td>
		</tr>
		<tr>
			<td align="center">
			<Qscore:queryscore chk="<%=chk %>" txt1="<%=txt1 %>" rd="<%=rd %>"></Qscore:queryscore>
			</td>
		</tr>
	</table>

</body>
</html>