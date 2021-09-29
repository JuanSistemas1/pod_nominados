/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.util.ArrayList;
import java.util.TreeMap;
import persistencia.RegistroDAO;

/**
 *
 * @author Juan
 */
public class LogicaRegistroHE {

    private ArrayList<RegistroHE> lista;

    /**
     * Obtiene una lista de registros
     *
     * @return una estructura de datos con los datos de los registro de horas requeridos
     */
    public ArrayList<RegistroHE> getLista() {
        return lista;
    }

    /**
     * Obtiene el nombre del usuario dado el id correspondiente a un registro
     *
     * @param key el id del usuario
     * @return el nombre de usuario
     */
    public String getIdUsuario(int key) {
        RegistroDAO dao = new RegistroDAO();
        TreeMap<Integer, String> listaUsuarios = dao.cargarUsuariosRegistrados();
        String value = listaUsuarios.get(key);
        return value;
    }

    /**
     * Obtiene la lista de los nombres de usuarios 
     *
     * @return un treemap con los nombres de usuario
     */
    public TreeMap<Integer, String> getUsuarios() {
        RegistroDAO dao = new RegistroDAO();
        TreeMap<Integer, String> listaTiposJuguetes = dao.cargarUsuariosRegistrados();
        return listaTiposJuguetes;
    }

    /**
     * Carga la información de todos los registros de la base de datos
     *
     * @return true si carga los registro de horas, o false si no se logró cargar
     */
    public boolean cargarTodosLosRegistros() {
        RegistroDAO dao = new RegistroDAO();
        lista = dao.consultarRegistros();
        if (lista.size() > 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Carga la información de ciertos juguetes de la base de datos mediante
     * filtro
     *
     * @return true si carga los juguetes, o false si no se logró cargar
     */
//    public boolean cargarJuguetesPorFiltro(String filtro) {
//        JugueteDAO dao = new JugueteDAO();
//        lista = dao.consultarJuguetesPorFiltro(filtro);
//        if (lista.size() > 0) {
//            return true;
//        } else {
//            return false;
//        }
//    }

    /**
     * Carga la información de un solo juguete de la base de datos
     *
     * @param id
     * @return true si carga los registros, o false si no se logró cargar
     */
    public RegistroHE cargarUnRegistro(int id) {
        RegistroDAO dao = new RegistroDAO();
        RegistroHE he = dao.consultarRegistroPorID(id);
        return he;
    }

    /**
     * Guarda la información de un juguete capturada desde el formulario
     *
     * @param he un objeto con los datos de un registro específico
     * @return true si guarda el registro en la base de datos, o false si no lo
     * guarda
     */
    public boolean guardarRegistroHE(RegistroHE he) {
        RegistroDAO dao = new RegistroDAO();
        if (he.getId() == 0) {
            int id = dao.guardarNuevoRegistro(he);
            if (id > 0) {
                return true;
            } else {
                return false;
            }
        } else {
            int filas = dao.guardarRegistroExistente(he);
            if (filas == 1) {
                return true;
            } else {
                return false;
            }
        }
    }

}
