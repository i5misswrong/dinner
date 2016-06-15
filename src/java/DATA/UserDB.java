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

/**
 *
 * @author ice
 */
public class UserDB {

    String driverName = "com.mysql.jdbc.Driver"; // 数据库驱动
    String dbURL = "jdbc:mysql://localhost:3306/dinner?autoReconnect=true&useUnicode=true&characterEncoding=gbk&mysqlEncoding=utf8"; // 数据库地址
    String sqlUserName = "root"; // 用户名
    String sqlUserPwd = "334455"; // 密码
    // ---------------------登录方法----------------------------------

    public boolean login(String sql) {

        Connection con; // 数据库开关相关
        Statement st;
        ResultSet rs;
        boolean flag = false;

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
        return flag;
    }
    // ---------------------注册方法----------------------------------

    public boolean regist(String sql) {
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
                System.out.println(i + "iiiii");
            }
            st.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.print("SQL连接失败！");
        }
        return flag;

    }
    // ---------------------登录方法----------------------------------

    public int quertUserId(String sql) {

        Connection con; // 数据库开关相关
        Statement st;
        ResultSet rs;
        int id = 0;

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
                id = rs.getInt("businessId");
            }
            System.out.println("flag=" + id);
            rs.close();
            st.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.print("SQL连接失败！");
        }
        return id;
    }
}
