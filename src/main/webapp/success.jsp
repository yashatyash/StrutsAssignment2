<%--
  Created by IntelliJ IDEA.
  User: yash.raj
  Date: 11-08-2022
  Time: 03:05 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<html>
<head>
    <title>Success page</title>
</head>
<body style="font-size: large">
    <h2 align="center">Task Completed !!</h2>
    <button type="button" onclick=document.location='${pageContext.request.contextPath}/' style="alignment:
    center;border-radius: 5px">Back</button>
</body>
</html>
