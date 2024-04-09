<%-- 
    Document   : FormularioReceptor
    Created on : 21 mar 2024, 20:42:02
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
         <%@include file="menu.jsp" %>

         <div class="modal-body">
            <div class="container">
                <div class="abs-center">
                    <h3>Formulario de Receptor</h3>

                    <form action="#" class="border p-4 form">
                        <div class="row">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Nombre" aria-label="First name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Tipo de documento" aria-label="First name">
                            </div>
                        </div>

                        <br>
                        <div class="row">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="Nº Documento" aria-label="First name">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="NRC" aria-label="Last name">
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
          
                        <div class="col">
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
