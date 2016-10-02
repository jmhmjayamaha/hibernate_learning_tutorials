<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="learn.hibernate.webTest.App"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="obj" class="learn.hibernate.webTest.Employee"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<%
	int i = App.register(obj);
	if(i > 0) {
		out.println("successfully registered");
	}
%>
</body>
</html>