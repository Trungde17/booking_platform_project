package controller;

import java.io.IOException;
import java.util.ArrayList;
import DAO.HomestayDAO;
import model.Homestay;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/searchController")
public class searchController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchQuery = request.getParameter("search");
        ArrayList<Homestay> searchResults = HomestayDAO.searchHomestays(searchQuery);

        request.setAttribute("homestays", searchResults);
        request.getRequestDispatcher("search/searchResult.jsp").forward(request, response);
    }
}
