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
    
    public Encargados(int encargadosid, int asignacionesid, String encargado) throws ClassNotFoundException, SQLException {
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
    
    public ArrayList<Encargados> obtenerEncargados(int asignacionesid) throws SQLException, ClassNotFoundException{
        String sentencia = "select encargadosid, asignacionesid, encargado from encargados where asignacionesid='"+asignacionesid+"'";
        ArrayList<Encargados> encargados = new ArrayList();
        ResultSet rs = conexion.consultarSQL(sentencia);
        while(rs.next()){
            encargados.add(new Encargados(rs.getInt("encargadosid"),rs.getInt("asignacionesid"),rs.getString("encargado")));
        }
        return encargados;
    }   
}
