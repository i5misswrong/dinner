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
import java.util.ArrayList;
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
public class FoodSer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet FoodSer</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>123</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }
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
        String sql = "";
        String url = "";
        String businessname="";
        String foodname = "";
        String foodprice = "";
        String foodid;
        String foodurl;
        int id;
        boolean flag = false;
        UserDB udb = new UserDB();
        FoodDB fdb = new FoodDB();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action").trim();
        if (action == null) {
            return;
        } //这里是商家新增商品
        else if (action.equals("businessNewFood")) {
            businessname = (String) session.getAttribute("businessname");
            foodname = request.getParameter("foodname");
            foodprice = (String) request.getParameter("foodprice");
            foodurl = request.getParameter("foodurl");
            System.out.println("business" + businessname);
            if (businessname == "") {
                response.sendRedirect("/dinner/Users/BusinessLogin.jsp");
            }
            id = udb.quertUserId("select businessId from business where businessName='" + businessname + "'");
            flag = fdb.newFood("insert into food (businessId,foodName,foodPrice) values ('" + id + "','" + foodname + "','" + foodprice + "')");

            if (flag == false) {
                response.sendRedirect("/dinner/fail.jsp");
            } else {
                response.sendRedirect("/dinner/food/newFooded.jsp");
            }

        } //这里是查看商家所有商品
        else if (action.equals("businessQuertAllFood")) {

            businessname = (String) request.getParameter("businessname");
            System.out.println("name" + businessname);
            url = "/food/businessFood.jsp";
            id = udb.quertUserId("select businessId from business where businessName='" + businessname + "'");
            List list = new ArrayList();
            list = fdb.quertBusinessFood(5, "select * from food where businessId='" + id + "'");
            System.out.println(list.size());
            request.setAttribute("businessAllFood", list);

            request.getRequestDispatcher(url).forward(request, response);

        } //这里是查看所有商家
        else if (action.equals("businessQuertAll")) {
            businessname = (String) session.getAttribute("businessname");
            url = "";
            if (businessname == "") {
                response.sendRedirect("/dinner/Users/BusinessLogin.jsp");
            }

            id = udb.quertUserId("select businessId from business where businessName='" + businessname + "'");
            List list = new ArrayList();
            list = fdb.quertBusinessFood(5, "select * from food where businessId='3'");
            for (int i = 0; i < list.size(); i++) {
                String str[] = (String[]) list.get(i);
                String s = str[2];
                System.out.println(s);

            }
            request.setAttribute("businessAllFood", list);
            ServletContext sc = getServletContext();
            RequestDispatcher rd = sc.getRequestDispatcher(url);
            rd.forward(request, response);
        }
        
        else if (action.equals("buyFood")) {
            String userid="";
            String username = (String) session.getAttribute("username");
            foodid = request.getParameter("foodid");
            foodname = request.getParameter("foodname");
            String businessid = request.getParameter("businessid");
            List businessList=fdb.serchById(6, "select * from business where businessId='"+businessid+"'");
            for(int i=0;i<businessList.size();i++){
                    String str [] =(String [])businessList.get(i);
                    businessname=str[1];
                }
            if (username == "") {
                response.sendRedirect("/dinner/Users/UserLogin.jsp");
            }
            System.out.println("username"+username);
            List userList = fdb.serchById(4,"select * from user where userName='"+username+"'");
            for(int i=0;i<userList.size();i++){
                    String str [] =(String [])userList.get(i);
                    userid=str[0];
                }
            flag = fdb.newFood("insert into oorder (businessId,businessName,userId,foodId,foodName) values ('" + businessid + "','"+businessname+"','" + userid + "','" + foodid + "','"+foodname+"')");

            if (flag == false) {
                response.sendRedirect("/dinner/fail.jsp");
            } else {
                response.sendRedirect("/dinner/food/buyFoodSuccess.jsp");
            }

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
