package br.com.tolive.bean;

import br.com.tolive.util.Cryptography;

public class Login {

	private String email;
	private String password;

	public Login(String email, String password) {
		super();
		this.email = email;
		setPassword(password);
	}

	public Login() {
		super();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		try {
			this.password = Cryptography.cryptography(password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
