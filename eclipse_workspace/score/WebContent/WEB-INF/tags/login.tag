<%@ tag pageEncoding="utf-8" import="java.sql.*" %>
<%@ attribute name="username" required="true"%>
<%@ attribute name="pwd" required="true"%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
}catch(Exception e){
	
}

try{
	String url="jdbc:mysql://localhost/score";
	String user="root";
	String password="";
	Connection con=DriverManager.getConnection(url,user,password);
	String sql1="select pwd from admin where username=?";
	PreparedStatement pre=con.prepareStatement(sql1);
	pre.setString(1, username);
	ResultSet rs=pre.executeQuery();
	String p1="";
	while(rs.next()){
		p1=rs.getString(1);
	}
	if(p1.equals(pwd)&&p1!=null){
		session.setAttribute("username", username);
		out.print("<script>alert('登录成功！');window.location='adminindex.jsp'</script>");
	}else{
		out.print("<script>alert('用户名或密码错误！请重新登录');window.location='login1.jsp'</script>");
	}
	con.close();
}catch(SQLException e){
	e.printStackTrace();
}
%>