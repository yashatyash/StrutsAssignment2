<%--
  Created by IntelliJ IDEA.
  User: yash.raj
  Date: 10-08-2022
  Time: 11:12 pm
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
    <title>Home</title>
</head>
<body style="font-size: large">
    <h2 align="center">Employee Add,Update and Show Form</h2>
    <html:form action="emp.do">
        <table border="2" align="center" style="font-size: larger" cellpadding="5">
            <tr>
                <td>
                    <label>
                        <bean:message key="emp.form.name"/>
                    </label>
                </td>
                <td>
                    <html:text property="name"/>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <bean:message key="emp.form.email"/>
                    </label>
                </td>
                <td>
                    <html:text property="email"/>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <bean:message key="emp.form.password"/>
                    </label>
                </td>
                <td>
                    <html:password property="password"/>
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        <bean:message key="emp.form.salary"/>
                    </label>
                </td>
                <td>
                    <html:text property="salary"/>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <html:submit property="parameter" style="border-radius: 5px">
                        <bean:message key="emp.form.add"/>
                    </html:submit>
                    <html:submit property="parameter" style="border-radius: 5px">
                        <bean:message key="emp.form.update"/>
                    </html:submit>
                </td>
                <td align="center">
                    <html:submit property="parameter" style="border-radius: 5px">
                        <bean:message key="emp.form.showAll"/>
                    </html:submit>
                </td>
            </tr>
        </table>
    </html:form>
</body>
</html>
