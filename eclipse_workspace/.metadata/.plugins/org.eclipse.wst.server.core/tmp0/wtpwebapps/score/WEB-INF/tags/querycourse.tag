<%@ tag pageEncoding="utf-8" import="java.sql.*" %>
<%@ attribute name="idc" required="true"%>
<%@ variable name-given="cname" scope="AT_END" %>


<%
	String cname=null;
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
		String sql1="select * from course where cid='"+idc+"'";
		ResultSet rs=sql.executeQuery(sql1);
		while(rs.next()){
			cname=rs.getString(2);
			
		}
	
		
		con.close();
	}catch(SQLException e){
		e.printStackTrace();
	}
	if(cname==null){
		out.print("<script>alert('课程号不存在！'); window.location='querycourse.jsp' </script>");
	}else
	jspContext.setAttribute("cname", cname);
	
%>