<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmação de Dados</title>
        <style type="text/css">
            @import url("../style.css");
        </style>
        <!-- Latest compiled and minified CSS -->
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
    <body bgcolor="f0f0f0">
        <form action="gravarBar.jsp" method="POST">
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
                        <td><input type="reset"  class="btn btn-default"value="Reset" /></td>
                        <td><input type="submit" class="btn btn-default" value="Gravar" /></td>
                    </tr>
                    <tr><td colspan="2">&nbsp;</td></tr>
                    <tr><td>&nbsp;</td>
                        <td><a href="index.jsp">Página Principal</a></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>