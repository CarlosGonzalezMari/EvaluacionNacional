package modelos;

import controladores.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Departamentos {
    private Conexion conexion;
    private int departamentosid;
    private int gerenciaid;
    private String departamento;
    
    public Departamentos() throws ClassNotFoundException, SQLException {
        conexion = new Conexion();
    }
    public Departamentos(int idgerencia, String gerencia) throws ClassNotFoundException, SQLException {
        conexion = new Conexion();
        this.departamentosid = departamentosid;
        this.gerenciaid = gerenciaid;
        this.departamento = departamento;    
    }

    public Conexion getConexion() {
        return conexion;
    }

    public void setConexion(Conexion conexion) {
        this.conexion = conexion;
    }

    public int getDepartamentosid() {
        return departamentosid;
    }

    public void setDepartamentosid(int departamentosid) {
        this.departamentosid = departamentosid;
    }

    public int getGerenciaid() {
        return gerenciaid;
    }

    public void setGerenciaid(int gerenciaid) {
        this.gerenciaid = gerenciaid;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }
    
}