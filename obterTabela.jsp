<%-- 
    Document   : obterTabela
    Created on : 06/04/2016, 09:14:20
    Author     : a132067x
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="bar" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/bar" user="root" password=""/>
        
    <tr>
    </tr>
    </body>
</html>
