package servlets;

import java.io.IOException;
import java.sql.SQLException;

import dao.DAOUsuarioRepository;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelLogin;

@WebServlet("/ServletUsuarioController")
public class ServletUsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DAOUsuarioRepository daoUsuarioRepository = new DAOUsuarioRepository();

    public ServletUsuarioController() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String msg = "Operação realizada com sucesso";
		
		String id = request.getParameter("id");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		
		ModelLogin modelLogin = new ModelLogin();
		modelLogin.setId(id != null && !id.isEmpty() ? Long.parseLong(id) : null);
		modelLogin.setLogin(login);
		modelLogin.setSenha(senha);
		modelLogin.setNome(nome);
		modelLogin.setEmail(email);

		try {
			
			if(daoUsuarioRepository.usuarioJaExiste(modelLogin.getLogin()) && modelLogin.getId() == null) {
				msg = "Esse login já existe. Por favor utilize outro.";
			} else {
				request.setAttribute("msg", "Operação realizada com sucesso!");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher redirecionador = request.getRequestDispatcher("erro.jsp");
			request.setAttribute("msg", e.getMessage());
			redirecionador.forward(request, response);
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("modelLogin", modelLogin);
		request.getRequestDispatcher("/principal/cadastroUsuario.jsp").forward(request, response);
	}

}
