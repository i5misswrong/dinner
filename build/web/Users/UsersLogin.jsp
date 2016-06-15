<%-- 
    Document   : UsersLogin
    Created on : 2016-4-7, 10:53:15
    Author     : ice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>登录</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>

        <%@include file="../include/top.jsp" %>
        <!--登录表单区域-->
        
        <h1>&nbsp</h1><h1>&nbsp</h1><h1>&nbsp</h1>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10" >
                <div class="row">
                    <div class="col-md-6"  >
                        <img src="../img/userlogin.jpg" style="width: 100% "/>
                    </div>
                    <div class="col-md-6">
                        <h1 class="text-center">欢迎来到太原科技大学订餐系统</h1>
                        <h1>&nbsp</h1>
                        <form class="form-horizontal" action="/dinner/UserSer?action=userLogin" method="post">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-md-2 control-label ">用户名</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="username" id="inputEmail3" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-md-2 control-label">密码</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" name="userpwd" id="inputPassword3" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-primary btn-lg btn-block">登录</button>
                                    
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-1"></div>
        
    </div>
        
        <h1>&nbsp</h1><h1>&nbsp</h1><h1>&nbsp</h1>
        
        <%@include file="../include/down.jsp" %>
    </body>
</html>
