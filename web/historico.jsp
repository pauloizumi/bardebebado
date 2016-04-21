<%-- 
    Document   : historico
    Created on : 20/04/2016, 09:13:08
    Author     : junior
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="bar" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/bar" user="root" password="ifsp"/>
        <sql:query dataSource="${bar}" var="result">  
            SELECT * FROM historico
            WHERE idbar = <c:out value="${idbar}"/>
        </sql:query>
            <h2 align="center">Histórico do bar: <c:out value="${barnome}"/></h2>    
        <table align="center">                
                    <tbody>
                        <tr>
                            <th>Data </th>  
                            <th>Bebida</th>
                            
                        </tr>
                        <c:forEach var="row" items="${result.rows}">
                            <tr>
                                <td> 
                                    <c:out value="${row.data}"/>                                   
                                </td>                          
                                <td>
                                    <c:out value="${row.bebida}"/>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
        </table>
        <a href="cadBebidas.jsp">Cadastrar bebida</a>
    </body>
</html>
