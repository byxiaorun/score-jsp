# score-jsp
jsp成绩查询系统

jsp成绩查询系统，支持增删改查，数据库等，请自行修改自己的mysql密码和导入数据库测试，mysql8看如下说明

java连接mysql 8.+说明
驱动包下载https://dev.mysql.com/downloads/connector/j/
https://blog.csdn.net/wshxhghsjjsn/article/details/80555800
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/数据库名?useSSL=FALSE&serverTimezone=UTC","root", "密码");
