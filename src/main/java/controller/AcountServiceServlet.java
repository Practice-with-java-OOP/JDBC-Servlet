package controller;

import models.Acount;
import service.AcountService;
import service.AcountServiceiplm;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AcountServiceServlet", urlPatterns = "/displays")
public class AcountServiceServlet extends HttpServlet {
        AcountService acountService = new AcountServiceiplm();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createNewAccount(request, response);
                break;
            case "login":
                loginAccount(request, response);
                break;
            default:
                break;
        }
    }

    private void createNewAccount(HttpServletRequest request, HttpServletResponse response) {

        Acount acount = new Acount();
        acount.setFirstName(request.getParameter("firstName"));
        acount.setLastName(request.getParameter("lastName"));
        acount.setUser(request.getParameter("user"));
        acount.setPass(request.getParameter("password"));
        acount.setEmail(request.getParameter("email"));
        acount.setPhoneNumber(request.getParameter("phone"));
        acount.setDay(Integer.parseInt(request.getParameter("day")));
        acount.setMonth(Integer.parseInt(request.getParameter("month")));
        acount.setYear(Integer.parseInt(request.getParameter("year")));

        try {
            this.acountService.saveAcount(acount);
            request.setAttribute("message", "Create new compliment");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/account/createAccount.jsp");
            dispatcher.forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void loginAccount(HttpServletRequest request, HttpServletResponse response) {
        String userName = request.getParameter("user");
        String password = request.getParameter("password");

        HttpSession session =request.getSession();
        boolean find = false;
        try {
            for (Acount a : this.acountService.findAllAcount()) {
                if (userName.equals(a.getUser()) && password.equals(a.getPass())) {
                    find = true;
                }
            }
            if (!find) {
                request.setAttribute("error", "Username and Password invalid !");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/account/login.jsp");
                dispatcher.forward(request, response);
            } else {
                Cookie user = new Cookie("user", userName);
                Cookie pass = new Cookie("pass", password);

                if (request.getParameter("checkbox") != null) {
                    user.setMaxAge(60 * 60);
                    pass.setMaxAge(60 * 60);
                } else {
                    user.setMaxAge(0);
                    pass.setMaxAge(0);
                }

                response.addCookie(user);
                response.addCookie(pass);

                session.setAttribute("userName", userName);
                response.sendRedirect("/products");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showFormCreateNewAccount(request, response);
                break;
            case "login":
                showFormLogin(request, response);
                break;
            default:
                showHomePage(request, response);
                break;
        }
    }

    private void showFormCreateNewAccount(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/account/createAccount.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormLogin(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/account/login.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showHomePage(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
