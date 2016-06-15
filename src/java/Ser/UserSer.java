/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ser;

import DATA.FoodDB;
import DATA.UserDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ice
 */
public class UserSer extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("hello  diyi ");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserSer</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserSer at " + request.getContextPath() + "</h1>");

            out.println("hello  zhesh iwo de ");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        response.setContentType("text/html;charset=utf-8");

        UserDB udb = new UserDB();
        FoodDB fdb = new FoodDB();
        String sql = "";
        String url = "";
        String username;
        String userpwd;
        String usertel;
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action").trim();
        if (action == null) {
            return;
        } //这里是用户登录
        else if (action.equals("userLogin")) {
            username = request.getParameter("username");
            userpwd = request.getParameter("userpwd");

            boolean flag = udb.login("select * from user where userName='" + username + "' and userPwd='" + userpwd + "'");

            if (flag == false) {
                response.sendRedirect("/dinner/Users/UserLogin.jsp");
            } else {
                session.setAttribute("username", username);
                response.sendRedirect("/dinner/index.jsp");
            }

        } //这里是用户注册
        else if (action.equals("userRegist")) {
            username = request.getParameter("username");
            userpwd = request.getParameter("userpwd");
            usertel = request.getParameter("usertel");
            System.out.println("username"+username);
            sql = "insert into user (userName,userPwd,userTel) values ('" + username + "','" + userpwd + "','" + usertel + "')";
            boolean flag = udb.regist(sql);
            if (flag == false) {
                response.sendRedirect("/dinner/Users/UserRegist.jsp");
            } else {
                response.sendRedirect("/dinner/index.jsp");
            }
        }
        else if(action.equals("userCancel")){
             session.removeAttribute("username");
             response.sendRedirect("/dinner/index.jsp");
         }

//这里是商家登录
        else if (action.equals("businessLogin")) {
            username = request.getParameter("username");
            userpwd = request.getParameter("userpwd");

            boolean flag = udb.login("select * from business where businessName='" + username + "' and businessPwd='" + userpwd + "'");

            if (flag == false) {
                response.sendRedirect("/dinner/Users/BusinessLogin.jsp");
            } else {
                session.setAttribute("businessname", username);
                response.sendRedirect("/dinner/index.jsp");
            }

        } 
        else if(action.equals("businessCancel")){
             session.removeAttribute("businessname");
             response.sendRedirect("/dinner/index.jsp");
         }

//这里是商家注册
        else if (action.equals("businessRegist")) {
            username = request.getParameter("username");
            userpwd = request.getParameter("userpwd");
            usertel = request.getParameter("usertel");

            sql = "insert into business (businessName,businessPwd,businessTel) values ('" + username + "','" + userpwd + "','" + usertel + "')";
            boolean flag = udb.regist(sql);
            if (flag == false) {
                response.sendRedirect("/dinner/Users/BusinessRegist.jsp");
            } else {
                response.sendRedirect("/dinner/index.jsp");
            }
        } //用户查询所有订单
        else if (action.equals("serchAllOrder")) {
            url = "/Users/UserIndex.jsp";
            username = (String) session.getAttribute("username");
            List userList = fdb.serchById(4, sql = "select * from user where userName='" + username + "'");
            String s = "";
            for (int i = 0; i < userList.size(); i++) {
                String str[] = (String[]) userList.get(i);
                s = str[0];

            }
            System.out.println("sss" + s);
            List orderList = fdb.serchById(8, "select * from oorder where userId='" + s + "'");
            System.out.println("orde4ee"+orderList.size());
            request.setAttribute("orderList", orderList);
            request.getRequestDispatcher(url).forward(request, response);

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
