package modelos;

import controladores.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Encargados {
    private Conexion conexion;
    private int encargadosid;
    private int asignacionesid;
    private String encargado;
    
    public Encargados() throws ClassNotFoundException, SQLException {
        conexion = new Conexion();
    }
    
    public Encargados(int idgerencia, String gerencia) throws ClassNotFoundException, SQLException {
        conexion = new Conexion();
        this.encargadosid = encargadosid;
        this.asignacionesid = asignacionesid;
        this.encargado = encargado;
    }

    public Conexion getConexion() {
        return conexion;
    }

    public void setConexion(Conexion conexion) {
        this.conexion = conexion;
    }

    public int getEncargadosid() {
        return encargadosid;
    }

    public void setEncargadosid(int encargadosid) {
        this.encargadosid = encargadosid;
    }

    public int getAsignacionesid() {
        return asignacionesid;
    }

    public void setAsignacionesid(int asignacionesid) {
        this.asignacionesid = asignacionesid;
    }

    public String getEncargado() {
        return encargado;
    }

    public void setEncargado(String encargado) {
        this.encargado = encargado;
    }
    
    
}
