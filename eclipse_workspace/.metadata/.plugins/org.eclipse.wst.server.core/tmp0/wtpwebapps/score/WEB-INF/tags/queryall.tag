<%@tag pageEncoding="utf-8" %>
<%@tag import="java.sql.*" %>
<%@ attribute name="tbname"  required="true"%>
<%@ variable name-given="queryResult" scope="AT_END" %>
<% 
	StringBuffer result=new StringBuffer();
  try{
	  Class.forName("com.mysql.jdbc.Driver");
   }
  catch(Exception e){}

//2连接对象
 try{ 
	   String url="jdbc:mysql://localhost/score";
	   String user="root";
	   String password="";
	   Connection con=DriverManager.getConnection(url, user, password);
	
	  //获取表中列数并输出表头	
	  DatabaseMetaData metadata=con.getMetaData();
	  ResultSet rs1=metadata.getColumns(null, null, tbname, null);
	  result.append("<table border=1><tr>");
	  int n=0;
	  while (rs1.next())
	  {
		  n++;
		  String colname=rs1.getString(4);
		  result.append("<th>"+colname+"</th>");		  
	  }
	  result.append("</tr>");	
	//新建sql语句	
	  Statement sql=con.createStatement();	
	  ResultSet rs=sql.executeQuery("select * from "+tbname);
	  while (rs.next())
	  {
		  result.append("<tr>");
		  for (int k=1;k<=n;k++)
		  {
			  result.append("<td>"+rs.getString(k)+"</td>");
		  }
		  result.append("</tr>");
	  }
	 result.append("</table>");
	   con.close();
 }
catch(SQLException e)
{}	
  //返回结果
  jspContext.setAttribute("queryResult", new String(result));
%>