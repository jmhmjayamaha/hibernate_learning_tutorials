<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "org.multiple.question.App" errorPage="error.jsp"%>
<jsp:useBean id="obj" class="org.multiple.question.Question"></jsp:useBean>
<jsp:setProperty property="qName" name="obj"/>
<%
	String one = request.getParameter("one");
	String two = request.getParameter("two");
	String three = request.getParameter("three");
	String four = request.getParameter("four");
	
	ArrayList<String> list = new ArrayList<String>();
	list.add(one);
	list.add(two);
	list.add(three);
	list.add(four);
	
	obj.setAnswers(list);
	App.addQustionAndAnswer(obj);
	
	response.sendRedirect("questionbank.jsp");
%>