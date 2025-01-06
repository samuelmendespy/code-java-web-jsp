v<%@page import="Classes.Pessoa"%>
<%@page import="Classes.PessoaDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<div class="container">
    <h3 class="text-primary mb-2">Management</h3>
</div>
    <%
    int idToFind = Integer.parseInt(request.getParameter("id"));
    Pessoa c = new Pessoa();
    PessoaDao personDao = new PessoaDao();
    c = personDao.findOnePerson(idToFind);
    %>
<div class="container mt-2">
    <form id="manager" action="update.jsp">
        <h3 class="">Person Editor</h3>
        <p>.</p>
        <label>
            <%
                if(request.getParameter("pmensagem") !=null )
                out.write(request.getParameter("pmensagem"));
            %>
        </label>
        <fieldset>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" class="form-control" 
                       name="name" 
                       value="<% out.write("" + c.getNomePessoa()); %>" 
                       required>
            </div>
        </fieldset>
        <fieldset>
            <div class="form-group mb-4">
                <label for="email">Email</label>
                <input type="email" id="name" class="form-control" name="email" value="<% out.write("" + c.getEmail()); %>" required>
            </div>
        </fieldset>
        <button type="submit" class="btn btn-primary" onclick="update()">Send</button>
        <button type="reset" class="btn btn-danger ms-2">Cancel</button>
    </form>
</div>