
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Declaração de variáveis globais --%>
<%!
    String nome, preco; 
    int idBar;
%>
<%
    nome = request.getParameter("nome");
    preco = request.getParameter("preco");
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
    <body bgcolor="f0f0f0">
        
        
        <sql:setDataSource var="bar" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/bar" user="root" password=""/>
        <sql:update dataSource="${bar}" var="resultado">        
                INSERT INTO bebida (idBar,nome,preco)
                VALUES (${idbar},'<%= nome%>', '<%= preco%>')            
        </sql:update>
        <p align="center">Dados gravados com sucesso!</p>
        <br>
        <p align="center"><a href="index.jsp">Página Principal</a></p>
    </body>
</html>