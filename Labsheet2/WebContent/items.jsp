	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import = "com.Item" %>
    
 <%@page import = "com.Item" %>
    
 <%
	if (request.getParameter("itemCode") != null)
	{
		Item itemObj = new Item();
		String stsMsg = itemObj.insertItem(request.getParameter("itemCode"),
		request.getParameter("itemName"),
		request.getParameter("itemPrice"),
		request.getParameter("itemDesc"));
		session.setAttribute("statusMsg", stsMsg);
	}

%>

<%
	if (request.getParameter("itemID") != null)
	{
		Item itemObj = new Item();
		String stsMsg = itemObj.deleteItem(Integer.parseInt(request.getParameter("itemID")));
		session.setAttribute("statusMsg", stsMsg);
	}

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item Management</title>
</head>
<body>

	<%-- Calling the connection Method --%>
	<%-- <% 
		if (request.getParameter("itemCode") != null)
		{
			Item itemObj = new Item();
			itemObj.connect();//For testing the connect method
		}
	
	%> --%>
	
	<h1>Items Management</h1>
		
		<%-- Insert Form --%>
		<form method="post" action="items.jsp">
			Item code: <input name="itemCode" type="text"><br>
			Item name: <input name="itemName" type="text"><br>
			Item price: <input name="itemPrice" type="text"><br>
			Item description: <input name="itemDesc" type="text"><br>
			<input name="btnSubmit" type="submit" value="Save">
		</form>
		<%
			out.print(session.getAttribute("statusMsg"));
		%>
		
		<br><br>
		<%--Calling Read --%>
		<%
			Item itemObj = new Item();
			out.print(itemObj.readItems());
		%>
	

</body>
</html>