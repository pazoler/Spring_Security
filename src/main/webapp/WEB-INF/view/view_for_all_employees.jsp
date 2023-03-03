<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 02.03.2023
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Information for all Employees</h3>
<br>
<security:authorize access="hasRole('HR')">
    <input type="button" value="salary"
           onclick="window.location.href = 'hr_info'">
    Only for HR staff
</security:authorize>
<br>
<security:authorize access="hasRole('MANAGER')">
<input type="button" value="Performance"
       onclick="window.location.href = 'manager_info'">
Only for managers
</security:authorize>
</body>
</html>
