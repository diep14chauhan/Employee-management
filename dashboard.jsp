<%@page import="java.sql.*"%>
<html>
 <head>
  <link href="CSS/empstyle.css" rel='stylesheet'>
 </head>
 <style>
  th{
   text-align: left;
  }
 </style>
 <body>
  <%
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp9","root","mysql");
  Statement st=cn.createStatement();
  ResultSet rst=st.executeQuery("select * from employeeinfo");
  %>
  <div style='text-align: center'>
   <h1 style='text-decoration:underline'>Employee Dashboard</h1>
  </div>
  <table class='tar' border='1' cellpadding='6px'>
   <tr>
    <td colspan="5"><a href="add-employee.jsp">Add Employee</a></td>
   </tr>
   <tr>
    <th>Employee id</th><th>Employee name</th><th>Employee department</th><th>Employee salary</th>
    <th style='background-color:orange'>Action</th>
   </tr>
   <%
   while(rst.next())
   {
	   String eid=rst.getString(1); 
	   %>
	    <tr>
	     <td><%=eid%></td>
	     <td><%=rst.getString(2)%></td>
	     <td><%=rst.getString(3)%></td>
	     <td><%=rst.getString(4)%></td>
	     <td>
	      <a href="edit-employee.jsp?eid=<%=eid%>">Edit |</a>
	      <a href='delete-employee.jsp?eid=<%=eid%>' onclick="return confirm('Are you sure to delete?')">Delete</a>
	     </td>
	    </tr>
	   <%
   }
   %>
  </table>
 </body>
</html>