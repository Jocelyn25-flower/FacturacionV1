<%-- 
    Document   : FormularioEmisor
    Created on : 18 mar 2024, 19:52:43
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
        <!-- Menu  -->
        <%@include file="menu.jsp" %>
        <!-- formulario -->

        <div class="modal-body">
            <div class="container">
                <div class="abs-center">
                    <h3>Formulario de Emisor</h3>

                    <form action="#" class="border p-4 form">
                        <div class="row">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Nombre" aria-label="First name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Nombre Comercial" aria-label="First name">
                            </div>
                        </div>

                        <br>
                        <div class="row">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Actividad" aria-label="First name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="NCR" aria-label="Last name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="NIT" aria-label="Last name">
                            </div>
                        </div>

                        <br>
                        <div class="row">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Departamento" aria-label="First name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Municipio" aria-label="Last name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Complemento" aria-label="Last name">
                            </div>
                        </div>

                        <br>
                        <div class="row">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Telefono" aria-label="First name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Email@.com" aria-label="First name">
                            </div>
                        </div>
                        <br>
                        <div class="col">
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>


    </body>
</html>
