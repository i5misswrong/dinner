<%-- 
    Document   : newFooded
    Created on : 2016-4-7, 14:55:06
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
        <title>new food</title>
        <!-- Bootstrap -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="../include/top.jsp" %>
        <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>



        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">

                <h1>您已经成功添加了商品 接下来要</h1>
                <a class="btn btn-primary btn-lg btn-block" href="#" role="button">返回商家管理页面</a>
                <a class="btn btn-default btn-lg btn-block" href="newFood.jsp" role="button">继续添加</a>
            </div>
            <div class="col-md-1"></div>
        </div>
        <h1>&nbsp;</h1><h1>&nbsp;</h1><h1>&nbsp;</h1><h1>&nbsp;</h1><h1>&nbsp;</h1><h1>&nbsp;</h1><h1>&nbsp;</h1><h1>&nbsp;</h1>
        <%@include file="../include/down.jsp" %>
    </body>
</html>
