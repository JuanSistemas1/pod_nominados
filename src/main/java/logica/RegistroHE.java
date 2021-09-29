/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.sql.Date;
import java.sql.Time;

/**
 *
 * @author Juan
 */
public class RegistroHE {
    private int id;
    private Date fecha_registro;
    private Time hora_int;
    private Time hora_out;
    private int rn;
    private int hed;
    private int hen;
    private int hef;
    private int hedf;
    private int henf;
    private int rnf;
    private int cod_user;

    public RegistroHE() {
    }

    public RegistroHE(Date fecha_registro, Time hora_int, Time hora_out) {
        this.fecha_registro = fecha_registro;
        this.hora_int = hora_int;
        this.hora_out = hora_out;
    }

    public RegistroHE(int id, Date fecha_registro, Time hora_int, Time hora_out) {
        this.id = id;
        this.fecha_registro = fecha_registro;
        this.hora_int = hora_int;
        this.hora_out = hora_out;
    }

    public RegistroHE(int id, Date fecha_registro, Time hora_int, Time hora_out, int rn, int hed, int hen, int hef, int hedf, int henf, int rnf) {
        this.id = id;
        this.fecha_registro = fecha_registro;
        this.hora_int = hora_int;
        this.hora_out = hora_out;
        this.rn = rn;
        this.hed = hed;
        this.hen = hen;
        this.hef = hef;
        this.hedf = hedf;
        this.henf = henf;
        this.rnf = rnf;
    }
      
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getFecha_registro() {
        return fecha_registro;
    }

    public void setFecha_registro(Date fecha_registro) {
        this.fecha_registro = fecha_registro;
    }

    public Time getHora_int() {
        return hora_int;
    }

    public void setHora_int(Time hora_int) {
        this.hora_int = hora_int;
    }

    public Time getHora_out() {
        return hora_out;
    }

    public void setHora_out(Time hora_out) {
        this.hora_out = hora_out;
    }

    //HORAS EXTRAS 
    public int getRn() {
        return rn;
    }

    public void setRn(int rn) {
        this.rn = rn;
    }

    public int getHed() {
        return hed;
    }

    public void setHed(int hed) {
        this.hed = hed;
    }

    public int getHen() {
        return hen;
    }

    public void setHen(int hen) {
        this.hen = hen;
    }

    public int getHef() {
        return hef;
    }

    public void setHef(int hef) {
        this.hef = hef;
    }

    public int getHedf() {
        return hedf;
    }

    public void setHedf(int hedf) {
        this.hedf = hedf;
    }

    public int getHenf() {
        return henf;
    }

    public void setHenf(int henf) {
        this.henf = henf;
    }

    public int getRnf() {
        return rnf;
    }

    public void setRnf(int rnf) {
        this.rnf = rnf;
    }

    public int getCod_user() {
        return cod_user;
    }

    public void setCod_user(int cod_user) {
        this.cod_user = cod_user;
    }
    
    
}
