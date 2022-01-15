package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import connection.SingleConnectionDB;
import model.ModelLogin;

public class DAOUsuarioRepository {

	private Connection connection;

	public DAOUsuarioRepository() {
		connection = SingleConnectionDB.getConnection();
	}

	public void salvarUsuario(ModelLogin objeto) throws SQLException {
		String sql = "INSERT INTO model_login (login, senha, nome, email) VALUES (?, ?, ?, ?)";
		PreparedStatement preparedStatement = connection.prepareStatement(sql);

		preparedStatement.setString(1, objeto.getLogin());
		preparedStatement.setString(2, objeto.getSenha());
		preparedStatement.setString(3, objeto.getNome());
		preparedStatement.setString(4, objeto.getEmail());

		preparedStatement.execute();
		connection.commit();
	}
}
