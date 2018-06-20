package filters;

import domain.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AuthentificationFilter", urlPatterns = "/admin.jsp")
public class AuthentificationFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpSession session = ((HttpServletRequest) req).getSession(false);


        if (session != null && session.getAttribute("user") != null) {

            User user = (User) session.getAttribute("user");
            System.out.println("Uzytkownik " + user.getFirstName() + " posiada sesje");
            chain.doFilter(req, resp);
        } else {
            System.err.println("Nie ma uzytkownika sesji");

            ((HttpServletResponse)resp).sendRedirect("/login.jsp");
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
