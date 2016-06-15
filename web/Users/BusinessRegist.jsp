<%-- 
    Document   : BusinessRegist
    Created on : 2016-4-7, 13:34:34
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
        <title>商家注册</title>
        <!-- Bootstrap -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <%@include file="../include/top.jsp" %>

        <!--页首空留区域-->
        
        
        
         <!--注册表单区域-->
         
         
        
            <div class="row">
                <div class="col-md-12">
                     <img src="../img/huanying002.jpg" class="img-responsive center-block"/>
                    <h1>&nbsp</h1>
                    <div class="row">
                        <div class="col-md-3">
                            <img src="../img/menshen01.jpg" class="navbar-right"/>
                        </div>
                        <div class="col-md-6">
                            <form class="form-horizontal" action="/dinner/UserSer?action=businessRegist" method="post">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">用户名</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="username" id="inputEmail3" placeholder="请输入用户名">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-md-2 control-label">密码</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" name="userpwd" id="inputPassword3" placeholder="请输入密码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-md-2 control-label">确认密码</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" name="userpwdCon" id="inputPassword3" placeholder="请确认密码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-md-2 control-label">电话</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="usertel" id="inputPassword3" placeholder="请输入电话">
                                    </div>
                                </div>
                                <div class="form-group">
                                    
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block">注册</button>
                                        <button type="submit" class="btn btn-default btn-lg btn-block">重置</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-3">
                            <img src="../img/menshen02.jpg" />
                        </div>
                    </div>
                </div>
            </div>
         <h1>&nbsp</h1><h3>&nbsp</h3>
        <%@include file="../include/down.jsp" %>
    </body>
</html>
