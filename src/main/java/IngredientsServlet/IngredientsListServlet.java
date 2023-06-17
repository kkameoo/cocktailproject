package IngredientsServlet;

import Function.MemberIVO;
import Function.ViewIngredient;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "IngredientsListServlet", value = "/IngredientsListServlet")
public class IngredientsListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String inx = request.getParameter("ingre");
        ViewIngredient viewIngredient = new ViewIngredient();
        ArrayList<MemberIVO> stList = viewIngredient.SelectDB(inx);
        request.setAttribute("allList",stList);
        request.getRequestDispatcher("IngredientsList.jsp").forward(request, response);
    }
}
