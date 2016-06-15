<%-- 
    Document   : index
    Created on : 2016-4-7, 13:36:12
    Author     : ice
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="DATA.FoodDB"%>
<%@page import="DATA.UserDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
        <title>idnex</title>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="include/top.jsp" %>

        <script src="js/bootstrap.min.js"></script>
        

        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div id="myCarousel" class="carousel slide">
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>   
                    <!-- 轮播（Carousel）项目 -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="img/one001.jpg" width="100%"  alt="First slide">
                            <div class="carousel-caption">饭团</div>
                        </div>
                        <div class="item">
                            <img src="img/one002.jpg" width="100%" alt="Second slide">
                            <div class="carousel-caption">鸡翅</div>
                        </div>
                        <div class="item">
                            <img src="img/one003.jpg" width="100%" alt="Third slide">
                            <div class="carousel-caption">早餐</div>
                        </div>
                    </div>
                    <!-- 轮播（Carousel）导航 -->
                    <a class="carousel-control left" href="#myCarousel" 
                       data-slide="prev">&lsaquo;</a>
                    <a class="carousel-control right" href="#myCarousel" 
                       data-slide="next">&rsaquo;</a>
                </div> 

            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">

                <table class="table table-striped">
                    <tr>

                    <h1 class="text-center">所有商家</h1>
                    </tr>
                    <%
                        UserDB udb = new UserDB();
                        FoodDB fdb = new FoodDB();
                        List list = new ArrayList();
                        list = fdb.quertBusinessFood(6, "select * from business ");
                        for (int i = 0; i < list.size(); i++) {
                            String str[] = (String[]) list.get(i);
                    %>
                    <tr>
                        <td><img src="<%= str[4]%>" width="100%" ></td>
                        <td><a href="/dinner/FoodSer?action=businessQuertAllFood&businessname=<%= str[1]%>" class="btn btn-primary btn-lg btn-block"><%= str[1]%></a>
                            <h3>电话:<%= str[3]%></h3>
                            
                        </td>
                        <td style="width: 40%"><p><%= str[5]%></p></td>


                    </tr>
                    <%
                        }
                    %>

                </table>


            </div>
            <div class="col-md-1"></div>
        </div>


        <%@include file="include/down.jsp" %>
        
    </body>
</html>
