<%@page import="com.sherwin.flyaway.service.ViewService"%>
<%@page import="java.util.List"%>
<%@page import="com.sherwin.flyaway.bean.ViewBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	th,td {
		padding: 5px;
		margin: 2px;	
		text-align: center;
	 }
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- redirected from customerDetails.jsp -->
	  
	
	<%String email = request.getParameter("email");
		String name = request.getParameter("cName");
		/* int age = Integer.parseInt(request.getParameter("age")); */
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String country = request.getParameter("country");
	%>
	<%
		int flightNo = (int) session.getAttribute("flightDetailsObj");
		String source = (String) session.getAttribute("source");
		String destination =(String) session.getAttribute("destination");
		String travelDate = (String) session.getAttribute("travelDate");
		int tickets = (int) session.getAttribute("tickets");
		String airlineName = (String) session.getAttribute("airlineName");
		int price = (int) session.getAttribute("price");
	%>
	
	<form method="post" action ="FinalServlet">
		<table border="1px">
			<caption>Booking Confirmation</caption>
			<tr>
				<td colspan="5">Flight No: <%=flightNo %></td>
			</tr>
			<tr >
				<td colspan="5">Personal information</td>
			</tr>
			<tr>
				<td>Name: <%=name%></td>
				<td>Email Address : <%=email %></td>
				<td>Country : <%=country %></td>
				<td>Gender : <%=gender%></td>
				<td>Address : <%=address%></td>
			</tr>
			<tr>
				<td colspan="5">Flight Information</td>
			</tr>
		
			<tr>
				<th>Source: <%=source %></th>
				<th>Destination: <%=destination %></th>
				<td colspan="3">Airline : <%=airlineName%></td>
			</tr>
			<tr>
				<th colspan="3">Travel Date: <%=travelDate %></th>
				<td>Tickets Available : <%=tickets %></td>
				<td>Price Per Tickets: <%=price %>
			</tr>
			<tr>
				<td> No. of Tickets you want to book</td>
				<td><input type="text" name="noOfTickets"></td>
				<td><input type ="submit"></td>
			</tr>

		</table>
	</form>
</body>
</html>