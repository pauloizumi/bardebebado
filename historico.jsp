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
        <title>Historico</title>
    </head>
    <body>
        <sql:setDataSource var="bar" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/bar" user="root" password=""/>
        <sql:query dataSource="${bar}" var="result">  
            SELECT * FROM historico
            WHERE idbar = <c:out value="${idbar}"/>
        </sql:query>
         <sql:query dataSource="${bar}" var="result1">  
            SELECT nome FROM bebida
        </sql:query>    
            
            <h2 align="center">Histórico do bar: <c:out value="${barnome}"/></h2>    
        <table align="center">                
                    <tbody>
                        <tr>
                            <th>Data </th>  
                            <th>Bebida</th>
                        
                            
                        
                          
                        </tr>
                      
                        <c:forEach var="row" items="${result1.rows}">
                            <tr>
                                <td> 
                                    <c:out value="${row.data}"/>                                   
                                </td>                          
                                <td>
                                    <c:out value="${row.nome}"/>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
        </table>
        <a href="cadBebidas.jsp">Cadastrar bebida</a>
    </body>
</html>
