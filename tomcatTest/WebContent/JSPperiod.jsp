<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>JSP�������ڲ���</title>
</head>
<body>
	<%!private int initVar = 0;
	private int serviceVar = 0;
	private int destroyVar = 0;%>
	<%--<%! %>�������������������������������Ӳ�ȫ��Ϣ�пɿ���  -- %>
	<%!public void jspInit() {
		initVar++;
		System.out.println("jspInit(): JSP����ʼ����" + initVar + "��");
	}

	public void jspDestroy() {
		destroyVar++;
		System.out.println("jspDestroy(): JSP��������" + destroyVar + "��");
	}%>

	<%--����û��ר�ŵ�Service�������ѵ��ǳ����������֣���������Ĭ��Ϊservice������ --%>
	<%
		serviceVar++;
		System.out.println("_jspService(): JSP����Ӧ��" + serviceVar + "������");

		String content1 = "��ʼ������ : " + initVar;
		String content2 = "��Ӧ�ͻ�������� : " + serviceVar;
		String content3 = "���ٴ��� : " + destroyVar;
	%>
	<h1>����̳� JSP ����ʵ��</h1>
	<p><%=content1%></p>
	<p><%=content2%></p>
	<p><%=content3%></p>

</body>
</html>