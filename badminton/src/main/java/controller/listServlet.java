package controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.HelloDAO;
import model.ReservationDTO;

@WebServlet("/list")
public class listServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      HelloDAO dao = new HelloDAO();
      List<ReservationDTO> list = dao.getAll();
      request.setAttribute("list", list);

      request.getRequestDispatcher("result.jsp").forward(request, response);
  }
}