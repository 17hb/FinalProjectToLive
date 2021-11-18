package br.com.tolive.factory;

import br.com.tolive.implement.OracleEvolutionDAO;
import br.com.tolive.implement.OracleLoginDAO;
import br.com.tolive.model.EvolutionDAOModel;
import br.com.tolive.model.LoginDAOModel;

public class DAOFactory {

	public static EvolutionDAOModel getEvolutionDAO() {
		return new OracleEvolutionDAO();
	}
	
	public static LoginDAOModel getLoginDAO() {
		return new OracleLoginDAO();
	}

}
