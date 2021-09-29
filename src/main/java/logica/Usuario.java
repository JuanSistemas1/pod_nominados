/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

/**
 *
 * @author Juan
 */
public class Usuario {

    private int id;
    private String nombrecompleto;
    private String nombreusuario;
    private String contrasena;
    private String correo;
    private String rol;

    public Usuario() {
    }

    public Usuario(String nombrecompleto, String contrasena, String correo, String rol) {
        this.nombrecompleto = nombrecompleto;
        this.contrasena = contrasena;
        this.correo = correo;
        this.rol = rol;
    }

    public Usuario(int id, String nombrecompleto, String contrasena, String correo, String rol) {
        this.id = id;
        this.nombrecompleto = nombrecompleto;
        this.contrasena = contrasena;
        this.correo = correo;
        this.rol = rol;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombrecompleto() {
        return nombrecompleto;
    }

    public void setNombrecompleto(String nombrecompleto) {
        this.nombrecompleto = nombrecompleto;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getNombreusuario() {
        return nombreusuario;
    }

    public void setNombreusuario(String nombreusuario) {
        this.nombreusuario = nombreusuario;
    }

}
