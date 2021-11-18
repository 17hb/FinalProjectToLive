package br.com.fiap.tolive.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.fiap.tolive.bean.Evolution;
import br.com.fiap.tolive.model.EvolutionDAOModel;
import br.com.fiap.tolive.singleton.ConnectionManager;

public class OracleEvolutionDAO implements EvolutionDAOModel {

	private Connection connection;

	@Override
	public void register(Evolution evolution) {
		PreparedStatement stmt = null;

		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "INSERT INTO TB_EVOLUTION" + " (id_evolution, nr_height, nr_weight, date_imc)"
					+ "VALUES (SQ_TB_EVOLUTION.NEXTVAL, ?, ?, ?)";

			stmt = connection.prepareStatement(sql);

			stmt.setDouble(1, evolution.getHeight());
			stmt.setDouble(2, evolution.getWeight());
			java.sql.Date date = new java.sql.Date(evolution.getDateImc().getTimeInMillis());
			stmt.setDate(3, date);

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

	@Override
	public void update(Evolution evolution) {
		PreparedStatement stmt = null;

		try {
			connection = ConnectionManager.getInstance().getConnection();
			String sql = "UPDATE TB_EVOLUTION SET nr_height = ?, nr_weight = ?, date_imc = ? WHERE id_evolution = ?";
			stmt = connection.prepareStatement(sql);

			stmt.setDouble(1, evolution.getHeight());
			stmt.setDouble(2, evolution.getWeight());
			java.sql.Date date = new java.sql.Date(evolution.getDateImc().getTimeInMillis());
			stmt.setDate(3, date);
			stmt.setInt(4, evolution.getIdEvolution());

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

	@Override
	public void remove(int idEvoluton) {
		PreparedStatement stmt = null;

		try {
			connection = ConnectionManager.getInstance().getConnection();
			stmt = connection.prepareStatement("DELETE FROM TB_EVOLUTION WHERE id_evolution = ?");
			stmt.setInt(1, idEvoluton);

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

	@Override
	public List<Evolution> getAll() {

		List<Evolution> evolutionList = new ArrayList<>();
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			connection = ConnectionManager.getInstance().getConnection();
			stmt = connection.prepareStatement("SELECT * FROM TB_EVOLUTION");
			rs = stmt.executeQuery();

			// Percorre todos os registros encontrados
			while (rs.next()) {
				int idEvolution = rs.getInt("id_evolution");
				double height = rs.getDouble("nr_height");
				double weight = rs.getDouble("nr_weight");
				java.sql.Date date = rs.getDate("date_imc");
				Calendar dateImc = Calendar.getInstance();
				dateImc.setTimeInMillis(date.getTime());

				Evolution evolution = new Evolution(idEvolution, height, weight, dateImc);
				evolutionList.add(evolution);
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
		return evolutionList;
	}

	@Override
	public Evolution search(int idEvolution) {
		Evolution evolution = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			connection = ConnectionManager.getInstance().getConnection();
			stmt = connection.prepareStatement("SELECT * FROM TB_EVOLUTION WHERE id_evolution = ?");
			stmt.setInt(1, idEvolution);
			rs = stmt.executeQuery();

			if (rs.next()) {
				int idEvolutions = rs.getInt("id_evolution");
				double height = rs.getDouble("nr_height");
				double weight = rs.getDouble("nr_weight");
				java.sql.Date date = rs.getDate("date_imc");
				Calendar dateImc = Calendar.getInstance();
				dateImc.setTimeInMillis(date.getTime());

				evolution = new Evolution(idEvolutions, height, weight, dateImc);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
				rs.close();
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return evolution;
	}
}
