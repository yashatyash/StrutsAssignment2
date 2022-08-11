<%--
  Created by IntelliJ IDEA.
  User: yash.raj
  Date: 11-08-2022
  Time: 03:13 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ page import="java.util.List" %>
<%@ page import="com.yash.model.Employee" %>

<html>
<head>
    <title>Show Employees</title>
</head>
<body style="font-size: large;alignment: center">

<h1 align="center" style="color: darkblue">Employee List</h1>

    <%
        List<Employee> employeeList = (List<Employee>) request.getAttribute("employeeList");
        request.setAttribute("employeeList",employeeList);
    %>

    <table align="center" border="1" cellpadding="10px" style="font-size: larger">
        <tr>
            <th><bean:message key="emp.form.id"/> </th>
            <th><bean:message key="emp.form.name"/> </th>
            <th><bean:message key="emp.form.email"/> </th>
            <th><bean:message key="emp.form.salary"/> </th>
        </tr>
        <c:forEach var="emp" items="${employeeList}">
            <tr align="center">
                <td>${emp.id}</td>
                <td>${emp.name}</td>
                <td>${emp.email}</td>
                <td>${emp.salary}</td>
            </tr>
        </c:forEach>
        <tr align="center">
            <button type="button" onclick=document.location='${pageContext.request.contextPath}/'>Back</button>
        </tr>
    </table>
</body>
</html>
