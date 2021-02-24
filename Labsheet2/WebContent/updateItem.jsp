<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page import = "com.Item" %>
 

 <%-- <%
	if (request.getParameter("itemCode") != null)
	{
		Item itemObj = new Item();
		String stsMsg = itemObj.updateItem(request.getParameter("itemCode"),
		request.getParameter("itemName"),
		request.getParameter("itemPrice"),
		request.getParameter("itemDesc"));
		session.setAttribute("statusMsg", stsMsg);
	}

%>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items Management</title>
</head>
<body>


<!-- retrieving the passed parameters to update form -->
<%
	String itemCode = request.getParameter("itemCode");
	String itemName =  request.getParameter("itemName");
	String itemPrice = request.getParameter("itemPrice");
	String itemDesc = request.getParameter("itemDesc");	
%>

		<form method="post" action="updateItem.jsp">
			Item code: <input name="itemCode" type="text" value="<%=itemCode%>" readonly><br>
			Item name: <input name="itemName" type="text" value="<%=itemName%>"><br>
			Item price: <input name="itemPrice" type="text" value="<%=itemPrice%>"><br>
			Item description: <input name="itemDesc" type="text" value="<%=itemDesc%>"><br>
			<input name="btnSubmit" type="submit" value="Update">
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