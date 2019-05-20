<%@ tag pageEncoding="utf-8" import="java.sql.*" %>
<%@ attribute name="studentid" required="true"%>
<%@ attribute name="courseid" required="true"%>
<%@ variable name-given="grade1" scope="AT_END" %>


<%
	String grade1=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
	}catch(Exception e){
		
	}

	try{
		String url="jdbc:mysql://localhost/score";
		String user="root";
		String password="";
		Connection con=DriverManager.getConnection(url,user,password);
		Statement sql=con.createStatement();
		String sql1="select * from score where sid='"+studentid+"' and cid='"+courseid+"'";
		ResultSet rs=sql.executeQuery(sql1);
		while(rs.next()){
			grade1=rs.getString(3);
			
		}
	
		
		con.close();
	}catch(SQLException e){
		e.printStackTrace();
	}
	if(grade1==null){
		out.print("<script>alert('学号或课程号不存在！'); window.location='queryscore.jsp' </script>");
	}else
	jspContext.setAttribute("grade1", grade1);
	
%>