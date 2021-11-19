package br.com.tolive.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.tolive.bean.Evolution;
import br.com.tolive.factory.DAOFactory;
import br.com.tolive.model.EvolutionDAOModel;

/**
 * Servlet implementation class EvolutionController
 */
@WebServlet("/evolution")
public class EvolutionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	EvolutionDAOModel dao;

	@Override
	public void init() throws ServletException {
		super.init();
		dao = DAOFactory.getEvolutionDAO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");

		switch (action) {
		case "getAll":
			getAll(request, response);
			break;
		case "open-form-edit":
			int idEvolution = Integer.parseInt(request.getParameter("idEvolution"));
			Evolution evolution = dao.search(idEvolution);
			request.setAttribute("evolution", evolution);
			request.getRequestDispatcher("edit-evolution.jsp").forward(request, response);
		}
	}

	private void getAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Evolution> evolution = dao.getAll();
		request.setAttribute("evolution", evolution);
		request.getRequestDispatcher("list-evolution.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		switch (action) {
		case "register":
			register(request, response);
			break;
		case "updated":
			updated(request, response);
			break;
		case "delete":
			delete(request, response);
			break;
		}
	}

	private void register(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			double height = Double.parseDouble(request.getParameter("height"));
			double weight = Double.parseDouble(request.getParameter("weight"));
			SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
			Calendar dateImc = Calendar.getInstance();
			dateImc.setTime(format.parse(request.getParameter("dateImc")));

			Evolution evolution = new Evolution(0, height, weight, dateImc);
			dao.register(evolution);

			request.setAttribute("msg", "Evolu��o cadastrada!");

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("erro", "Por favor, valide os dados");
		}
		request.getRequestDispatcher("register-evolution.jsp").forward(request, response);
	}

	private void updated(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int idEvolution = Integer.parseInt(request.getParameter("idEvolution"));
			double height = Double.parseDouble(request.getParameter("height"));
			double weight = Double.parseDouble(request.getParameter("weight"));
			SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
			Calendar dateImc = Calendar.getInstance();
			dateImc.setTime(format.parse(request.getParameter("dateImc")));

			Evolution evolution = new Evolution(idEvolution, height, weight, dateImc);
			dao.update(evolution);

			request.setAttribute("msg", "Evolução atualizada!");

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("erro", "Por favor, valide os dados");
		}
		getAll(request, response);
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idEvolution = Integer.parseInt(request.getParameter("idEvolution"));
		try {
			dao.remove(idEvolution);
			request.setAttribute("msg", "Evolução removida!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("erro", "Erro ao atualizar");
		}
		getAll(request, response);
	}
}
