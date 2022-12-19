package ar.com.cac.controladores;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ar.com.cac.modelo.Usuario;
import ar.com.cac.modelo.UsuarioDAO;


/**
 * Servlet implementation class ServletLogin
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("email");
		String password = request.getParameter("password");
		Usuario user = new Usuario();
				
		UsuarioDAO uDAO = new UsuarioDAO();
		
		 // chequeo de existencia de usuario
	/**/	try {
			user = uDAO.getUsuarioByEmailAndPassword(username,password);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		/**/
		//chequeo de clave correcta
		if (user != null && user.getId()!= 0) {
			
			HttpSession session = request.getSession();
	        session.setAttribute("usuarioActual", user);
	        request.setAttribute("user", user.getNombre()+" "+ user.getApellido());

	        // response.sendRedirect("index.jsp");
	        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
	        dispatcher.forward(request, response);
			
			// request.getRequestDispatcher("index.jsp").forward(request, response);
			
		}/*else {
			 RequestDispatcher dispatcher = request.getRequestDispatcher("../pages/login.jsp");
			 dispatcher.forward(request, response);
			// HttpSession session = request.getSession();
		}*/
		
		
		
		/*try {
			uDAO.insert(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	

}
