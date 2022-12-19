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
 * Servlet implementation class ServletRegister
 */
@WebServlet("/ServletRegister")
public class ServletRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletRegister() {
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
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String email = request.getParameter("email");
		String password = request.getParameter("contrasenia");
		String ciudad = request.getParameter("ciudad");
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("telefono");
		
		Usuario user = new Usuario();
		
		user.setNombre(nombre);
	    user.setApellido(apellido);
	    user.setMail(email);
	    user.setPassword(password);
	    user.setCiudad(ciudad);
	    user.setDireccion(direccion);
	    user.setTelefono(telefono);
		
		
		UsuarioDAO uDAO = new UsuarioDAO();
		
		try {
			uDAO.insert(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			user = uDAO.getUsuarioByEmailAndPassword(email, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		HttpSession session = request.getSession();
        session.setAttribute("usuarioActual", user);

        // response.sendRedirect("index.jsp");
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
        
		doGet(request, response);
	}

}
