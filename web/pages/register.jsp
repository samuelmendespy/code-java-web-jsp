<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<div class="container">
    <h3 class="text-primary mb-2">Management</h3>
</div>
<div class="container mt-2">
    <form id="manager" action="submit.jsp">
        <h3 class="">Registration Form</h3>
        <p>.</p>
        <label>
            <%
                if(request.getParameter("pmensagem") != null)
                out.write(request.getParameter("pmensagem"));
            %>
        </label>
        <fieldset>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" class="form-control" name="name" required>
            </div>
        </fieldset>
        <fieldset>
            <div class="form-group mb-4">
                <label for="email">Email</label>
                <input type="email" id="name" class="form-control" name="email" required>
            </div>
        </fieldset>
        <button type="submit" class="btn btn-primary" onclick="submit()">Send</button>
        <button type="reset" class="btn btn-danger ms-2">Cancel</button>
    </form>
</div>