
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Declaração de variáveis globais --%>
<%!
    String nome, endereco;
    String sql;
%>
<%
    nome = request.getParameter("nome");
    endereco = request.getParameter("endereco");
%>
<%-- Leitura das variáveis recebidas por POST 
e armazenamento nas variáveis globais --%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gravação de Dados</title>
    </head>
    <body>
        <sql:setDataSource var="bar" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/bar" user="root" password=""/>
        <sql:update dataSource="${bar}" var="resultado">        
                INSERT INTO bares (nome, endereco)
                VALUES ('<%= nome%>', '<%= endereco%>')            
        </sql:update>
        <p align="center">Dados gravados com sucesso!!</p>
<br>
<p align="center"><a href="index.jsp">Página Principal</a></p>
</body>
</html>