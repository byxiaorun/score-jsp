<%@ tag pageEncoding="utf-8" import="java.sql.*" %>
<%@ attribute name="id" required="true"%>
<%@ variable name-given="sname" scope="AT_END" %>
<%@ variable name-given="sex" scope="AT_END" %>
<%@ variable name-given="borndate" scope="AT_END" %>
<%@ variable name-given="address" scope="AT_END" %>

<%
	String sname=null,sex=null,borndate=null,address=null;
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
		String sql1="select * from student where sid='"+id+"'";
		ResultSet rs=sql.executeQuery(sql1);
		while(rs.next()){
			sname=rs.getString(2);
			sex=rs.getString(3);
			borndate=rs.getString(4);
			address=rs.getString(5);
		}
	
		
		con.close();
	}catch(SQLException e){
		e.printStackTrace();
	}
	if(sname==null){
		out.print("<script>alert('学号不存在！'); window.location='querytable.jsp' </script>");
	}
	jspContext.setAttribute("sname", sname);
	jspContext.setAttribute("sex", sex);
	jspContext.setAttribute("borndate", borndate);
	jspContext.setAttribute("address", address);
%>