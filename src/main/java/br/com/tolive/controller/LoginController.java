package br.com.tolive.controller;

import br.com.tolive.bean.Login;
import br.com.tolive.factory.DAOFactory;
import br.com.tolive.model.LoginDAOModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final LoginDAOModel dao;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		dao = DAOFactory.getLoginDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");

		if ("register".equals(action)) {
			register(request, response);
		}

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		Login login = new Login(email, password);

		if (dao.validateLogin(login)) {
			HttpSession session = request.getSession();
			session.setAttribute("login", email);
		} else {
			request.setAttribute("erro", "Usu�rio e/ou senha inv�lidos");
		}
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	private void register(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			Login login = new Login(email, password);
			dao.registerLogin(login);

			request.setAttribute("msg", "Cadastrado com sucesso!");

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("erro", "Por favor, valide os dados");
		}
		request.getRequestDispatcher("register-userLogin.jsp").forward(request, response);
	}

}
