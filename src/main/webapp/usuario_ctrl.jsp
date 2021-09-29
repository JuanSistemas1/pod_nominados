<%-- 
    Document   : usuario_ctrl
    Created on : 27/09/2021, 7:17:33 p. m.
    Author     : Juan
--%>
<%@page import="logica.LogicaUsuario"%>
<%@page import="logica.Usuario"%>
<%
    int id = Integer.parseInt(request.getParameter("txtId"));
    String nombre = request.getParameter("txtNombre");
    int idTipo = Integer.parseInt(request.getParameter("selTipo"));
    String fechaCompra = request.getParameter("dtpFechaCompra");
    int idEstado = Integer.parseInt(request.getParameter("selEstado"));
    String disponibilidad = request.getParameter("radDisponibilidad");
    String accion = request.getParameter("btnSubmit");
    Juguete j = null;
    if (accion.equals("nuevo")) {
        j = new Juguete(nombre, idTipo, fechaCompra, idEstado, disponibilidad);
    } else if (accion.equals("editar")) {
        j = new Juguete(id, nombre, idTipo, fechaCompra, idEstado, disponibilidad);
    }
    LogicaJuguetes logicaJuguetes = new LogicaJuguetes();
    boolean guardado = logicaJuguetes.guardarJuguete(j);
    if (guardado == true) {
        out.println("Juguete guardado exitosamente");
    } else {
        out.println("Información de juguete no se guardó.");
    }
    
    
    response.sendRedirect("registrosHE_lista.jsp");
%>