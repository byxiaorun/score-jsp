<%@ tag pageEncoding="utf-8" import="java.sql.*"%>
<%@ attribute name="idc" required="true"%>
<%@ attribute name="cid" required="true"%>
<%@ attribute name="cname" required="true"%>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (Exception e) {}
try {
	String url = "jdbc:mysql://localhost/score";
	String user = "root";
	String password ="";
	Connection con = DriverManager.getConnection(url, user, password);
    String sql1="update course set cid=?,cname=? where cid='"+idc+"'";
    PreparedStatement pre=con.prepareStatement(sql1);
    pre.setString(1, cid);
    pre.setString(2, cname);
    pre.executeUpdate();	
	con.close();
    out.print("<script>alert('记录修改成功！'); window.location='querycourse.jsp' </script>");    	  
	} catch (SQLException e) {}
%>