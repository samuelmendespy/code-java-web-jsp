<%@page import="java.util.List"%>
<%@page import="Classes.Pessoa"%>
<%@page import="Classes.PessoaDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<div class="container">
    <h3 class="text-primary mb-2">Management</h3>
</div>
<div class="container mt-2">
    <form id="manager" action="submit.jsp">
    <div class="container">
        <h3 class="text-primary mb-2"></h3>
        <p>.</p>
        <div class="container mt-2">
            <%
                Pessoa pes = new Pessoa();
                PessoaDao personDao = new PessoaDao();
                List <Pessoa> listaPessoas = personDao.findPerson();
            %>
            <h4 class="text-center">Manage Registers</p>
            <label class="" id="msg">
                <%
                    if(request.getParameter("pmensagem") !=null )
                    out.write(request.getParameter("pmensagem"));
                %>
            </label>
            <table class="table mt-4">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Edit</th>
                        <th>Delete</th>
                        </tr>
                </thead>
                <tbody>
                    <%
                    if (listaPessoas == null || listaPessoas.isEmpty()) {
                        out.write("<p>List has no items to show!</p>");
                        }
                    %>
                    <% for (Pessoa p : listaPessoas) {%>
                    <tr>
                        <td><% out.write(p.getNomePessoa()); %></td>
                        <td><% out.write(p.getEmail()); %></td>
                        <td><a href="#">Edit</a></td>
                        <td>
                            <a 
                                href="delete.jsp?id=<%= p.getIdPessoa() %>" 
                                class="btn btn-danger ms-2" 
                                onclick="return confirm('Are you sure you want to delete this person?');">
                                Delete
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
        </table>
    </div>
</div>