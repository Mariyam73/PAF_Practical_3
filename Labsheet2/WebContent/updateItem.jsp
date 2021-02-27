<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import = "com.Item" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items Management</title>
</head>
<body>


<!-- retrieving the passed parameters to update form -->
<%
	String itemNo = request.getParameter("itemID");
	String itemCode = request.getParameter("itemCode");
	String itemName =  request.getParameter("itemName");
	String itemPrice = request.getParameter("itemPrice");
	String itemDesc = request.getParameter("itemDesc");	
%>

		<%-- Update Form --%>
		<form method="post" action="UpdateProcess.jsp">
			<input name="itemNo" type="text" value="<%=itemNo%>" hidden><br>
			Item code: <input name="itemCode" type="text" value="<%=itemCode%>" readonly><br>
			Item name: <input name="itemName" type="text" value="<%=itemName%>"><br>
			Item price: <input name="itemPrice" type="text" value="<%=itemPrice%>"><br>
			Item description: <input name="itemDesc" type="text" value="<%=itemDesc%>"><br>
			<input name="btnSubmit" type="submit" value="Update">
		</form>
		
		
		<br><br>
		<%
			Item itemObj = new Item();
			out.print(itemObj.readItems());
		%>

</body>
</html>