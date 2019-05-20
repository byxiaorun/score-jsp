<%@ tag pageEncoding="utf-8" import="java.sql.*"%>
<%@ attribute name="cid" required="true"%>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (Exception e) {}
try {
	String url = "jdbc:mysql://localhost/score";
	String user = "root";
	String password ="";
	Connection con = DriverManager.getConnection(url, user, password);
    String sql1="delete from course where cid=?";
    System.out.print(sql1);
    PreparedStatement pre=con.prepareStatement(sql1);
    pre.setString(1, cid);
    pre.executeUpdate();	
	con.close();
    out.print("<script>alert('记录删除成功！'); window.location='querycourse.jsp' </script>");    	  
	} catch (SQLException e) {}
%>