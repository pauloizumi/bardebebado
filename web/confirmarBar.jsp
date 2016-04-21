<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmação de Dados</title>
    </head>
    <body bgcolor="f0f0f0">
        <form action="gravarDados.jsp" method="POST">
            <table border="0" align="center">
                <thead>
                    <tr>
                        <td colspan="2" align="center"><h2>Confirmação de Bar</h2></td>
                    </tr>
                </thead>
                <tbody>
                    <tr><td>Nome: </td><td>
                            <input type="text" name="nome" value="<%= request.getParameter("nome")%>" />
                        </td>
                    </tr>
                    <tr><td>Endereço: </td><td>
                            <input  type="text"  name="endereco"  value="<%=request.getParameter("endereco") %>" />
                        </td>
                    </tr>
                  
                    <tr>
                        <td><input type="reset" value="Reset" /></td>
                        <td><input type="submit" value="Gravar" /></td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
                    <tr><td>&nbsp;</td>
                        <td><a href="index.html">Página Principal</a></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>