<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%--导入javaBean包失败<%@ page import="javaBean.TestBean" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>The Third hello.jsp</title>
</head>
<%--br代表换行，后面需要加斜杠吗 --%>
<body>

<%-- 位于脚本之前的文本：Hello World!<br>--%>
<h1>jsp学习之家</h1>

<p>这是我的html+jsp学习经历！
<hr />

<%--声明 --%>
<%!
	int i=5;
	int j=6;
%>

<%--链接——href里面的链接要加http，否则无法链接 --%>
<a href="http://www.baidu.com">百度</a><br />

<%--获取IP --%>
<%
	out.println("你的IP地址是 "+request.getRemoteAddr()+","+i+"*"+j+"="+i*j);
%>
<br />

<%--图片 ,图片添加失败--%>
<%--<img alt="" src=""> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%--这里的jsp标签加不上 --%>
<img alt="jsp" src="<%=basePath%>/jsp.png" />

</body>
</html>