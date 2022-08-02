package kz.bitlab.Servlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/home")

public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/index.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


         String name=request.getParameter("name");
         String surname=request.getParameter("surname");
         String age=request.getParameter("age");
         String country=request.getParameter("country");
         String gender=request.getParameter("gender");
         String creditcard=request.getParameter("creditcard");


        Cookie cookiname=new Cookie("name",name);
        cookiname.setMaxAge(3600);
        Cookie cookisurname=new Cookie("surname",surname);
        cookisurname.setMaxAge(3600);
        Cookie cookieage=new Cookie("age",age);
        cookieage.setMaxAge(3600);
        Cookie cookiecountry=new Cookie("country",country);
        cookiecountry.setMaxAge(3600);
        Cookie cookiegender=new Cookie("gender",gender);
        cookiegender.setMaxAge(3600);
        Cookie cookiecreditcard=new Cookie("creditcard",creditcard);
        cookiecreditcard.setMaxAge(3600);

        response.addCookie(cookiname);
        response.addCookie(cookisurname);
        response.addCookie(cookieage);
        response.addCookie(cookiecountry);
        response.addCookie(cookiegender);
        response.addCookie(cookiecreditcard);

        response.sendRedirect("/index.jsp");

    }
}
