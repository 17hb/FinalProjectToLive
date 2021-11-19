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

import br.com.tolive.bean.Profile;
import br.com.tolive.factory.DAOFactory;
import br.com.tolive.model.ProfileDAOModel;

/**
 * Servlet implementation class ProfileController
 */
@WebServlet("/profile")
public class ProfileController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    ProfileDAOModel dao;

    @Override
    public void init() throws ServletException {
        super.init();
        dao = DAOFactory.getProfileDAO();
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
                int idProfile = Integer.parseInt(request.getParameter("idProfile"));
                Profile profile = dao.search(idProfile);
                request.setAttribute("profile", profile);
                request.getRequestDispatcher("edit-profile.jsp").forward(request, response);
        }
    }

    private void getAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Profile> profile = dao.getAll();
        request.setAttribute("profile", profile);
        request.getRequestDispatcher("list-profile.jsp").forward(request, response);
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
            SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
            Calendar BirthDate = Calendar.getInstance();
            BirthDate.setTime(format.parse(request.getParameter("BirthDate")));
            String BloodType = request.getParameter("BloodType");
            String Allergy = request.getParameter("Allergy");
            String Notes = request.getParameter("Notes");
            String HospAssoc = request.getParameter("HospAssoc");
            String EmergCtct = request.getParameter("EmergCtct");


            Profile profile = new Profile(0, BirthDate, BloodType, Allergy, Notes, HospAssoc, EmergCtct);
            dao.register(profile);

            request.setAttribute("msg", "Bem-vindo!");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("erro", "Por favor, valide os dados");
        }
        request.getRequestDispatcher("register-profile.jsp").forward(request, response);
    }

    private void updated(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
            Calendar BirthDate = Calendar.getInstance();
            BirthDate.setTime(format.parse(request.getParameter("BirthDate")));
            String BloodType = request.getParameter("BloodType");
            String Allergy = request.getParameter("Allergy");
            String Notes = request.getParameter("Notes");
            String HospAssoc = request.getParameter("HospAssoc");
            String EmergCtct = request.getParameter("EmergCtct");

            Profile profile = new Profile(0, BirthDate, BloodType, Allergy, Notes, HospAssoc, EmergCtct);
            dao.update(profile);

            request.setAttribute("msg", "Perfil atualizado com sucesso.");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("erro", "Por favor, valide os dados");
        }
        getAll(request, response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idProfile = Integer.parseInt(request.getParameter("idProfile"));
        try {
            dao.remove(idProfile);
            request.setAttribute("msg", "Perfil removido!");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("erro", "Erro ao atualizar");
        }
        getAll(request, response);
    }
}
