package modelos;

import controladores.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Requerimientos {
    private String gerencia;
    private String departamento;
    private String asignacion;
    private String encargado;
    private Conexion conexion;
    
    
    public Requerimientos() throws ClassNotFoundException, SQLException {
        conexion = new Conexion();
    }

    public Requerimientos(String gerencia,String departamento,String asignacion,String encargado) throws ClassNotFoundException, SQLException {
        this.gerencia = gerencia;
        this.departamento = departamento;
        this.asignacion = asignacion;
        this.encargado = encargado;
        conexion = new Conexion();
    }

    public String getGerencia() {
        return gerencia;
    }

    public void setGerencia(String gerencia) {
        this.gerencia = gerencia;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getAsignacion() {
        return asignacion;
    }

    public void setAsignacion(String asignacion) {
        this.asignacion = asignacion;
    }

    public String getEncargado() {
        return encargado;
    }

    public void setEncargado(String encargado) {
        this.encargado = encargado;
    }

    public Conexion getConexion() {
        return conexion;
    }

    public void setConexion(Conexion conexion) {
        this.conexion = conexion;
    }
    
/*    public ArrayList<String> obtenerGerencia() throws SQLException, ClassNotFoundException{
        String sentencia = "select * from usuario order by nombre,apellido";
        ArrayList<Usuario> usuarios = new ArrayList();
        ResultSet rs = conexion.consultarSQL(sentencia);
        while(rs.next()){
            usuarios.add(new Usuario(rs.getString("usuario"),rs.getString("nombre"),
                    rs.getString("apellido"),rs.getString("password")));
        }
        return usuarios;
    }*/
}