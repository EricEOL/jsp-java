package filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@WebFilter(urlPatterns = { "/principal/*" })
public class FilterAuthenticator implements Filter {

	public FilterAuthenticator() {
		// TODO Auto-generated constructor stub
	}

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();

		String loggedUser = (String) session.getAttribute("user");

		String urlToAuthenticate = req.getServletPath();

		if (loggedUser == null && !urlToAuthenticate.equalsIgnoreCase("/principal/ServletLogin")) {
			RequestDispatcher redirector = request.getRequestDispatcher("/index.jsp?url=" + urlToAuthenticate);

			request.setAttribute("msg", "Por favor, realize o login");
			redirector.forward(request, response);
			return;
		} else {
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
