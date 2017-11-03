<%@ page language="java" import="java.util.*"  contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>JSP声明例子</title>
</head>
<%!
	int x ,y = 60,z;	//多个声明
	String name = "John";
	Date date = new Date();
%>
<%!
int add(int m, int n){	//计算两个数的和
	int result = 0;
	result = m + n;
	return result;
}
%>
<%!
int multiply(int m, int n){
	int result = 0;
	result = m * n;
	return result;
}
%>

<%!
	class Circle{
	double r;	//半径
	Circle(double r){	//构造方法
		super();	//继承空的构造方法
		this.r = r;	
	}
	double area(){	//计算圆的面积
		return Math.floor(Math.PI * r * r);
	}
	
}
%>
	<body>
	<%
	out.println("我的名字: " + name);
	out.println("<br/><br/>");
	out.println("x的值为: " + x);
	out.println("<br/><br/>");
	out.println("y的值为: " + y);
	out.println("<br/><br/>");
	out.println("z的值为: " + z);
	out.println("<br/><br/>");
	out.println("现在的时间为: "+ date);
	out.println("<br/><br/>");
	out.println("10 与 20的和: " + add(10,20));
	out.println("<br/><br/>");
	out.println("10与20的乘积: "+ multiply(10,20));
	out.println("<br/><br/>");
	%>
	<%
	Circle circle = new Circle(6);
	out.println("半径为6的圆的面积为: " + circle.area());
	%>
	
	</body>
</html>
