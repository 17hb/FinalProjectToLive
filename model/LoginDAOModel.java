package br.com.fiap.tolive.model;

import br.com.fiap.tolive.bean.Login;

public interface LoginDAOModel {

	boolean validateLogin(Login login);
	void registerLogin(Login login);

}
