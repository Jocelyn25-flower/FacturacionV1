<%-- 
    Document   : VHTokens
    Created on : 18 mar 2024, 20:12:46
    Author     : dany
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Historial de tokens</title>
        <link href="../css/style.css" rel="stylesheet" type="text/css" />
        <!-- tag de bootratraps -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <!-- menu -->
        <%@include file="menu.jsp" %>

        <!-- buscador -->
        <form class="d-flex" role="search" style="width:400px;margin-left:150px; margin-right:auto;">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-info" type="submit">Buscar</button>
        </form>
        <!-- boton de formulario de ingreso -->
        <form class="d-flex" role="search" style="width:400px;margin-left:1200px; margin-right:auto;">
            <button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal">Nuevo Token</button>
        </form>
        <br>
        <!--formulario de ingreso -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Formulario de Token</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
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
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-primary">Guardar</button>
                    </div>
                </div>
            </div>
        </div>
        <!--tabla  -->
        <table  class="table table-bordered" style="width: 1200px;margin-left:auto; margin-right:auto;">
            <thead>
                <tr class="table-info">
                    <th scope="col">correo</th>
                    <th scope="col">Nit</th>
                    <th scope="col">contraseña</th>
                    <th scope="col">apikey</th>
                    <th scope="col">Fecha</th>  
                </tr>
            </thead>
            <tbody>
               <c:forEach var="usuario" items="${usuarios}">
                    <tr>
                        <td>${usuario.getCorreo()}</td> 
                        <td>${usuario.getNit()}</td> 
                        <td>${usuario.getPass()}</td> 
                        <td>${usuario.getApikey()}</td>
                        <td>${usuario.getFecha()}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>


        <!-- tag de bootratraps -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
