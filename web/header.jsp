<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title><%= request.getAttribute("pageTitle") != null ? request.getAttribute("pageTitle") : "App Title" %></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
    </head>
    <body class="bg-light">
        <header>
            <div class="container py-3">
                <h1 class="text-dark mb-3" id="app-title">TODO write content</h1>
                <p class="text-muted lead">. &bull; .</p>
            </div>
            <nav>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Index</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Manager
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#" target="app_window">Find</a></li>
                            <li><a class="dropdown-item" href="<%= request.getContextPath() %>/pages/register.jsp" target="app_window">Registration</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact Us</a>
                    </li>
                </ul>
            </nav>
        </header>
    </body>
</html>
