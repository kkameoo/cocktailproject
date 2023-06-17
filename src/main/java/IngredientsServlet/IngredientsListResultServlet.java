package IngredientsServlet;

import Function.MemberIVO;
import Function.ViewIngredient;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "IngredientsListResultServlet", value = "/IngredientsListResultServlet")
public class IngredientsListResultServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");

    int innx = Integer.parseInt(request.getParameter("id"));
    ViewIngredient view = new ViewIngredient();
    ArrayList<MemberIVO> stList = view.View(innx);
    request.setAttribute("allList",stList);
    request.getRequestDispatcher("/IngredientsResearch.jsp").forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }
}
