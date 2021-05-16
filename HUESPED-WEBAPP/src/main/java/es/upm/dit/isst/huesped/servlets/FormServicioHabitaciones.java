package es.upm.dit.isst.huesped.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FormServicioHabitaciones")
public class FormServicioHabitaciones extends HttpServlet {
        private static final long serialVersionUID = 1L;
        
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                req.getSession().invalidate();
                getServletContext().getRequestDispatcher("/ServHabitaciones.jsp").forward(req,resp);
        }
}



