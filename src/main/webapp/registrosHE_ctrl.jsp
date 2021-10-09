<%-- 
    Document   : registrosHE_ctrl
    Created on : 8/10/2021, 12:50:02 a. m.
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="logica.LogicaRegistroHE"%>
<%@page import="logica.RegistroHE"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    </head>
    <body>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Actor:400|Anton:400&amp;display=swap" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="main.css" media="screen"/>
        <title>Confirmación</title>
    </head>
    <body>

        <section>
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <!-- Container wrapper -->
                <div class="container" style="">
                    <!-- Navbar brand -->
                    <a class="navbar-brand me-2" href="https://hecyc.prodigweb.com">
                        <img
                            src="https://filedn.com/lUzUE4NoAeXHprKlGQFRwCu/Hecyc/logo-menu%20.png"
                            height="16"
                            alt=""
                            loading="lazy"
                            style="margin-top: -5px"
                            class="img-fluid"
                            />
                    </a>

                    <!-- Toggle button -->
                    <button
                        class="navbar-toggler"
                        type="button"
                        data-mdb-toggle="collapse"
                        data-mdb-target="#navbarButtonsExample"
                        aria-controls="navbarButtonsExample"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                        >
                        <i class="fas fa-bars"></i>
                    </button>

                    <!-- Collapsible wrapper -->
                    <div class="collapse navbar-collapse" id="navbarButtonsExample">
                        <div class="d-flex align-items-center ms-auto">
                            <a
                                type="button"
                                class="btn me-3 btn-primary"
                                href="https://hecyc.prodigweb.com"
                                ><img
                                    style="height: 20px; margin-right: 10px"
                                    src="https://filedn.com/lUzUE4NoAeXHprKlGQFRwCu/Hecyc/logout.png"
                                    />Salir</a
                            >
                        </div>
                    </div>
                    <!-- Collapsible wrapper -->
                </div>
                <!-- Container wrapper -->
            </nav>
            <!-- Navbar -->
        </section>
                <%
            int id = Integer.parseInt(request.getParameter("txtId"));
            int id_user = 1;
            String fecha_entrada = request.getParameter("txtDateInt");
            String hora_int = request.getParameter("txtHoraInt");
            String fecha_salida = request.getParameter("txtDateOut");
            String hora_out = request.getParameter("txtHoraOut");
            
            String accion = request.getParameter("btnSubmit");
            RegistroHE j = null;
            if (accion.equals("nuevo")) {
                j = new RegistroHE(fecha_entrada, hora_int, fecha_salida, hora_out);
            }
            else if (accion.equals("editar")){
                j = new RegistroHE(id, id_user, fecha_entrada, hora_int, fecha_salida, hora_out);
            }
            LogicaRegistroHE logicaHE = new LogicaRegistroHE();
            boolean guardado = logicaHE.guardarRegistroHE(j);
            if (guardado == true) {
                out.println("Registro guardado exitosamente");
            } else {
                out.println("Información de registro no se guardó.");
            }
        %>
        <a href="registrosHE_lista.jsp"><button type="submit" class="btn btn-primary" id="btnSubmit">Volver a la lista</button></a>
    </body>
</html>
