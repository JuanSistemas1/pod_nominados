/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.TreeMap;
import logica.RegistroHE;
/**
 *
 * @author Juan
 */
public class RegistroDAO {

    /**
     * Envía la sentencia SQL para obtener la lista de todos los registros y
     * estructura la respuesta en una estructura de datos
     *
     * @return una estructura de datos con los objetos
     */
    public ArrayList<RegistroHE> consultarRegistros() {
        ArrayList<RegistroHE> lista = new ArrayList<>();
        ConexionBD con = new ConexionBD();
        String sql = "SELECT cod_registro_he, date_he, timeint_he, timeout_he, rn, hed, hen, hf, hedf, henf, rnf, cod_user1 "
                + "FROM registro_he ";
        ResultSet rs = con.ejecutarQuery(sql);
        try {
            while (rs.next()) {
                int id = rs.getInt("cod_user1");
                Date fecha = rs.getDate("date_he");
                Time hora_int = rs.getTime("timeint_he");
                Time hora_out = rs.getTime("timeout_he");
                RegistroHE he = new RegistroHE(id, fecha, hora_int, hora_out);
                lista.add(he);
            }
        } catch (SQLException ex) {
            con.desconectar();
            return null;
        }
        con.desconectar();
        return lista;
    }

    /**
     * Envía la sentencia SQL para obtener la información de 1 registro
     * específico y estructura la respuesta en un objeto
     *
     * @param idAConsultar el id del juguete para consultar
     * @return un objeto de tipo Juguete con la información cargada o null
     */
    public RegistroHE consultarRegistroPorID(int idAConsultar) {
        RegistroHE he = null;
        ConexionBD con = new ConexionBD();
        String sql = "SELECT cod_registro_he, date_he, timeint_he, timeout_he, rn, hed, hen, hf, hedf, henf, rnf, cod_user1 "
                + "FROM registro_he "
                + "WHERE cod_user1 = " + idAConsultar + " ";
        ResultSet rs = con.ejecutarQuery(sql);
        try {
            if (rs.next()) {
                int id = rs.getInt("cod_user1");
                Date fecha = rs.getDate("date_he");
                Time hora_int = rs.getTime("timeint_he");
                Time hora_out = rs.getTime("timeout_he");
                int rn = rs.getInt("rn");
                int hed = rs.getInt("hed");
                int hen = rs.getInt("hen");
                int hf = rs.getInt("hf");
                int hedf = rs.getInt("hedf");
                int henf = rs.getInt("henf");
                int rnf = rs.getInt("rnf");
                he = new RegistroHE(id, fecha, hora_int, hora_out, rn, hed, hen, hf, hedf, henf, rnf);

            }
        } catch (SQLException ex) {
            con.desconectar();
            return he;
        }
        con.desconectar();
        return he;
    }

    /**
     * Envía la sentencia SQL para obtener la información de ciertos juguete
     * mediante filtro y estructura la respuesta en una lista de tipo Juguete
     *
     * @param filtro el filtro para buscar datos en la lista de juguetes para
     * consultar
     * @return un arraylist de tipo Juguete con la información cargada
     */
//    public ArrayList<RegistroHE> consultarRegistrosPorFiltro(String filtro) {
//        ArrayList<RegistroHE> lista = new ArrayList<>();
//        ConexionBD con = new ConexionBD();
//        String sql = "SELECT j.id, j.nombre, j.tipojuguete_id, t.tipo, j.fechacompra, j.estadojuguete_id, e.estado, j.disponibilidad "
//                + "FROM juguetes j "
//                + "JOIN tipos_juguetes t ON (j.tipojuguete_id = t.id) "
//                + "JOIN estados_juguetes e ON (j.estadojuguete_id = e.id) "
//                + "WHERE j.nombre LIKE '%" + filtro + "%' "
//                + "OR t.tipo LIKE '%" + filtro + "%' "
//                + "OR e.estado LIKE '%" + filtro + "%' "
//                + "OR j.disponibilidad LIKE '%" + filtro + "%' ";
//        ResultSet rs = con.ejecutarQuery(sql);
//        try {
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                String nombre = rs.getString("nombre");
//                int idTipo = rs.getInt("tipojuguete_id");
//                String fechaCompra = rs.getString("fechacompra");
//                int idEstado = rs.getInt("estadojuguete_id");
//                String disponibilidad = rs.getString("disponibilidad");
//                Juguete j = new Juguete(id, nombre, idTipo, fechaCompra, idEstado, disponibilidad);
//                lista.add(j);
//            }
//        } catch (SQLException ex) {
//            con.desconectar();
//            return null;
//        }
//        con.desconectar();
//        return lista;
//    }

    /**
     * Envía la sentencia SQL para almacenar el dato de un nuevo registro
     *
     * @param he un objeto de tipo Juguete
     * @return un número indicando el id generado por la base de datos
     */
    public int guardarNuevoRegistro(RegistroHE he) {
        ConexionBD con = new ConexionBD();
        Date fecha = he.getFecha_registro();
        Time horaint = he.getHora_int();
        Time horaout = he.getHora_out();

        String sql = "INSERT INTO juguetes (date_he, timeint_he, timeout_he) "
                + "VALUES ('" + fecha + "', " + horaint + ", '" + horaout + "') ";
        ResultSet rs = con.ejecutarInsert(sql);
        int id = 0;
        try {
            if (rs.next()) {
                id = rs.getInt(1);
            }
        } catch (SQLException ex) {
            con.desconectar();
            return 0;
        }
        con.desconectar();
        return id;
    }

    /**
     * Envía la sentencia SQL para actualizar el dato de un juguete existente
     *
     * @param he un objeto de tipo Juguete
     * @return un número indicando la cantidad de registros afectados
     */
    public int guardarRegistroExistente(RegistroHE he) {
        ConexionBD con = new ConexionBD();
        int id = he.getId();
        Date fecha = he.getFecha_registro();
        Time horaint = he.getHora_int();
        Time horaout = he.getHora_out();

        String sql = "UPDATE juguetes "
                + "SET date_he = '" + fecha + "' , timeint_he = " + horaint + " , timeout_he = '" + horaout +"' "
                + "WHERE cod_registro_he = " + id + " ";
        int filas = con.ejecutarUpdate(sql);
        con.desconectar();
        return filas;
    }

    /**
     * Cargar los diferentes tipos de usuarios desde la BD
     *
     * @return un treemap con la lista de los usuarios de cada registro
     */
    public TreeMap<Integer, String> cargarUsuariosRegistrados() {
        TreeMap<Integer, String> listaUsuarios = new TreeMap<Integer, String>();
        ConexionBD con = new ConexionBD();
        ResultSet rs = con.ejecutarQuery("SELECT cod_u, user_u FROM users ");
        try {
            while (rs.next()) {
                int id = rs.getInt("cod_u");
                String usuario = rs.getString("user_u");
                listaUsuarios.put(id, usuario);
            }
        } catch (SQLException ex) {
            con.desconectar();
            return null;
        }
        con.desconectar();
        return listaUsuarios;
    }
}
