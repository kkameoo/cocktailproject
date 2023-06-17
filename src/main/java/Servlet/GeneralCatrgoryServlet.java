package Servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "GeneralCatrgoryServlet", value = "/GeneralCatrgoryServlet")
public class GeneralCatrgoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String img = request.getParameter("img");
        request.setAttribute("qo", name);
        request.setAttribute("co", img);
        request.getRequestDispatcher("/GeneralCategory.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
