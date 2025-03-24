<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
  
  <center>
    <p style="color:red; background-color:yellow; font-style:italic;">
      <% 
        String error = (String) request.getAttribute("loginError"); 
        if (error != null) { 
          out.print(error); 
        }
      %>
    </p>
  </center>
  
  <form method="post" action="LoginServlet">
    <table align="center" border="1" width="30%">
      <tr>
        <th>Email</th>
        <td><input type="text" name="email" required></td>
      </tr>
      <tr>
        <th>Password</th>
        <td><input type="password" name="pass" required></td>
      </tr>
      <tr>
        <th colspan="2">
          <input type="submit" name="submit" value="Login">
          <input type="reset" name="reset" value="Clear">
        </th>
      </tr>
    </table>
  </form>

  <p align="center">New User? <a href="Register.html">Sign Up</a></p>  

</body>
</html>
