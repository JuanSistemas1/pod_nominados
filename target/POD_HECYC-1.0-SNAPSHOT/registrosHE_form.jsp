<%-- 
    Document   : registrosHE_form
    Created on : 8/10/2021, 12:45:07 a. m.
    Author     : Juan
--%>
<%@page import="logica.LogicaRegistroHE"%>
<%@page import="logica.RegistroHE"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.TreeMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Actor:400|Anton:400&amp;display=swap" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="main.css" media="screen"/>
        <title>Registra tus horas</title>
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
    <section>
      <section>
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="lc-block text-center align-self-center pt-6 pb-5">
                <div editable="rich">
                  <h1 class="text-primary">Ingreso de registro</h1>
                </div>
              </div>
              <!-- /lc-block -->
            </div>
            <!-- /col -->
          </div>
        </div>
      </section>
    </section>

    <section class="pt-4 pb-4">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="lc-block">
                
            <%
                String accion = request.getParameter("accion");
                int id;
                String fecha_entrada = "";
                String hora_int = "";
                String fecha_salida = "";
                String hora_out = "";
                
                if (accion.equals("editar")) {
                    id = Integer.parseInt(request.getParameter("id"));
                    LogicaRegistroHE logicaHE = new LogicaRegistroHE();
                    RegistroHE j = logicaHE.cargarUnRegistro(id);
                    fecha_entrada = j.getFecha_registro();
                    fecha_salida = j.getFecha_salida();
                    hora_int = j.getHora_int();
                    hora_out = j.getHora_out();
                }                    
                else {
                    id = 0;
                }
            %>
                
                
              <form method="post" action="registrosHE_ctrl.jsp" class="py-4">
                <div class="mb-4 d-flex">
                    
                  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Fecha entrada*" name="txtId" value="<%= id %>" readonly/>
                  <div class="col-1"></div>
                  
                  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Fecha entrada*" name="txtDateInt" value="<%= fecha_entrada %>" required/>
                  <div class="col-1"></div>
                  
                  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Hora entrada*" name="txtHoraInt" value="<%= hora_int %>" required/>
                  <div class="col-1"></div>
                  
                  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Fecha salida*" name="txtDateOut" value="<%= fecha_salida %>" required/>
                  <div class="col-1"></div>
                  
                  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Hora salida*" name="txtHoraOut" value="<%= hora_out %>" required/>
                </div>
                  
                <div class="d-flex justify-content-center mt-4 py-4">
                  <button type="submit" class="btn btn-primary" id="btnSubmit" name="btnSubmit" value="<%= accion %>">Guardar</button>
                  <div class="col-1"></div>
                  <a href="registrosHE_lista.jsp"><button type="button" class="btn btn-secondary" id="btnSubmit" name="btnCancelar">Cancelar</button></a>          
                </div>
                  
              </form>
            </div>
            <!-- /lc-block -->
          </div>
          <!-- /col -->
        </div>
      </div>
    </section>
    
    <section>
      <section class="bg-secondary text-dark">
        <div class="container py-5">
          <div class="row mt-4">
            <div class="col-lg-4">
              <div class="lc-block mb-4">
                <a href="https://hecyc.prodigweb.com">
                  <img
                    class="img-fluid"
                    alt="logo"
                    src="https://filedn.com/lUzUE4NoAeXHprKlGQFRwCu/Hecyc/logo-menu%20.png"
                    style="max-height: 10vh"
                  />
                </a>
              </div>
              <div class="lc-block small">
                <div editable="rich">
                  <p>
                    Somos la mejor opcion para el control de tus horas extras.
                  </p>
                </div>
              </div>
              <!-- /lc-block -->
              <div class="lc-block py-2 text-primary bg-secondary">
                <a class="text-decoration-none" href="facebook.com">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 320 512"
                    width="1.5em"
                    height="1.5em"
                    lc-helper="svg-icon"
                    fill="currentColor"
                    class="me-3"
                  >
                    <path
                      d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"
                    ></path>
                  </svg>
                </a>
                <a class="text-decoration-none" href="twitter.com">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 512 512"
                    width="1.5em"
                    height="1.5em"
                    lc-helper="svg-icon"
                    fill="currentColor"
                    class="me-3"
                    style=""
                  >
                    <path
                      d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"
                    ></path>
                  </svg>
                </a>
                <a class="text-decoration-none" href="instagram.com">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 448 512"
                    width="1.5em"
                    height="1.5em"
                    lc-helper="svg-icon"
                    fill="currentColor"
                    class="text-primary"
                  >
                    <path
                      d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"
                    ></path>
                  </svg>
                </a>
              </div>
            </div>
            <div class="offset-lg-1 col-lg-3">
              <div class="lc-block mb-4">
                <div editable="rich">
                  <h4>Acceso rápido</h4>
                </div>
              </div>
              <!-- /lc-block -->
              <div class="lc-block small">
                <div editable="rich">
                  <a class="nav-link" href="https://hecyc.prodigweb.com"
                    >Inicio</a
                  >
                  <a
                    class="nav-link"
                    href="https://hecyc.prodigweb.com/ventajas"
                    >Ventajas</a
                  >
                  <a
                    class="nav-link"
                    href="https://hecyc.prodigweb.com/contacto"
                    >Contacto</a
                  >
                </div>
              </div>
              <!-- /lc-block -->
            </div>
            <div class="offset-lg-1 col-lg-3">
              <div class="lc-block mb-4">
                <div editable="rich">
                  <h4>Contáctanos</h4>
                </div>
              </div>
              <!-- /lc-block -->
              <div class="lc-block small">
                <div editable="rich">
                  <p>tel: <a href="tel: +573176350625">+57 315 5555555</a></p>
                  <p>
                    Email: <a href="mailto: info@hecyc.com">info@hecyc.com</a>
                  </p>
                  <p>Av. Calle Siempre Viva 742</p>
                </div>
              </div>
              <!-- /lc-block -->
            </div>
          </div>
        </div>
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
