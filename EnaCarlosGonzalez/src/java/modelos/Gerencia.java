package modelos;

import controladores.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Gerencia {
    private Conexion conexion;
    private int idgerencia;
    private String gerencia;
    
    public Gerencia() throws ClassNotFoundException, SQLException {
        conexion = new Conexion();
    }
     public Gerencia(int idgerencia, String gerencia) throws ClassNotFoundException, SQLException {
         conexion = new Conexion();
         this.idgerencia = idgerencia;
         this.gerencia = gerencia;
     }

    public Conexion getConexion() {
        return conexion;
    }

    public void setConexion(Conexion conexion) {
        this.conexion = conexion;
    }

    public int getIdgerencia() {
        return idgerencia;
    }

    public void setIdgerencia(int idgerencia) {
        this.idgerencia = idgerencia;
    }

    public String getGerencia() {
        return gerencia;
    }

    public void setGerencia(String gerencia) {
        this.gerencia = gerencia;
    }
     
    public ArrayList<Gerencia> obtenerGerencia() throws SQLException, ClassNotFoundException{
        String sentencia = "select gerenciasid, gerencia from gerencias";
        ArrayList<Gerencia> gerencias = new ArrayList();
        ResultSet rs = conexion.consultarSQL(sentencia);
        while(rs.next()){
            gerencias.add(new Gerencia(rs.getInt("gerenciasid"),rs.getString("gerencia")));
        }
        return gerencias;
    }
}
