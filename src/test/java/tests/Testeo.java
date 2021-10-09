/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

import logica.RegistroHE;
import org.testng.Assert;
import org.testng.annotations.Ignore;
import org.testng.annotations.Test;
import persistencia.ConexionBD;
import persistencia.RegistroDAO;

/**
 *
 * @author Cielo Juliana
 */
@Ignore
public class Testeo {
    
    @Test
    public void verificarConexion() {
        ConexionBD con = new ConexionBD();
        Assert.assertTrue(con.isConectado(), "No hay conexión creada. ");
        con.desconectar();
        Assert.assertFalse(con.isConectado(), "No se cerró conexión. ");
    }
    
    @Test
    public void verificarCargaJuguetes() {
        RegistroDAO dao = new RegistroDAO();
        Assert.assertTrue(dao.consultarRegistros().size() > 0, "No se cargaron datos de registros. ");
    }
    
    @Test
    public void verificarCargaTiposJuguetes() {
        RegistroDAO dao = new RegistroDAO();
        Assert.assertTrue(dao.cargarUsuariosRegistrados().size() > 0, "No se cargaron datos de los usuarios. ");
    }
    
    @Ignore
    public void verificarInsercionJuguete() {
        RegistroDAO dao = new RegistroDAO();
        RegistroHE j = new RegistroHE("2021-01-01", "00:00", "2021-01-01", "00:00");
        int id = dao.guardarNuevoRegistro(j);
        Assert.assertTrue(id > 0, "No se guardó dato.");
        String sql = "DELETE FROM registro_he WHERE cod_registro_he = " + id;
        ConexionBD con = new ConexionBD();
        int cant = con.ejecutarUpdate(sql);
        Assert.assertTrue(cant == 1, "No se logró hacer limpieza del dato de prueba de un registro ingresado. ");
        con.desconectar();
    }
}

