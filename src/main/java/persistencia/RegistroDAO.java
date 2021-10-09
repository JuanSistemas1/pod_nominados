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
        String sql = "SELECT cod_registro_he, date_he, timeint_he, dateout_he, timeout_he, rn, hed, hen, hf, hedf, henf, rnf, cod_user1 "
                + "FROM registro_he ";
        ResultSet rs = con.ejecutarQuery(sql);
        try {
            while (rs.next()) {
                int id = rs.getInt("cod_registro_he");
                int id_usuario = rs.getInt("cod_user1");
                String fecha = rs.getString("date_he");
                String hora_int = rs.getString("timeint_he");
                String fecha_salida = rs.getString("dateout_he");
                String hora_out = rs.getString("timeout_he");
                RegistroHE he = new RegistroHE(id, id_usuario, fecha, hora_int, fecha_salida, hora_out);
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
        String sql = "SELECT cod_registro_he, date_he, timeint_he, dateout_he, timeout_he, rn, hed, hen, hf, hedf, henf, rnf, cod_user1 "
                + "FROM registro_he "
                + "WHERE cod_registro_he = " + idAConsultar + " ";
        ResultSet rs = con.ejecutarQuery(sql);
        try {
            if (rs.next()) {
                int id = rs.getInt("cod_registro_he");
                int id_usuario = rs.getInt("cod_user1");
                String fecha = rs.getString("date_he");
                String hora_int = rs.getString("timeint_he");
                String fecha_salida = rs.getString("dateout_he");
                String hora_out = rs.getString("timeout_he");
                int rn = rs.getInt("rn");
                int hed = rs.getInt("hed");
                int hen = rs.getInt("hen");
                int hf = rs.getInt("hf");
                int hedf = rs.getInt("hedf");
                int henf = rs.getInt("henf");
                int rnf = rs.getInt("rnf");
                he = new RegistroHE(id, id_usuario, fecha, hora_int, fecha_salida, hora_out, rn, hed, hen, hf, hedf, henf, rnf);

            }
        } catch (SQLException ex) {
            con.desconectar();
            return he;
        }
        con.desconectar();
        return he;
    }

    /**
     * Envía la sentencia SQL para obtener la información de ciertos juguete mediante filtro y estructura
     * la respuesta en una lista de tipo Juguete
     * @param filtro el filtro para buscar datos en la lista de juguetes para consultar
     * @return un arraylist de tipo Juguete con la información cargada
     */
     public ArrayList<RegistroHE> consultarJuguetesPorFiltro(String filtro) {
        ArrayList<RegistroHE> lista = new ArrayList<>();
        ConexionBD con = new ConexionBD();
        String sql = "SELECT j.cod_registro_he, j.date_he, j.timeint_he, j.dateout_he, j.timeout_he, j.cod_user1 " +
                     "FROM registro_he j " +
                     "JOIN users u ON (j.cod_user1 = u.id) " +
                     "WHERE u.user_u LIKE '%" + filtro + "%' " +
                     "OR j.date_he LIKE '%" + filtro + "%' " +
                     "OR j.dateout_he LIKE '%" + filtro + "%' ";
        ResultSet rs = con.ejecutarQuery(sql);
        try {
            while (rs.next()) {
                int id = rs.getInt("cod_registro_he");
                int id_usuario = rs.getInt("cod_user1");
                String fecha = rs.getString("date_he");
                String hora_int = rs.getString("timeint_he");
                String fecha_salida = rs.getString("dateout_he");
                String hora_out = rs.getString("timeout_he");
                RegistroHE he = new RegistroHE(id, id_usuario, fecha, hora_int, fecha_salida, hora_out);
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
     * Envía la sentencia SQL para almacenar el dato de un nuevo registro
     *
     * @param he un objeto de tipo Juguete
     * @return un número indicando el id generado por la base de datos
     */
    public int guardarNuevoRegistro(RegistroHE he) {
        ConexionBD con = new ConexionBD();
        String fecha = he.getFecha_registro();
        String horaint = he.getHora_int();
        String fecha_salida = he.getFecha_salida();
        String horaout = he.getHora_out();

        String sql = "INSERT INTO registro_he (date_he, timeint_he, dateout_he, timeout_he) "
                + "VALUES ('" + fecha + "', '" + horaint + "', '" + fecha_salida + "', '" + horaout + "') ";
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
        String fecha = he.getFecha_registro();
        String horaint = he.getHora_int();
        String fecha_salida = he.getFecha_salida();
        String horaout = he.getHora_out();

        String sql = "UPDATE registro_he "
                + "SET date_he = '" + fecha + "' , timeint_he = '" + horaint + "' , dateout_he = '" + fecha_salida + "' , timeout_he = '" + horaout + "' "
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
