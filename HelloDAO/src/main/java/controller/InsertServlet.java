package controller;

import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.HelloDAO;

@WebServlet("/insert")

public class InsertServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
	  
      request.setCharacterEncoding("utf-8");
      String name = request.getParameter("name");

      HelloDAO dao = new HelloDAO();
      dao.insertName(name);

      response.sendRedirect("list");
  }
}
