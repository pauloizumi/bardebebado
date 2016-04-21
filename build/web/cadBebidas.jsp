<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela de Cadastro</title>
    </head>
    <body bgcolor="f0f0f0">
        <form action="confirmarBebida.jsp" method="POST">
            <table border="0" align="center">
                <thead>
                    <tr>
                        <td colspan="2" align="center"><h2>Cadastro de Bebidas</h2></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nome: </td>
                        <td><input type="text" name="nome" value="" /></td>
                    </tr>
                    <tr>
                        <td>Preço: </td>
                        <td><input type="number" name="preco" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Limpar" /></td>
                        <td><input type="submit" value="Enviar" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><a href="index.html">Página Principal</a></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>