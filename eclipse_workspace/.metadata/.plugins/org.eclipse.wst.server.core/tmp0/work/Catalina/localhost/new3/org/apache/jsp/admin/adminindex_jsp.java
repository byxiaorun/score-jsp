/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.11
 * Generated at: 2018-12-19 08:11:07 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminindex_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/WEB-INF/tags/reg.tag", Long.valueOf(1543390503118L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>后台管理系统</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("a{text-decoration:none;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#b9e6f9\">\r\n");
      if (_jspx_meth_Reg_005freg_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t<table style=\"width:80%;margin:aukto;background-color:white;\" align=\"center\" >\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"2\" style=\"text-align:center;color:white;\"bgcolor=\"#31bbf5\">\r\n");
      out.write("\t\t\t\t<br/>\r\n");
      out.write("\t\t\t\t<br/>\r\n");
      out.write("\t\t\t\t<h1>后台管理系统</h1>\r\n");
      out.write("\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td valign=\"top\" width=\"200px\" style=\"padding-left:20px\">\r\n");
      out.write("\t\t\t<h3>管理员菜单</h3>\r\n");
      out.write("\t\t\t<a href=querytable.jsp target=\"_right\" style=\"color:black\";><h4>学生基本信息管理</h4></a>\r\n");
      out.write("\t\t\t<a href=addstu.jsp target=\"_right\">添加学生信息</a><br>\r\n");
      out.write("\t\t\t<a href=upstu.jsp target=\"_right\">修改学生信息</a><br>\r\n");
      out.write("\t\t\t<a href=delstu.jsp target=\"_right\">删除学生信息</a><br>\r\n");
      out.write("\t\t\t<a href=querycourse.jsp target=\"_right\" style=\"color:black\";><h4>课程基本信息管理</h4></a>\r\n");
      out.write("\t\t\t<a href=addcourse.jsp target=\"_right\">添加课程信息</a><br>\r\n");
      out.write("\t\t\t<a href=upcourse.jsp target=\"_right\">修改课程信息</a><br>\r\n");
      out.write("\t\t\t<a href=delcourse.jsp target=\"_right\">删除课程信息</a><br>\r\n");
      out.write("\t\t\t<a href=queryscore.jsp target=\"_right\" style=\"color:black\";><h4>成绩基本信息管理</h4></a>\r\n");
      out.write("\t\t\t<a href=addgrade.jsp target=\"_right\">添加成绩信息</a><br>\r\n");
      out.write("\t\t\t<a href=upgrade.jsp target=\"_right\">修改成绩信息</a><br>\r\n");
      out.write("\t\t\t<a href=delgrade.jsp target=\"_right\">删除成绩信息</a><br>\r\n");
      out.write("\t\t\t<a href=logout.jsp>退出管理员登录</a>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td><iframe id=\"right\" name=\"_right\" width=\"100%\" height=\"768px\" src=\"querytable.jsp\"></iframe>\r\n");
      out.write("\t\t\t&nbsp;</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_Reg_005freg_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  Reg:reg
    org.apache.jsp.tag.web.reg_tag _jspx_th_Reg_005freg_005f0 = new org.apache.jsp.tag.web.reg_tag();
    _jsp_getInstanceManager().newInstance(_jspx_th_Reg_005freg_005f0);
    try {
      _jspx_th_Reg_005freg_005f0.setJspContext(_jspx_page_context);
      _jspx_th_Reg_005freg_005f0.doTag();
    } finally {
      _jsp_getInstanceManager().destroyInstance(_jspx_th_Reg_005freg_005f0);
    }
    return false;
  }
}
