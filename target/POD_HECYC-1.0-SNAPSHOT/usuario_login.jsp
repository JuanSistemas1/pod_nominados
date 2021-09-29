<%-- 
    Document   : usuario_login
    Created on : 27/09/2021, 10:20:28 a. m.
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="logica.LogicaUsuario"%>
<%@page import="logica.Usuario"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.TreeMap"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <title>Login - HECYC</title>
        <style type="text/css">
            .gradient-custom-3 {
                /* fallback for old browsers */
                background: #84fab0;

                /* Chrome 10-25, Safari 5.1-6 */
                background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));

                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
            }
            .gradient-custom-4 {
                /* fallback for old browsers */
                background: #84fab0;

                /* Chrome 10-25, Safari 5.1-6 */
                background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));

                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
            }
        </style>
    </head>
    <body>
        <section class="vh-100 bg-image" style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.jpg');">
            <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="card" style="border-radius: 15px;">
                                <div class="card-body p-5">
                                    <h2 class="text-uppercase text-center mb-5">Inicia Sesión</h2>
                                                                       
                                    <form action="usuario_ctrl.jsp" method="post">

                                        <div class="form-outline mb-4">
                                            <input type="email" id="form3Example3cg" class="form-control form-control-lg" id="txtEmail" name="txtEmail" />
                                            <label class="form-label" for="form3Example3cg">Escriba su correo electrónico</label>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <input type="password" id="form3Example4cg" class="form-control form-control-lg" id="txtPass" name="txtPass" />
                                            <label class="form-label" for="form3Example4cg">Contraseña</label>
                                        </div>

                                        <div class="d-flex justify-content-center">
                                            <button type="button" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Iniciar Sesión</button>
                                        </div>

                                        <p class="text-center text-muted mt-5 mb-0">¿No tiene tiene una cuenta? <a href="usuario_registro.jsp" class="fw-bold text-body"><u>Regístrese</u></a></p>

                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
