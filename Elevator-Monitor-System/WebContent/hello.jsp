<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%--����javaBean��ʧ��<%@ page import="javaBean.TestBean" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>The Third hello.jsp</title>
</head>
<%--br�����У�������Ҫ��б���� --%>
<body>

<%-- λ�ڽű�֮ǰ���ı���Hello World!<br>--%>
<h1>jspѧϰ֮��</h1>

<p>�����ҵ�html+jspѧϰ������
<hr />

<%--���� --%>
<%!
	int i=5;
	int j=6;
%>

<%--���ӡ���href���������Ҫ��http�������޷����� --%>
<a href="http://www.baidu.com">�ٶ�</a><br />

<%--��ȡIP --%>
<%
	out.println("���IP��ַ�� "+request.getRemoteAddr()+","+i+"*"+j+"="+i*j);
%>
<br />

<%--ͼƬ ,ͼƬ���ʧ��--%>
<%--<img alt="" src=""> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%--�����jsp��ǩ�Ӳ��� --%>
<img alt="jsp" src="<%=basePath%>/jsp.png" />

</body>
</html>