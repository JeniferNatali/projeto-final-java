<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Livros</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <%@ include file = "../menubar.jsp" %>
        <div class="container">
        <h1>Livros</h1>
        <a href="/livros/insert" class="btn btn-primary">Novo Livro</a>
        <table>
            <tr>
                <th>Id</th>
                <th>Título</th>
                <th>Gênero</th>
                <th>Autor</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="l" items="${livros}">
                <tr>
                    <td>${l.getId()}</td>
                    <td>${l.getTitulo()}</td>
                    <td>${l.getGenero().nome}</td>
                    <td>
                        <a href="/livros/update/${l.getId()}" class="btn btn-secondary">Editar</a> | 
                        <a href="/livros/delete/${l.getId()}" class="btn btn-danger">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    </body>
</html>

