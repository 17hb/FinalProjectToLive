package br.com.fiap.tolive.factory;

import br.com.fiap.tolive.implement.OracleEvolutionDAO;
import br.com.fiap.tolive.implement.OracleLoginDAO;
import br.com.fiap.tolive.model.EvolutionDAOModel;
import br.com.fiap.tolive.model.LoginDAOModel;

public class DAOFactory {

	public static EvolutionDAOModel getEvolutionDAO() {
		return new OracleEvolutionDAO();
	}
	
	public static LoginDAOModel getLoginDAO() {
		return new OracleLoginDAO();
	}

}
