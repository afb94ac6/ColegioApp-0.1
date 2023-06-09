package BusinessLayer;

import DataAccessLayer.AlumnoDao;
import JavaBean.Alumno;
import java.util.ArrayList;

public class AlumnoBO {

    public void insertar(Alumno alumno) throws Exception {

        try {
            AlumnoDao alumnoDAO = new AlumnoDao();
            alumnoDAO.insertar(alumno);
        } catch (Exception e) {
            throw e;
        }

    }

    public void actualizar(Alumno alumno) throws Exception {

        try {
            AlumnoDao alumnoDAO = new AlumnoDao();
            alumnoDAO.actualizar(alumno);
        } catch (Exception e) {
            throw e;
        }

    }

    public void eliminar(int id) throws Exception {

        try {
            AlumnoDao alumnoDAO = new AlumnoDao();
            alumnoDAO.eliminar(id);
        } catch (Exception e) {
            throw e;
        }

    }

    public ArrayList<Alumno> buscarPorAlumno(String cadena) throws Exception {

        try {
            AlumnoDao alumnoDAO = new AlumnoDao();
            return alumnoDAO.buscarPorAlumno(cadena);
        } catch (Exception e) {
            throw e;
        }
    }

    public Alumno buscarPorDNI(String dni) throws Exception {

        try {
            AlumnoDao alumnoDAO = new AlumnoDao();
            return alumnoDAO.buscarPorDNI(dni);
        } catch (Exception e) {
            throw e;
        }
    }

    public Alumno buscarPorId(int id) throws Exception {

        try {
            AlumnoDao alumnoDAO = new AlumnoDao();
            return alumnoDAO.buscarPorId(id);
        } catch (Exception e) {
            throw e;
        }
    }

    
    public ArrayList<Alumno> listar() throws Exception {

        try {
            AlumnoDao alumnoDAO = new AlumnoDao();
            return alumnoDAO.buscarPorAlumno("");
        } catch (Exception e) {
            throw e;
        }
    }
    
    public ArrayList<Alumno> buscarPorAlumnoxCursoBuscar(String cadena, String nombre, String grado, String nivel) throws Exception {

        try {
            AlumnoDao alumnoDAO = new AlumnoDao();
            return alumnoDAO.buscarPorAlumnoxCursoBuscar(cadena, nombre, grado, nivel);
        } catch (Exception e) {
            throw e;
        }
    }
    
    public ArrayList<Alumno> buscarPorAlumnoxCurso(String nombre, String grado, String nivel) throws Exception {

        try {
            AlumnoDao alumnoDAO = new AlumnoDao();
            return alumnoDAO.buscarPorAlumnoxCurso(nombre, grado, nivel);
        } catch (Exception e) {
            throw e;
        }
    }
    
    public ArrayList<Alumno> buscarPorGradoNivel(String grado, String nivel) throws Exception {

        try {
            AlumnoDao alumnoDAO = new AlumnoDao();
            return alumnoDAO.buscarPorGradoNivel(grado, nivel);
        } catch (Exception e) {
            throw e;
        }
    }
}
