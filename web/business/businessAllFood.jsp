<%-- 
    Document   : businessAllFood
    Created on : 2016-4-7, 16:21:12
    Author     : ice
--%>
<%@page import="DATA.FoodDB"%>
<%@page import="DATA.UserDB"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
        <title>businessAllFood</title>
        <!-- Bootstrap -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <%@include file="../include/top.jsp" %>
        <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        
        <div class="row">
            <div class="col-md-1">

            </div>
            <div class="col-md-10">
                <img src="../img/yonghu.jpg" style="width: 100%"/>
                <h4>&nbsp;</h4>
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">

                            <a class="navbar-brand" href="#">查看全部商品</a>
                            <a class="navbar-brand" href="#">查看全部订单</a>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">修改个人资料 <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">修改密码</a></li>
                                        <li><a href="#">修改电话</a></li>
                                        <li><a href="#">修改地址</a></li>

                                    </ul>
                                </li>
                            </ul>
                            <form class="navbar-form navbar-left" role="search">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Search">
                                </div>
                                <button type="submit" class="btn btn-default">搜索</button>
                            </form>

                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
        </div>
        
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                
                                <div class="col-md-12">
                                    <table class="table table-striped">
                                        <tr>
                                            <td><h1>商品名称</h1></td>
                                            <td><h1>商品价格</h1></td>
                                            <td><h1>操作</h1></td>
                                        </tr>
                                        <%
                                            UserDB udb = new UserDB();
                                            FoodDB fdb = new FoodDB();
                                            String businessname = (String) session.getAttribute("businessname");
                                            String url = "";
                                            if (businessname == "") {
                                                response.sendRedirect("/dinner/Users/BusinessLogin.jsp");
                                            }

                                            int id = udb.quertUserId("select businessId from business where businessName='" + businessname + "'");
                                            List list = new ArrayList();
                                            list = fdb.quertBusinessFood(5, "select * from food where businessId='" + id + "'");

                                            for (int i = 0; i < list.size(); i++) {
                                                String str[] = (String[]) list.get(i);
                                        %>
                                        <tr>
                                            <td><h3><%= str[2]%></h3></td>
                                            <td><h3><%= str[3]%></h3></td>
                                            <td>
                                                <a class="btn btn-primary btn-lg" href="#" role="button">编辑</a>
                                                <a class="btn btn-default btn-lg" href="#" role="button">删除</a>
                                                
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>

                                    </table>

                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                                        <h1>&nbsp;</h1><h1>&nbsp;</h1><h1>&nbsp;</h1>
                                         <%@include file="../include/down.jsp" %>
                </body>
                </html>
