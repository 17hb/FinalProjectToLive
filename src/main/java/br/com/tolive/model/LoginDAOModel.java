package br.com.tolive.model;

import br.com.tolive.bean.Login;

public interface LoginDAOModel {

	boolean validateLogin(Login login);
	void registerLogin(Login login);

}
