
<html>
 <head>
  <link href="CSS/empstyle.css" rel='stylesheet'>
 </head>
 <body>
  <div style='text-align: center'>
   <h1 style='text-decoration:underline;'>Add employee form</h1>
  </div>
  <form action="save-record.jsp" method="post">
   <table class='taf' cellpadding='15px'>
    <tr>
     <td>Enter employee id</td>
     <td><input type='text' name='eid' class='tb' required></td>
    </tr>
    <tr>
     <td>Enter employee name</td>
     <td><input type='text' name='name' class='tb' required></td>
    </tr>
    <tr>
     <td>Enter employee department</td>
     <td><input type='text' name='department' class='tb' required></td>
    </tr>
    <tr>
     <td>Enter employee salary</td>
     <td><input type='text' name='salary' class='tb' required></td>
    </tr>
    <tr>
     <td colspan="2" align="right">
      <button class='bt'>Save Record</button>
      <input type="button" value='Cancel' class='bt' onclick='history.back()' style='background-color:orange'>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>