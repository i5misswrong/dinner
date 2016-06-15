/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DATA;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ice
 */
public class FoodDB {

    String driverName = "com.mysql.jdbc.Driver"; // 数据库驱动
    String dbURL = "jdbc:mysql://localhost:3306/dinner?autoReconnect=true&useUnicode=true&characterEncoding=gbk&mysqlEncoding=utf8"; // 数据库地址
    String sqlUserName = "root"; // 用户名
    String sqlUserPwd = "334455"; // 密码
    // --------------------查询商家所有商品方法----------------------------------

    public List quertBusinessFood(int temp, String sql) {

        Connection con; // 数据库开关相关
        Statement st;
        ResultSet rs;
        boolean flag = false;
        List list = new ArrayList();
        try {
            Class.forName(driverName); // 加载数据库驱动
            System.out.println("加载驱动成功！");
        } catch (Exception ex) {
            ex.printStackTrace(); // 捕获异常并打印
            System.out.println("加载驱动失败！");
        }
        try {
            con = DriverManager.getConnection(dbURL, sqlUserName, sqlUserPwd); // 获取数据库链接
            System.out.println("连接数据库成功！");
            st = con.createStatement(); // 创建数据库链接
            rs = st.executeQuery(sql); // 创建结果集
            ResultSetMetaData rsmt = rs.getMetaData(); // 创建游标
            while (rs.next()) {
                String[] str = new String[temp];
                for (int i = 0; i < str.length; i++) {
                    str[i] = rs.getString(i + 1);
                }
                list.add(str);
                flag = true;
            }
            System.out.println("flag=" + flag);
            rs.close();
            st.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.print("SQL连接失败！");
        }
        return list;
    }

    // ---------------------增加商品方法----------------------------------
    public boolean newFood(String sql) {
        boolean flag = false;
        int i = 0;

        Connection con; // 数据库开关相关
        Statement st;
        ResultSet rs;
        try {
            Class.forName(driverName); // 加载数据库驱动
            System.out.println("加载驱动成功！");
        } catch (Exception ex) {
            ex.printStackTrace(); // 捕获异常并打印
            System.out.println("加载驱动失败！");
        }
        try {
            con = DriverManager.getConnection(dbURL, sqlUserName, sqlUserPwd); // 获取数据库链接
            System.out.println("连接数据库成功！");
            st = con.createStatement(); // 创建数据库链接
            i = st.executeUpdate(sql);
            if (i != 0) {
                flag = true;
            }
            st.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.print("SQL连接失败！");
        }
        return flag;

    }

    // ---------------------购买商品方法----------------------------------
    public boolean buyFood(String sql) {
        boolean flag = false;
        int i = 0;

        Connection con; // 数据库开关相关
        Statement st;
        ResultSet rs;
        try {
            Class.forName(driverName); // 加载数据库驱动
            System.out.println("加载驱动成功！");
        } catch (Exception ex) {
            ex.printStackTrace(); // 捕获异常并打印
            System.out.println("加载驱动失败！");
        }
        try {
            con = DriverManager.getConnection(dbURL, sqlUserName, sqlUserPwd); // 获取数据库链接
            System.out.println("连接数据库成功！");
            st = con.createStatement(); // 创建数据库链接
            i = st.executeUpdate(sql);
            if (i != 0) {
                flag = true;
            }
            st.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.print("SQL连接失败！");
        }
        return flag;

    }

    // --------------------通过id查询信息方法----------------------------------
    public List serchById(int temp, String sql) {

        Connection con; // 数据库开关相关
        Statement st;
        ResultSet rs;
        boolean flag = false;
        List list = new ArrayList();
        try {
            Class.forName(driverName); // 加载数据库驱动
            System.out.println("加载驱动成功！");
        } catch (Exception ex) {
            ex.printStackTrace(); // 捕获异常并打印
            System.out.println("加载驱动失败！");
        }
        try {
            con = DriverManager.getConnection(dbURL, sqlUserName, sqlUserPwd); // 获取数据库链接
            System.out.println("连接数据库成功！");
            st = con.createStatement(); // 创建数据库链接
            rs = st.executeQuery(sql); // 创建结果集
            ResultSetMetaData rsmt = rs.getMetaData(); // 创建游标
            while (rs.next()) {
                String[] str = new String[temp];
                for (int i = 0; i < str.length; i++) {
                    str[i] = rs.getString(i + 1);
                }
                list.add(str);
            }
            rs.close();
            st.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.print("SQL连接失败！");
        }
        return list;
    }
}
