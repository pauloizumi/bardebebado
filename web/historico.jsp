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
    <link rel="stylesheet" type="text/css" href="style.css">
        
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" 
		integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
	<!-- Optional theme -->
	
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" 
		integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous"> -->
	<link rel="stylesheet" type="text/css" href="botao1.css">
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" 
		integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>
  </head>
    <body>
        <sql:setDataSource var="bar" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/bar" user="root" password=""/>
        <sql:query dataSource="${bar}" var="result">  
            SELECT * FROM historico
            WHERE idbar = <c:out value="${idbar}"/>
        </sql:query>
            
        <sql:query dataSource="${bar}" var="result1">  
            SELECT * FROM bebida
            WHERE idbar = <c:out value="${idbar}"/>
        </sql:query>
            
            <h2 align="center">Bebidas do bar: <c:out value="${barnome}"/></h2>
            <table align="center">                
                    <tbody>
                        <tr>
                            <th>Nome </th>  
                            <th>Preço </th>
                            
                        </tr>
                        <c:forEach var="row1" items="${result1.rows}">                          
                            <tr>
                                <td> 
                                    <c:out value="${row1.nome}"/>                                   
                                </td>                          
                                <td>
                                    <c:out value="${row1.preco}"/>
                                </td>
                                <td>
                                    <input type="button" value="Add">
                                </td>
                            </tr>
                            </c:forEach>
                    </tbody>
        </table>   
            
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
        <p align="center"><input name="button" type="button" class="btn btn-default" onClick="javascript: location.href='cadBebidas.jsp';" value="Cadastrar Bebidas" /></p>
        <p align="center"><a href="index.jsp">Página Principal</a></p>
    </body>
</html>
