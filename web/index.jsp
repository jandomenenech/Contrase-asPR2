<%-- 
    Document   : index
    Created on : 27 oct 2023, 15:18:35
    Author     : j.domenech
--%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="Java.Funciones"%>
<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Guardar Contraseña</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h2 class="text-center mt-5">Iniciar Sesión</h2>

            <div class="row justify-content-center">
                <div class="col-md-6">
                    <form class="mt-5" action="" method="post">
                        <div class="form-group">
                            <label for="username">Usuario</label>
                            <input type="text" name = "username" class="form-control" id="username" placeholder="Usuario">
                        </div>
                        <div class="form-group">
                            <label for="password">Contraseña</label>
                            <div class="input-group">
                                <!-- Agrega el atributo name aquí -->
                                <input type="password" name="password" class="form-control" id="password" placeholder="Contraseña">
                                <div class="input-group-append">
                                    <button id="show_password" class="btn btn-outline-secondary" type="button">👁️</button>

                                </div>
                            </div>
                        </div>
                        <button type="submit" name="submit" class="btn btn-primary btn-block">Inciar Sesion</button>
                        <%String password = "Hola",email="";
                            if (request.getParameter("submit") != null) {
                                password = request.getParameter("password");
                                email = request.getParameter("username");
                                
                                if (password.equals("R&2$KwP!8@vS6nTz")&&email.equals("j.camara@ceroca.cat")){
                                          Funciones.hashedString=Funciones.hashString(password);
                                    }
                                    else{
                                    %><p>Esto no puede ser putita</p><%
                            }
                            }%>
                    </form>
                </div>
            </div>
            
        </div>

        <!-- Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

        <!-- JavaScript para mostrar/ocultar la contraseña -->
        <script>
            document.getElementById('show_password').addEventListener('click', function () {
                var passwordInput = document.getElementById('password');
                if (passwordInput.type === 'password') {
                    passwordInput.type = 'text';
                } else {
                    passwordInput.type = 'password';
                }
            });
        </script>

    </body>
</html>
