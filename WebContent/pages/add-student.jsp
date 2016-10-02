<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "leran.hibernate.inheritance.StudentApp"%>
<jsp:useBean id="student" class="leran.hibernate.inheritance.InternalStudent"></jsp:useBean>
<jsp:setProperty property="name" name="student"/>
<jsp:setProperty property="year" name="student"/>
<jsp:setProperty property="fees" name="student"/>
<% 
	StudentApp.addStudent(student);
%>