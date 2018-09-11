package br.edu.insper;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Login
 */
@WebServlet("/Cria")
public class Cria extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service (HttpServletRequest request,
			 HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		DAO dao = new DAO();
		Usuarios usuario = new Usuarios();
		usuario.setUser(request.getParameter("nome"));
		usuario.setPassword(request.getParameter("senha"));
		String confirm = request.getParameter("confirm");
		try {
			if(!dao.checkUser(usuario) && request.getParameter("senha").equals(confirm)  ) {
				System.out.println("usuario adicionado");
				dao.adiciona(usuario);
				
			}
			else {
				System.out.println("esse user ja existe");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("<html><body>");
		out.println("adicionado" + usuario.getUser());
		out.println("</body></html>");
		dao.close();
	}
}
