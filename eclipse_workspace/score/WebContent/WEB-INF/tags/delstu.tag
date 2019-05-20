<%@ tag pageEncoding="utf-8" import="java.sql.*"%>
<%@ attribute name="sid" required="true"%>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (Exception e) {}
try {
	String url = "jdbc:mysql://localhost/score";
	String user = "root";
	String password ="";
	Connection con = DriverManager.getConnection(url, user, password);
    String sql1="delete from student where sid=?";
    PreparedStatement pre=con.prepareStatement(sql1);
    pre.setString(1, sid);
    pre.executeUpdate();	
	con.close();
    out.print("<script>alert('记录删除成功！'); window.location='querytable.jsp' </script>");    	  
	} catch (SQLException e) {}
%>