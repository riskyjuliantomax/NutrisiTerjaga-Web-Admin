<%-- 
    Document   : destroysession
    Created on : Jan 6, 2021, 7:30:17 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Destroy Session</title>
    </head>
    <body>
        <%
            session.invalidate();
            request.getRequestDispatcher("Index.jsp").forward(request, response);
        %>
    </body>
</html>
