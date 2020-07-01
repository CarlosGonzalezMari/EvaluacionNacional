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
    private int requerimientoid;
    private String descripcion;
    private Conexion conexion;
    
    
    public Requerimientos() throws ClassNotFoundException, SQLException {
        conexion = new Conexion();
    }

    public Requerimientos(String gerencia,String departamento,String asignacion,String encargado, String descripcion) throws ClassNotFoundException, SQLException {
        this.gerencia = gerencia;
        this.departamento = departamento;
        this.asignacion = asignacion;
        this.encargado = encargado;
        this.descripcion = descripcion;
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
    
    public int getRequerimientoid() {
        return requerimientoid;
    }

    public void setRequerimientoid(int requerimientoid) {
        this.requerimientoid = requerimientoid;
    }
    
    public void setEncargado(String encargado) {
        this.encargado = encargado;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Conexion getConexion() {
        return conexion;
    }

    public void setConexion(Conexion conexion) {
        this.conexion = conexion;
    }
    public String ingresarRequerimientos() throws SQLException{
        requerimientoid = selectId();
        String sentencia = "INSERT INTO requerimientos VALUES ('"+requerimientoid+"',"
                + "'"+gerencia+"',"+ "'"+departamento+"','"+asignacion+"','"+encargado+"',"+ "'"+descripcion+"','Abierto')";
        if(conexion.ejecutarSQL(sentencia)==1){
            return "Requerimiento registrado";
        }else{
            return "No se pudo registrar el requerimiento";
        }
    }
    public int selectId() throws SQLException{
        String sentencia = "select requerimientoid from requerimientos order by requerimientoid asc";
        ResultSet rs = conexion.consultarSQL(sentencia);
        int value = 0;
        while(rs.next()){
            value = rs.getInt("requerimientoid");
        }
        return value+1;
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