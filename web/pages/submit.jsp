<%@page import="Classes.Pessoa" %>
<%@page import="Classes.PessoaDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String nameInput = request.getParameter("name");
String emailInput = request.getParameter("email");

Pessoa person = new Pessoa();
PessoaDao personDao = new PessoaDao();
person.setNomePessoa(nameInput);
person.setEmail(emailInput);
if(personDao.addPerson(person)) {
    response.sendRedirect("register.jsp?pmensagem=Pessoa cadastrada com sucesso");
} else {
    response.sendRedirect("register.jsp?pmensagem=Problemas ao cadastrar pessoa");
}
%>