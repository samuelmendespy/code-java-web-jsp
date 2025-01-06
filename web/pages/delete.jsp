<%@page import="Classes.Pessoa" %>
<%@page import="Classes.PessoaDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int idInput = Integer.parseInt(request.getParameter("id"));

    Pessoa person = new Pessoa();
    PessoaDao personDao = new PessoaDao();
    person.setIdPessoa(idInput);
    if(personDao.deletePerson(person)) {
        response.sendRedirect("manage.jsp?pmensagem=O cadastro da Pessoa foi removido.");
    } else {
        response.sendRedirect("manage.jsp?pmensagem=Problemas ao excluir Pessoa");
    }
%>