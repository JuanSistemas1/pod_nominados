<%-- 
    Document   : usuario_registro
    Created on : 27/09/2021, 10:34:57 a. m.
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Actor:400|Anton:400&amp;display=swap" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="main.css" media="screen"/>
        <title>Register</title>
    <body>
        <section>
            <section
                class="h-100 gradient-form"
                style="background-color: rgba(66, 122, 161, 0.75)"
                >
                <div class="min-vh-100 offset-lg-3 col-lg-6 py-6">
                    <div
                        class="row d-flex justify-content-center align-items-center h-100"
                        >
                        <div class="col-xl-10">
                            <div class="card rounded-3 text-black">
                                <div class="row g-0">
                                    <div class="">
                                        <div class="card-body p-md- mx-md-4">
                                            <div class="text-center">
                                                <a href="principal.jsp">
                                                    <img
                                                        src="https://filedn.com/lUzUE4NoAeXHprKlGQFRwCu/Hecyc/logo-nombre.png"
                                                        style="width: 185px"
                                                        alt="logo"
                                                        class="mb-2"
                                                        />
                                                </a>
                                                <h4 class="mt-1 mb-3 pb-1">Tu sobretiempo a tiempo</h4>
                                            </div>
                                            <form>
                                                <div class="mb-4">
                                                    <label
                                                        for="formGroupExampleInput"
                                                        class="form-label"
                                                        ></label>
                                                    <input
                                                        type="text"
                                                        class="form-control"
                                                        id="formGroupExampleInput"
                                                        placeholder="Nombre*"
                                                        />
                                                </div>
                                                <div class="mb-4">
                                                    <input
                                                        type="email"
                                                        class="form-control"
                                                        id="exampleInputEmail1"
                                                        placeholder="Email*"
                                                        aria-describedby="emailHelp"
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
                                                <div class="form-outline mb-4">
                                                    <input
                                                        type="password"
                                                        id="form2Example23"
                                                        class="form-control"
                                                        placeholder="Repite la contraseña*"
                                                        />
                                                </div>
                                                <div class="mb-3 form-check">
                                                    <input
                                                        type="checkbox"
                                                        class="form-check-input"
                                                        id="exampleCheck1"
                                                        />
                                                    <label class="form-check-label" for="exampleCheck1"
                                                           >He leído y acepto las condiciones generales de
                                                        contratación y las políticas de privacidad</label
                                                    >
                                                    <p align="justify">
                                                        HECYC es el responsable de la recogida y tratamiento
                                                        de sus datos con la finalidad de gestionar su
                                                        registro como usuario y el mantenimiento de su
                                                        cuenta en nuestra base de datos. El soporte jurídico
                                                        para este tratamiento reside en su consentimiento.
                                                        No está previsto compartir sus datos con terceros.
                                                        Le recordamos que tiene el derecho a acceder,
                                                        rectificar y suprimir sus datos personales, así como
                                                        otros derechos, como se explica en la política de
                                                        privacidad.
                                                    </p>
                                                </div>
                                                <div class="d-grid gap-2 mb-2">
                                                    <button class="btn btn-primary" type="button">
                                                        Regístrate
                                                    </button>
                                                </div>
                                                <div
                                                    class="
                                                    d-flex
                                                    align-items-center
                                                    justify-content-center
                                                    mb-4
                                                    "
                                                    >
                                                    <p class="mb-0 me-2">¿Ya tienes una cuenta?</p>
                                                    <a type="button" class="btn btn-link px-3 me-2" href="usuario_login.jsp">Inicia sesión</a
                                                    >
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /lc-block -->
                        </div>
                    </div>
                </div>
            </section>
        </section>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap.native@3.0.0/dist/bootstrap-native.min.js"></script>
    </body>
</html>

