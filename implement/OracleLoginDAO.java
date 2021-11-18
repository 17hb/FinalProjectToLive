package br.com.fiap.tolive.implement;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import br.com.fiap.tolive.bean.Login;
import br.com.fiap.tolive.model.LoginDAOModel;
import br.com.fiap.tolive.singleton.ConnectionManager;

public class OracleLoginDAO implements LoginDAOModel {

	private Connection connection;

	@Override
	public boolean validateLogin(Login login) {
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			connection = ConnectionManager.getInstance().getConnection();
			stmt = connection.prepareStatement("SELECT * FROM TB_LOGIN WHERE DS_EMAIL = ? AND DS_PASSWORD = ?");
			stmt.setString(1, login.getEmail());
			stmt.setString(2, login.getPassword());
			rs = stmt.executeQuery();

			if (rs.next()) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public void registerLogin(Login login) {
		PreparedStatement stmt = null;

		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "INSERT INTO TB_LOGIN" + " (ds_email, ds_password)" + "VALUES (?, ?)";

			stmt = connection.prepareStatement(sql);

			stmt.setString(1, login.getEmail());
			stmt.setString(2, login.getPassword());

			stmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
