package br.edu.insper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import static java.lang.System.out;


public class DAO {
	private Connection connection = null;

	public DAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost/meus_dado", "root", "");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Usuarios> getLista() throws SQLException {
		List<Usuarios> usuarios = new ArrayList<Usuarios>();
		PreparedStatement stmt = null;
		try {
			stmt = connection.
					prepareStatement("SELECT * FROM Pessoa");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ResultSet rs = null;
		try {
			rs = stmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			while (rs.next()) {
				Usuarios usuario = new Usuarios();
				usuario.setId(rs.getInt("id"));
				usuario.setUser(rs.getString("username"));
				usuario.setUser(rs.getString("password"));
				usuarios.add(usuario);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rs.close();
		stmt.close();
		return usuarios;
		
	}
	public void close() {
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void adiciona(Usuarios usuario) throws SQLException {
		String sql = "INSERT INTO usuarios "+"(username,password) values(?,?)";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setString(1, usuario.getUser());
		stmt.setString(2, usuario.getPassword());
		stmt.execute();
		stmt.close();
	}
	public void altera(Usuarios usuario) throws SQLException {
		String sql = "UPDATE usuarios SET"+"username=?, password=? WHERE id=?";
		PreparedStatement stmt = connection.prepareStatement(sql);
		stmt.setString(1, usuario.getUser());
		stmt.setString(2, usuario.getPassword());
		stmt.setInt(3, usuario.getId());
		stmt.execute();
		stmt.close();
	}
	public void remove(Integer id) throws SQLException {
		PreparedStatement stmt = connection
		 .prepareStatement("DELETE FROM usuarios WHERE id=?");
		stmt.setLong(1, id);
		stmt.execute();
		stmt.close();
	}
	
	
}
