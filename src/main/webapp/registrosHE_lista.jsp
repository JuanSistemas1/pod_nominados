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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <title>Registros Horas Extras</title>


    </head>
    <body>
        <table id="example" class="table table-striped" style="width:100%">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Usuario</th>
                    <th>Fecha</th>
                    <th>Hora de entrada</th>
                    <th>Hora de salida</th>
                    <th>Recargo nocturno</th>
                    <th>H. Extras diurnas</th>
                    <th>H. Extras nocturnas</th>
                    <th>H. Extras festivas</th>
                    <th>H.E. Festivas diurnas</th>
                    <th>H.E. Festivas nocturnas</th>
                    <th>Recargo nocturno festivo</th>
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
                    <td><%= logicaRegistro.getIdUsuario(he.getId())%></td>
                    <td><%= he.getFecha_registro()%></td>
                    <td><%= he.getHora_int()%></td>
                    <td><%= he.getHora_out()%></td>
                    <td><%= he.getRn()%></td>
                    <td><%= he.getHed()%></td>
                    <td><%= he.getHen()%></td>
                    <td><%= he.getHef()%></td>
                    <td><%= he.getHedf()%></td>
                    <td><%= he.getHenf()%></td>
                    <td><%= he.getRnf()%></td>
                                   
                    <td>
                        <a href="juguetes_form.jsp?accion=editar&id=<%= he.getId()%>"><button type="button" class="btn btn-success"><i class="bi bi-pencil-fill"></i></button></a>
                        <button type="button" class="btn btn-danger"><i class="bi bi-trash"></i></button>
                    </td>
                </tr>
                <% } %>
                <% } else { %>
                <tr>
                    <td colspan="5">No hay datos</td>
                </tr>
                <% }%>
            </tbody>
        </table>
    </body>
</html>
