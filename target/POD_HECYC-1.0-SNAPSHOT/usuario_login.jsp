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
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Actor:400|Anton:400&amp;display=swap" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="main.css" media="screen"/>
        <title>Login</title>
    </head>
    <body>
        <section>
            <section
                class="h-100 gradient-form"
                style="background-color: rgba(66, 122, 161, 0.75)"
                >
                <div
                    class="min-vh-100 d-flex align-items-center justify-content-center"
                    >
                    <div
                        class="row d-flex justify-content-center align-items-center h-100"
                        >
                        <div class="col-xl-10">
                            <div class="card rounded-3 text-black">
                                <div class="row g-0">
                                    <div class="col-lg-6">
                                        <div class="card-body p-md-5 mx-md-4">
                                            <div class="text-center">
                                                <a href="principal.jsp">
                                                    <img
                                                        src="https://filedn.com/lUzUE4NoAeXHprKlGQFRwCu/Hecyc/logo-nombre.png"
                                                        style="width: 185px"
                                                        alt="logo"
                                                        class="mb-2"
                                                        />
                                                </a>
                                                <h4 class="mt-1 mb-5 pb-1">Tu sobretiempo a tiempo</h4>
                                            </div>

                                            <form>
                                                <p>Por favor ingresa tus datos para acceder:</p>

                                                <div class="form-outline mb-4">
                                                    <input
                                                        type="email"
                                                        id="form2Example11"
                                                        class="form-control"
                                                        placeholder="Usuario o correo electrónico*"
                                                        />
                                                </div>

                                                <div class="form-outline mb-4">
                                                    <input
                                                        type="password"
                                                        id="form2Example22"
                                                        class="form-control"
                                                        placeholder="Contraseña*"
                                                        />
                                                </div>

                                                <div class="text-center pt-1 mb-5 pb-1">
                                                    <button
                                                        class="
                                                        btn btn-primary btn-block
                                                        fa-lg
                                                        gradient-custom-2
                                                        mb-3
                                                        "
                                                        type="button"
                                                        >
                                                        Acceder
                                                    </button>
                                                    <a class="text-muted" href="#!"
                                                       >Olvide mi contraseña</a
                                                    >
                                                </div>

                                                <div
                                                    class="
                                                    d-flex
                                                    align-items-center
                                                    justify-content-center
                                                    pb-4
                                                    "
                                                    >
                                                    <p class="mb-0 me-2">¿No tienes una cuenta?</p>
                                                    <a type="button" class="btn btn-outline-success" href="usuario_registro.jsp">Crea una!</a
                                                    >
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div
                                        class="col-lg-6 d-flex align-items-center gradient-custom-2"
                                        >
                                        <div class="lc-block pe-5 ps-5">
                                            <img
                                                class="img-fluid"
                                                src="https://filedn.com/lUzUE4NoAeXHprKlGQFRwCu/Hecyc/login.svg"
                                                />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap.native@3.0.0/dist/bootstrap-native.min.js"></script>
    </body>
</html>