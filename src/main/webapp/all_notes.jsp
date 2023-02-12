<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<div class="col-12">

				<%
					Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Cote");
				List<Cote> list = q.list();
				for (Cote cote : list) {
				%>

				<div class="card mt-3" >
					
					<div class="card-body px-5">
						<h5 class="card-title"><%=cote.getEmail() %></h5>
						<p class="card-text">
						<%= cote.getNo()%>
						</p>
						<p class="card-text">
						<%= cote.getPassword()%>
						</p>
						
						
					</div>
				</div>


				<%
					}

				s.close();
				%>


			</div>


</body>
</html>