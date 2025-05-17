<%@page import="java.sql.*"%>
  <%
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp9","root","mysql");
  String eid=request.getParameter("eid");
  
  PreparedStatement ps1=cn.prepareStatement("select * from employeeinfo where eid=?");
  ps1.setString(1,eid);
  ResultSet rst=ps1.executeQuery();
  if(rst.next())
  {
	  %>
	  <jsp:include page="add-employee.jsp" />
	  <div style='text-align: center'>
	   <h2 style='color:red'>Employee with id <%=eid%> already exists</h2>
	  </div>
	  <%
	  return;
  }
  String name=request.getParameter("name");
  String dept=request.getParameter("department");
  String salary=request.getParameter("salary");
  PreparedStatement ps=cn.prepareStatement("insert into employeeinfo values(?,?,?,?)");
  ps.setString(1,eid);
  ps.setString(2,name);
  ps.setString(3,dept);
  ps.setString(4,salary);
  ps.executeUpdate();
  response.sendRedirect("dashboard.jsp");
  %>
  
