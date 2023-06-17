package Servlet;

import Function.MemberDAO;
import Function.MemberVO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "testServlet", value = "/testServlet")
public class testServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/General.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String inx = request.getParameter("research");
        MemberDAO memberDAO = new MemberDAO();
        ArrayList<MemberVO> stList = memberDAO.research(inx);
        request.setAttribute("allList",stList);

        request.getRequestDispatcher("/GeneralServlet").forward(request, response);
    }
}
