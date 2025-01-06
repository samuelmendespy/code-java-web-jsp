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
                <label for="fieldName">Name</label>
                <input type="text" id="fieldName" class="form-control" name="name" required>
            </div>
        </fieldset>
        <fieldset>
            <div class="form-group mb-4">
                <label for="fieldEmail">Email</label>
                <input type="email" id="fieldEmail" class="form-control" name="email" required>
            </div>
        </fieldset>
        <button type="submit" class="btn btn-primary" onclick="submit()">Send</button>
        <button type="reset" class="btn btn-danger ms-2">Cancel</button>
    </form>
</div>