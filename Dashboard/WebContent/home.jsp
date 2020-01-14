<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Welcome</title>
</head>
<body>
<form action="LogOut" action="get">
  <% 
   if(session.getAttribute("Email") == null && session.getAttribute("Password") == null)
       response.sendRedirect("Login.jsp");
  %>

 <h2> Welcome !!!</h2>
 <button type="submit" value="logout" class="btn btn-primary">Logout</button>
 </form>
</body>
</html>