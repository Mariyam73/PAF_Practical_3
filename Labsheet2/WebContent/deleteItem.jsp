<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import = "com.Item" %>
    
<%-- <%

	if (request.getParameter("itemCode") != null)
	{
		Item itemObj = new Item();
		String stsMsg = itemObj.deleteItem(request.getParameter("itemCode"));
		session.setAttribute("statusMsg", stsMsg);
	}

%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Item</title>
</head>
<body>

<%
	String itemCode = request.getParameter("itemCode");
%>

		<form method="post" action="deleteItem.jsp">
			<h3>Delete item with below Item Code?</h3>
			Item code: <input name="itemCode" type="text" value="<%=itemCode%>" readonly><br>
			<input name="btnSubmit" type="submit" value="Delete">
		</form>
		<%
			out.print(session.getAttribute("statusMsg"));
		%>
		<br><br>
		<%
			Item itemObj = new Item();
			out.print(itemObj.readItems());
		%>

</body>
</html>