<%@ tag pageEncoding="utf-8" import="java.sql.*"%>
<%@ attribute name="sid" required="true"%>
<%@ attribute name="cid" required="true"%>
<%@ attribute name="grade"%>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (Exception e) {}
try {
	String url = "jdbc:mysql://localhost/score";
	String user = "root";
	String password ="";
	Connection con = DriverManager.getConnection(url, user, password);
    String sql1="insert into score values(?,?,?)";
    
    PreparedStatement pre=con.prepareStatement(sql1);
    pre.setString(1, sid);
    pre.setString(2, cid);
    pre.setString(3, grade);
    pre.executeUpdate();	
	con.close();
    out.print("<script>alert('记录添加成功！'); window.location='queryscore.jsp' </script>");    	  
	} catch (SQLException e) {}
%>