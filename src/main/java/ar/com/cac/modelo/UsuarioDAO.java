package ar.com.cac.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import ar.com.cac.factories.ConextionFactory;

public class UsuarioDAO implements ItemsDAO<Usuario> {

	@Override
	public void insert(Usuario usuario) throws SQLException {
//		ConexionFactory c = new ConexionFactory();
			Connection conn = ConextionFactory.getConexion();

			String query = "insert into USUARIO";
			query += " (nombre, apellido, email, contrasenia, ciudad, direccion, telefono)";
			query += " values (?,?,?,?,?,?,?)";
			
			

			PreparedStatement ps = conn.prepareStatement(query);

			ps.setString(1, usuario.getNombre());
			ps.setString(2, usuario.getApellido());
			ps.setString(3, usuario.getMail());
			ps.setString(4, usuario.getPassword());
			ps.setString(5, usuario.getCiudad());
			ps.setString(6, usuario.getDireccion());
			ps.setString(7, usuario.getTelefono());

			ps.executeUpdate();
	              
			ConextionFactory.cerrarConexion(conn);
		
	}

	@Override
	public void update(Usuario item) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Usuario getById(int id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Usuario> getAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}


	public Usuario getUsuarioByEmailAndPassword(String username, String password) throws SQLException {
		Connection conn = ConextionFactory.getConexion();
        Usuario usuario= null;
        
        
        String query = "select id, nombre, apellido, email, contrasenia, ciudad, direccion, telefono";
		query += " from USUARIO";
		query += " where email = ?  and contrasenia = ?  ";
        
		
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, username);
		ps.setString(2, password);
		
		
		ResultSet rs = null ;
		try {
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if (rs.next()) {
			usuario = new Usuario();
			usuario.setId(rs.getInt("id"));
			usuario.setNombre(rs.getString("nombre"));
			usuario.setApellido(rs.getString("apellido"));
			usuario.setMail(rs.getString("email"));
			usuario.setPassword(rs.getString("contrasenia"));
			usuario.setCiudad(rs.getString("ciudad"));
			usuario.setDireccion(rs.getString("direccion"));
			usuario.setTelefono(rs.getString("telefono"));
		}
		ConextionFactory.cerrarConexion(conn);
		
		return usuario;
				}



}
