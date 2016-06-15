<%-- 
    Document   : newFood
    Created on : 2016-4-7, 13:42:48
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
        <title>新增商品</title>
        <!-- Bootstrap -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="../include/top.jsp" %>
        <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <!--页首空留区域-->

         

        <!--注册表单区域-->


        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
                    <img src="../img/xinzeng.jpg" style="width: 100%"/>
                    <h1>&nbsp;</h1>
                    <div class="row">
                        <div class="col-md-3">
                           
                        </div>
                        <div class="col-md-6">
                            <form class="form-horizontal" action="/dinner/FoodSer?action=businessNewFood" method="post">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-md-2 control-label">商品名称</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="foodname" id="inputEmail3" placeholder="请输入商品名称">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-md-2 control-label">商品价格</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="foodprice" id="inputPassword3" placeholder="请输入商品价格">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-md-2 control-label">商品图片</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="foodurl" id="inputPassword3" placeholder="请上传商品图片">
                                    </div>
                                </div>
                                
                                <div class="form-group">

                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary btn-lg btn-block">提交</button>
                                        <button type="submit" class="btn btn-default btn-lg btn-block">重置</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-3">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <h1>&nbsp;</h1><h1>&nbsp;</h1>
        <%@include file="../include/down.jsp" %>
    </body>
</html>
