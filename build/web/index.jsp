<%-- 
    Document   : index
    Created on : 06/04/2016, 11:01:11
    Author     : a132067x
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body bgcolor="f0f0f0">
        <table border="0" align="center">
            <thead>
                <tr>
                    <td colspan="2" align="center"><h2>Meu Consumo</h2></td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    
                </tr>
                <tr>
                    <td colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td><a href="cadBar.jsp">Cadastrar Bar</a></td>
                    <td>Excluir</td>                    
                </tr>
            </tbody>
            </table>
        
        <sql:setDataSource var="bar" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/bar" user="root" password="ifsp"/>
        <sql:query dataSource="${bar}" var="result">  
            SELECT * FROM bares;
        </sql:query>
        <h2 align="center">Tabela de bares</h2>    
        <table align="center">                
                    <tbody>
                        <tr>
                            <th>Nome do Bar</th>                           
                        </tr>
                        <c:forEach var="row" items="${result.rows}">
                            <tr>
                                <td> 
                                    <c:set var="barnome" scope="session" value="${row.nome}"/>
                                    <a href="historico.jsp"><c:out value="${barnome}"/></a>
                                    <c:set var="idbar" scope="session" value="${row.id}"/>
                                    
                                </td>                                
                            </tr>
                        </c:forEach>
                    </tbody>
        </table>
    </body>
</html>