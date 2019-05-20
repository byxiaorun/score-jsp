<%@tag import="java.sql.*"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="chk" required="true"%>
<%@ attribute name="txt1"%>
<%@ attribute name="rd"%>
<%
					try {
						Class.forName("com.mysql.jdbc.Driver");
					} catch (Exception e) {
					}
					try {
						String url = "jdbc:mysql://localhost/score";
						String user = "root";
						String password = "";
						Connection con = DriverManager.getConnection(url, user, password);
						request.setCharacterEncoding("utf-8");
						
						if(rd==null)
							rd="student.sid";
						Statement sql = con.createStatement();
						String sql1 = "SELECT student.sid,sname,cname,grade FROM student JOIN score ON student.sid=score.sid JOIN course ON course.cid=score.cid where "
								+ chk + " like '%" + txt1 + "%' order by "+rd+" desc";
						ResultSet rs = sql.executeQuery(sql1);
						out.print("<table border=1 align='center'><tr><th width='300px'>学号</th><th width='300px'>名字</th><th width='300px'>课程名称</th><th width='300px'>成绩</th></tr>");
						while (rs.next()) {
							out.print("<tr><td width='100px' height='30px' align='center'>" + rs.getInt(1) + "</td>");
							out.print("<td width='300px' height='30px' align='center'>" + rs.getString(2) + "</td>");
							out.print("<td width='300px' height='30px' align='center'>" + rs.getString(3) + "</td>");
							out.print("<td width='300px' height='30px' align='center'>" + rs.getFloat(4) + "</td>");
						}
						out.print("</table>");
						con.close();
					} catch (SQLException e) {
						out.print(e);
					}
				%>