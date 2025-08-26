package controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.HelloDAO;

@WebServlet("/list")
public class ListServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      HelloDAO dao = new HelloDAO();
      List<String> list = dao.getAll();

      request.setAttribute("list", list);
      request.getRequestDispatcher("list.jsp").forward(request, response);
  }
}