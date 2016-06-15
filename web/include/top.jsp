<%-- 
    Document   : top
    Created on : 2016-4-8, 9:50:23
    Author     : ice
--%>

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

        <link href="../css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>

        <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        
            
            
        
        <div class="row">
            <div class="col-md-12" >
            <div class="col-md-1"></div>
            <div class="col-md-3"><h4>欢迎来到太原科技大学订餐系统</h4> </div>
            <div class="col-md-3"><h4>请<a href="/dinner/Users/UsersLogin.jsp" >登录</a>/<a href="/dinner/Users/UserRegist.jsp" >注册</a></h4></div>
            <div class="col-md-2"><h4><a href="/dinner/UserSer?action=serchAllOrder">个人中心</a>/<a href="/dinner/UserSer?action=userCancel">注销</a></h4></div>
            <div class="col-md-2">
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        商家入口
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <li><a href="Users/BusinessLogin.jsp">商家登录</a></li>
                        <li><a href="Users/BusinessRegist.jsp">商家注册</a></li>
                        <li><a href="business/businessAllFood.jsp">商家主页</a></li>
                        <li><a href="/dinner/UserSer?action=businessCancel">商家注销</a></li>
                    </ul>
                </div>

            </div>
            <div class="col-md-1"></div>
        </div>

        <div class="row">
            <div class="col-md-1"></div>


            <div class="col-md-10">

                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="/dinner/index.jsp">首页</a>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                
                                <li><a href="#">精选外卖</a></li>
                                <li><a href="#">品牌商家</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">查看 <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">查看所有商家</a></li>
                                        <li><a href="#">查看所有外卖</a></li>
                                        
                                    </ul>
                                </li>
                            </ul>
                            <form class="navbar-form navbar-right" role="search">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Search">
                                </div>
                                <button type="submit" class="btn btn-default">搜索商家或外卖</button>
                            </form>
                            
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
            <div class="col-md-1"></div>
            </div>
    </body>
</html>
