<%@page import="java.sql.*"%>
  <%
  String eid=request.getParameter("eid");
  String name=request.getParameter("name");
  String dept=request.getParameter("department");
  String salary=request.getParameter("salary");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp9","root","mysql");
  PreparedStatement ps=cn.prepareStatement("update employeeinfo set name=?,department=?,salary=? where eid=?");
  ps.setString(1,name);
  ps.setString(2,dept);
  ps.setString(3,salary);
  ps.setString(4,eid);
  ps.executeUpdate();
  response.sendRedirect("dashboard.jsp");
  %>
  
