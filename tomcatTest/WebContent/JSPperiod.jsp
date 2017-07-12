<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>JSP生命周期测试</title>
</head>
<body>
	<%!private int initVar = 0;
	private int serviceVar = 0;
	private int destroyVar = 0;%>
	<%--<%! %>代表声明，变量声明、函数声明，从补全信息中可看到  -- %>
	<%!public void jspInit() {
		initVar++;
		System.out.println("jspInit(): JSP被初始化了" + initVar + "次");
	}

	public void jspDestroy() {
		destroyVar++;
		System.out.println("jspDestroy(): JSP被销毁了" + destroyVar + "次");
	}%>

	<%--这里没有专门的Service函数，难道是除过声明部分，其他部分默认为service函数？ --%>
	<%
		serviceVar++;
		System.out.println("_jspService(): JSP共响应了" + serviceVar + "次请求");

		String content1 = "初始化次数 : " + initVar;
		String content2 = "响应客户请求次数 : " + serviceVar;
		String content3 = "销毁次数 : " + destroyVar;
	%>
	<h1>菜鸟教程 JSP 测试实例</h1>
	<p><%=content1%></p>
	<p><%=content2%></p>
	<p><%=content3%></p>

</body>
</html>