<%-- 
    Document   : VHEnvios
    Created on : 19 mar 2024, 21:17:51
    Author     : dany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- menu -->
        <%@include file="menu.jsp" %>

        <div class="modal-body">
            <div class="container">
                <div class="abs-center">
                    <form action="#" class="border p-3 form">
                        <div class="form-group">
                            <label for="nit">nit/DUI</label>
                            <input type="email" name="nit" id="nit" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña</label>
                            <input type="password" name="password" id="password" class="form-control">
                        </div>

                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
