package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.SingleConnectionDB;
import model.ModelLogin;

public class DAOUsuarioRepository {

	private Connection connection;

	public DAOUsuarioRepository() {
		connection = SingleConnectionDB.getConnection();
	}

	public ModelLogin salvarUsuario(ModelLogin objeto) throws SQLException {
		String sql = "INSERT INTO model_login (login, senha, nome, email) VALUES (?, ?, ?, ?)";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setString(1, objeto.getLogin());
		preparedStatement.setString(2, objeto.getSenha());
		preparedStatement.setString(3, objeto.getNome());
		preparedStatement.setString(4, objeto.getEmail());

		preparedStatement.execute();
		connection.commit();
		
		return this.consultarUsuario(objeto.getLogin());
	}
	
	public ModelLogin consultarUsuario(String login) throws SQLException {
		
		String sql = "SELECT * FROM model_login WHERE login = ?";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setString(1, login);
		
		ResultSet result = preparedStatement.executeQuery();
		
		ModelLogin modelLogin = new ModelLogin();
		
		if(result.next()) {
			modelLogin.setId(result.getLong("id"));
			modelLogin.setLogin(result.getString("login"));
			modelLogin.setSenha(result.getString("senha"));
			modelLogin.setNome(result.getString("nome"));
			modelLogin.setEmail(result.getString("email"));
			
		}
		
		return modelLogin;
	}
}
