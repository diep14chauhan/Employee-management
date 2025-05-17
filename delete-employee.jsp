<%@page import="java.sql.*"%>
  <%
  String eid=request.getParameter("eid");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp9","root","mysql");
  PreparedStatement ps=cn.prepareStatement("delete from employeeinfo where eid=?");
  ps.setString(1,eid);
  ps.executeUpdate();
  response.sendRedirect("dashboard.jsp");
  %>
  
