<%@page import="Classes.Pessoa" %>
<%@page import="Classes.PessoaDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
int idInput = Integer.parseInt(request.getParameter("id"));
String nameInput = request.getParameter("name");
String emailInput = request.getParameter("email");

Pessoa person = new Pessoa();
PessoaDao personDao = new PessoaDao();

person.setIdPessoa(idInput);
person.setNomePessoa(nameInput);
person.setEmail(emailInput);
if(personDao.updatePerson(person)) {
    response.sendRedirect("manage.jsp?pmensagem=Pessoa alterada com sucesso");
} else {
    response.sendRedirect("manage.jsp?pmensagem=Problemas ao alterada dados da pessoa");
}
%>