<%@page import="org.multiple.question.Question"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="questionbank.jsp">add question</a>
	<%
		Session s = new Configuration().configure().buildSessionFactory().openSession();
		
		List list = s.createQuery("from Question").list();
		
		Iterator itr = list.iterator();
		out.println("<ol>");
		while(itr.hasNext()) {
			Question q = (Question)itr.next();
			out.println("<li>"+ q.getqName() +"</li>");
			List answerList = q.getAnswers();
			Iterator itr1 = answerList.iterator();
			out.println("<ol>");
			while(itr1.hasNext()) {
				out.println("<li>"+ itr1.next()+"</li>");
			}
			out.println("</ol>");
		}
		out.println("</ol>");
		s.close();
		
	%>
</body>
</html>