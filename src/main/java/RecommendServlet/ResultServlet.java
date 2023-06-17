package RecommendServlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ResultServlet", value = "/ResultServlet")
public class ResultServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String img = request.getParameter("img");
//        String ing = request.getParameter("ing");
//        String ins = request.getParameter("ins");
        request.setAttribute("qo", name);
        request.setAttribute("co", img);
//        request.setAttribute("go", ing);
//        request.setAttribute("so", ins);
        request.getRequestDispatcher("/RecommendResult.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
