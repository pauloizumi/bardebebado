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
        <link rel="stylesheet" type="text/css" href="back.css">


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" 
              integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
        <!-- Optional theme -->

        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" 
                integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous"> -->
        <link rel="stylesheet" type="text/css" href="botao1.css">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" 
        integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <table background-color="white"   border="1" align="center">
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
                    <td><input name="button" type="button" class="btn btn-default" onClick="javascript: location.href = 'cadBar.jsp';" value="Cadastrar Bar" /></td>
                    <td><input name="button" type="button" class="btn btn-default" onClick="javascript: location.href = '';" value="Excluir" /></td>                    
                </tr>
            </tbody>
        </table>

        <sql:setDataSource var="bar" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/bar" user="root" password=""/>
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