<%@page import="java.sql.*"%>
<html>
 <head>
  <link href="CSS/empstyle.css" rel='stylesheet'>
 </head>
 <body>
  <%
  String eid=request.getParameter("eid");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp9","root","mysql");
  PreparedStatement ps=cn.prepareStatement("select * from employeeinfo where eid=?");
  ps.setString(1,eid);
  ResultSet rst=ps.executeQuery();
  rst.next();
  %>
  <div style='text-align: center'>
   <h1 style='text-decoration:underline'>Edit employee form</h1>
  </div>
  <form action="update-record.jsp" method="post">
   <table class='taf' cellpadding='15px'>
    <tr>
     <td>Employee id</td>
     <td><input type='text' name='eid' value='<%=eid%>' readonly="readonly" class='tb' required></td>
    </tr>
    <tr>
     <td>Edit employee name</td>
     <td><input type='text' name='name' value='<%=rst.getString(2)%>' class='tb' required></td>
    </tr>
    <tr>
     <td>Edit employee department</td>
     <td><input type='text' name='department' value='<%=rst.getString(3)%>'  class='tb' required></td>
    </tr>
    <tr>
     <td>Edit employee salary</td>
     <td><input type='text' name='salary' value='<%=rst.getString(4)%>' class='tb' required></td>
    </tr>
    <tr>
     <td colspan="2" align="right">
      <button class='bt'>Update Record</button>
      <input type="button" value='Cancel' class='bt' onclick='history.back()' style='background-color:orange'>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>