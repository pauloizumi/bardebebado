<%@page import="acessoBD.AcessoBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Declaração de variáveis globais --%>
<%!
    String nome, endereco;
    String sql;
%>
<%-- Leitura das variáveis recebidas por POST 
e armazenamento nas variáveis globais --%>
<%
    nome = request.getParameter("nome");
    endereco = request.getParameter("endereco");
    AcessoBD acessoBD = new AcessoBD();
    acessoBD.conecta();
    sql =  "insert  into  bar values(null,'"+nome+"' ,'"+endereco+"')";
// out.println("SQL: "+sql);
    acessoBD.executa(sql);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gravação de Dados</title>
    </head>
    <body bgcolor="f0f0f0">
        <p align="center">Dados gravados com sucesso!</p>
        <br>
        <p align="center"><a href="index.html">Página Principal</a></p>
    </body>
</html>