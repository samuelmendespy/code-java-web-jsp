<%@page import="Classes.Pessoa" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
    String nameInput = request.getParameter("name");
    String emailInput = request.getParameter("email");

    Pessoa pes = new Pessoa();
    pes.setNomePessoa(nameInput);
    pes.setEmailPessoa(emailInput);
    if(pes.IncluirPessoa()) {
        response.sendRedirect("register.jsp?pmensagem=Pessoa cadastrada com sucesso");
    } else {
        response.sendRedirect("register.jsp?pmensagem=Problemas ao cadastrar pessoa");
    }
    %>