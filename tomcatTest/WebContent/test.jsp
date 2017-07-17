
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HTML实例测试7-13</title>
</head>
<body>
	<p>段落：HTML实例是根据教程模仿而来</p>
	<%
		Date d=new Date();
	out.print("<h2 align=\"center\">"+d.toString()+"</h2>");
	
	%>	
	<%--建立classes文件夹，放入bean.class,出现了找不到.class文件的问题，非要在classes下新建com文件夹， 在com下新建jsp，将文件放入jsp中才行，文件名必须与
	src文件夹中的相同？？？？？？？ --%>
	<jsp:useBean id="students" 
                    class="com.jsp.StudentsBean"> 
   <jsp:setProperty name="students" property="firstName"
                    value="小强"/>
   <jsp:setProperty name="students" property="lastName" 
                    value="王"/>
   <jsp:setProperty name="students" property="age"
                    value="10"/>
</jsp:useBean>

<p>学生名字: 
   <jsp:getProperty name="students" property="firstName"/>
</p>
<p>学生姓氏: 
   <jsp:getProperty name="students" property="lastName"/>
</p>
<p>学生年龄: 
   <jsp:getProperty name="students" property="age"/>
</p>
	
</body>
</html>