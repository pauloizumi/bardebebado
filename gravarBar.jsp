<%-- 
    Document   : gravarDados
    Created on : 06/04/2016, 10:13:18
    Author     : a132067x
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
    String nome, endereco;
%>

<%
    nome = request.getParameter("nome");
    endereco = request.getParameter("endereco");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gravação de dados</title>
    </head>
    <body>
        <sql:setDataSource var="bar" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/bar" user="root" password=""/>
        <sql:update dataSource="${bar}" var="resultado">        
                INSERT INTO bares (nome, endereco)
                VALUES ('<%= nome%>', '<%= endereco%>')            
        </sql:update>
        <p align="center">Dados gravados com sucesso na tabela cliente!</p>
<br>
<p align="center"><a href="index.jsp">Página Principal</a></p>
</body>
    
</html>
