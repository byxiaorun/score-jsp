<%@ tag pageEncoding="utf-8" import="java.sql.*"%>
<%@ attribute name="id" required="true"%>
<%@ attribute name="sid" required="true"%>
<%@ attribute name="sname" required="true"%>
<%@ attribute name="sex" required="true"%>
<%@ attribute name="borndate"%>
<%@ attribute name="address"%>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (Exception e) {}
try {
	String url = "jdbc:mysql://localhost/score";
	String user = "root";
	String password ="";
	Connection con = DriverManager.getConnection(url, user, password);
    String sql1="update student set sid=?,sname=?,sex=?,borndate=?,address=? where sid='"+id+"'";
    PreparedStatement pre=con.prepareStatement(sql1);
    pre.setString(1, sid);
    pre.setString(2, sname);
    pre.setString(3, sex);
    pre.setString(4, borndate);
    pre.setString(5, address);
    pre.executeUpdate();	
	con.close();
    out.print("<script>alert('记录修改成功！'); window.location='querytable.jsp' </script>");    	  
	} catch (SQLException e) {}
%>