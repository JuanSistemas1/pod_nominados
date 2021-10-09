<%-- 
    Document   : registrosHE_lista
    Created on : 27/09/2021, 10:47:44 a. m.
    Author     : Juan
--%>
<%@page import="logica.LogicaRegistroHE"%>
<%@page import="logica.RegistroHE"%>
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
        <title>Registros Horas Extras</title>
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
        <section class="pb-8">
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="lc-block text-center align-self-center pt-6 pb-5">
                                <div editable="rich">
                                    <h1 class="text-primary" style="padding-top: 4rem">
                                        Listado de registros de horas trabajadas
                                    </h1>
                                </div>
                            </div>
                            <!-- /lc-block -->
                        </div>
                        <!-- /col -->
                    </div>
                </div>
            </section>
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="lc-block pt-4 pb-4">
                                <div class="row mb-3 pb-4">
                                    <form>
                                        <!-- Campo de entrada de fecha -->
                                        Filtrar por rango de fechas.&nbsp; &nbsp; &nbsp; &nbsp;
                                        &nbsp; &nbsp; Desde:
                                        <input type="date" name="fecha" min="" max="" step="2" />
                                        <!-- Campo de entrada de hora -->
                                        &nbsp; &nbsp; &nbsp; &nbsp; Hasta:
                                        <input type="date" name="fecha" min="" max="" step="2" />
                                        <div class="d-flex alignright justify-content-center mt-0 py-0">
                                    <a href="registrosHE_form.jsp?accion=nuevo" <button type="submit" class="btn btn-primary" id="btnNuevo">Nuevo registro</button></a>
                                    <div class="col-auto"></div>      
                                    </form>
                                   
                                </div>
                                </div>


                                <div class="table-responsive">
                                    <table class="table align-middle table-hover">
                                        <thead style="background-color: #427aa1; color: white">
                                            <tr>
                                                <th scope="col">Id</th>
                                                <th scope="col">Usuario</th>
                                                <th scope="col">Fecha Entrada</th>
                                                <th scope="col">Hora Entrada</th>
                                                <th scope="col">Fecha Salida</th>
                                                <th scope="col">Hora Salida</th>
                                                <th scope="col">HED</th>
                                                <th scope="col">HEN</th>
                                                <th scope="col">RN</th>
                                                <th scope="col">HF</th>
                                                <th scope="col">HEDF</th>
                                                <th scope="col">HENF</th>
                                                <th scope="col">RNF</th>
                                                <th scope="col">Acciones</th>
                                            </tr>
                                        </thead>
                                        <%
                                            LogicaRegistroHE logicaRegistro = new LogicaRegistroHE();
                                            boolean hayDatos = logicaRegistro.cargarTodosLosRegistros();
                                        %>
                                        <tbody>
                                            <% if (hayDatos) { %>
                                            <%  for (RegistroHE he : logicaRegistro.getLista()) {%>
                                            <tr>
                                                <td scope="row"><%= he.getId()%></td>
                                                <td><%= logicaRegistro.getIdUsuario(he.getId_usuario())%></td>
                                                <td><%= he.getFecha_registro()%></td>
                                                <td><%= he.getHora_int()%></td>
                                                <td><%= he.getFecha_salida()%></td>
                                                <td><%= he.getHora_out()%></td>
                                                <td><%= he.getRn()%></td>
                                                <td><%= he.getHed()%></td>
                                                <td><%= he.getHen()%></td>
                                                <td><%= he.getHef()%></td>
                                                <td><%= he.getHedf()%></td>
                                                <td><%= he.getHenf()%></td>
                                                <td><%= he.getRnf()%></td>
                                                <td>
                                                    <a href="registrosHE_form.jsp?accion=editar&id=<%= he.getId()%>"><button type="button" class="btn btn-success"><i class="bi bi-pencil-fill"></i></button></a>
                                                    <button type="button" class="btn btn-danger"><i class="bi bi-trash"></i></button>
                                                </td>
                                            </tr>
                                            <% } %>
                                            <% } else { %>
                                            <tr>
                                                <td colspan="13">No hay datos</td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- /lc-block -->
                        </div>
                        <!-- /col -->
                    </div>
                </div>
            </section>
        </section>
        <section>
            <section class="bg-secondary text-dark">
                <div class="container py-5"></div>
                <div class="py-5 container">
                    <div class="row">
                        <div class="col-6 small">
                            <div class="lc-block">
                                <div editable="rich">
                                    <p>Copyright © Hecyc 2021</p>
                                </div>
                            </div>
                            <!-- /lc-block -->
                        </div>
                        <div class="col-6 text-end small">
                            <div class="lc-block">
                                <div editable="rich">
                                    <p>Grupo S2 - Nominados - Tutor Carlos Palma</p>
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