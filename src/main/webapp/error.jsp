<%--
  Created by IntelliJ IDEA.
  User: yash.raj
  Date: 11-08-2022
  Time: 03:10 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<style>
    .button
    {
        cursor: pointer;
        border-radius: 5px;
        height:30px;
        width:100%;
        background-color: aliceblue;
        text-decoration-color: black;
        text-align: center;
        position: relative;
    }
</style>
<html>
<head>
    <title>Error</title>
</head>
<body style="font-size: larger">

    <h1 align="center" style="color: red;margin-top: 50px">Error 500 ! Bad Request</h1>
    <table align="center" cellpadding="10">
        <tr>
            <td align="center">
                <button type="button" onclick=document.location='${pageContext.request.contextPath}/' class="button">
                    Back</button>
            </td>
        </tr>
    </table>
</body>
</html>
