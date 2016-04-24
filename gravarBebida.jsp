<%-- 
    Document   : gravarDados
    Created on : 06/04/2016, 10:13:18
    Author     : a132067x
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
    String nome;
%>

<%
    nome = request.getParameter("nome");
   // preco = request.getParameter("preco");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gravação de dados</title>
    </head>
    <body>
        <sql:setDataSource var="bar" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/bar" user="root" password=""/>
        <sql:update dataSource="${bar}" var="resultado">        
                INSERT INTO bebida (nome)
                VALUES ('<%= nome%>')            
        </sql:update>
        <p align="center">Dados gravados com sucesso</p>
<br>
<p align="center"><a href="index.jsp">Página Principal</a></p>
</body>
    
</html>
