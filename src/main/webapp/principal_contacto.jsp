<%-- 
    Document   : principal_contacto
    Created on : 8/10/2021, 12:27:11 a. m.
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
        <title>Contacto</title>
    </head>
<body>
    <section>
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <!-- Container wrapper -->
        <div class="container" style="">
          <!-- Navbar brand -->
          <a class="navbar-brand me-2" href="principal.jsp">
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
            <!-- Left links -->
            <ul class="navbar-nav ms-auto mb-1 mb-lg-0">
              <nav class="navbar navbar-expand-sm bg-light navbar-light">
                <div class="container-fluid">
                  <ul class="navbar-nav">
                    <li class="nav-item mx-2">
                      <a class="nav-link" href="principal.jsp"
                        >Inicio</a
                      >
                    </li>
                    <li class="nav-item mx-2">
                      <a
                        class="nav-link"
                        href="principal_ventajas.jsp"
                        >Ventajas</a
                      >
                    </li>
                    <li class="nav-item mx-2">
                      <a
                        class="nav-link active"
                        href="principal_contacto.jsp"
                        >Contacto</a
                      >
                    </li>
                  </ul>
                </div>
              </nav>
            </ul>
            <!-- Left links -->
            <div class="d-flex align-items-center">
              <a
                type="button"
                class="btn btn-link px-3 me-2"
                href="usuario_login.jsp"
              >
                Iniciar sesión
              </a>
              <a
                type="button"
                class="btn me-3 btn-primary"
                href="usuario_registro.jsp"
                >Regístrate</a
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
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="lc-block text-center pb-4 pt-5">
              <div editable="rich">
                <h1 class="text-primary">Contáctanos</h1>
              </div>
            </div>
            <!-- /lc-block -->
          </div>
          <!-- /col -->
        </div>
      </div>
    </section>
    <section class="pt-4 pb-4">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="lc-block">
              <div class="card p-1 p-md-4 mb-4 mb-lg-0">
                <div class="card-body">
                  <div class="lc-block text-center">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="2em"
                      height="2em"
                      fill="currentColor"
                      class="mb-4 text-primary"
                      viewBox="0 0 16 16"
                      style=""
                      lc-helper="svg-icon"
                    >
                      <path
                        d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"
                      ></path>
                    </svg>
                  </div>
                  <div class="lc-block text-center">
                    <div editable="rich">
                      <h3 class="h5 text-primary">Donde nos encuentras</h3>
                      <p><br /></p>
                      <p>Av. Calle Siempre Viva 742</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /lc-block -->
          </div>
          <!-- /col -->
          <div class="col-md-4">
            <div class="lc-block">
              <div class="card p-1 p-md-4 mb-4 mb-lg-0">
                <div class="card-body">
                  <div class="lc-block text-center">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="2em"
                      height="2em"
                      fill="currentColor"
                      class="mb-4 text-primary"
                      viewBox="0 0 16 16"
                      style=""
                      lc-helper="svg-icon"
                    >
                      <path
                        d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"
                      ></path>
                    </svg>
                  </div>
                  <div class="lc-block text-center">
                    <div editable="rich">
                      <h3 class="h5 text-primary">Correo electrónico</h3>
                      <p><br /></p>
                      <p><a href="mailto: info@hecyc.com">info@hecyc.com</a></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /lc-block -->
          </div>
          <!-- /col -->
          <div class="col-md-4">
            <div class="lc-block">
              <div class="card p-1 p-md-4 mb-4 mb-lg-0">
                <div class="card-body">
                  <div class="lc-block text-center">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="2em"
                      height="2em"
                      fill="currentColor"
                      class="mb-4 text-primary"
                      viewBox="0 0 16 16"
                      style=""
                      lc-helper="svg-icon"
                    >
                      <path
                        fill-rule="evenodd"
                        d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"
                      ></path>
                    </svg>
                  </div>
                  <div class="lc-block text-center">
                    <div editable="rich">
                      <h3 class="h5 text-primary">Llámanos</h3>
                      <p><br /></p>
                      <p><a href="tel: +573155555555">+57 315 555 55 55</a></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /lc-block -->
          </div>
          <!-- /col -->
        </div>
      </div>
    </section>
    <section class="pt-4 pb-4">
      <div class="container pt-4 pb-4">
        <div class="row">
          <div class="col-md-6">
            <div class="lc-block">
              <form>
                <div class="mb-3">
                  <label for="formGroupExampleInput" class="form-label"></label>
                  <input
                    type="text"
                    class="form-control"
                    id="formGroupExampleInput"
                    placeholder="Nombre*"
                  />
                </div>
                <div class="mb-3">
                  <input
                    type="email"
                    class="form-control"
                    id="exampleInputEmail1"
                    placeholder="Email*"
                    aria-describedby="emailHelp"
                  />
                </div>
                <div class="mb-3">
                  <input
                    type="text"
                    class="form-control"
                    id="formGroupExampleInput2"
                    placeholder="Asunto"
                  />
                </div>
                <div class="mb-3">
                  <textarea
                    class="form-control"
                    id="exampleFormControlTextarea1"
                    rows="3"
                    placeholder="Mensaje"
                  ></textarea>
                </div>
                <div class="mb-3 form-check">
                  <input
                    type="checkbox"
                    class="form-check-input"
                    id="exampleCheck1"
                  />
                  <label class="form-check-label" for="exampleCheck1"
                    >Acepto políticas de privacidad</label
                  >
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
                <div id="emailHelp" class="form-text">
                  No compartimos tu información con terceros
                </div>
              </form>
            </div>
            <!-- /lc-block -->
          </div>
          <!-- /col -->
          <div class="col-md-6 align-self-center">
            <div class="lc-block">
              <img
                class="img-fluid"
                src="https://filedn.com/lUzUE4NoAeXHprKlGQFRwCu/Hecyc/contactanos.svg"
              />
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
                <a href="principal.jsp">
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
                  <a class="nav-link" href="principal.jsp"
                    >Inicio</a
                  >
                  <a
                    class="nav-link"
                    href="principal_ventajas.jsp"
                    >Ventajas</a
                  >
                  <a
                    class="nav-link"
                    href="principal_contacto.jsp"
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
</html>
