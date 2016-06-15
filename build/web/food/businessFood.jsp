<%-- 
    Document   : businessFood
    Created on : 2016-4-7, 17:24:49
    Author     : ice
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
            <link href="css/bootstrap.min.css" rel="stylesheet">
        </head>
        <body>
            
            <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>

            <%@include file="../include/top.jsp" %>
            
                <div class="row">
                   
                            <div class="col-md-1">
                               
                            </div>
                            <div class="col-md-10">
                                <img src="img/xuangou001.jpg"/>
                                <h1>&nbsp;</h1>
                                <table class="table table-striped">
                                    
                                    <%
                                        
                                        List list = (ArrayList)request.getAttribute("businessAllFood");
                                        
                                        for (int i = 0; i < list.size(); i++) {
                                            String str[] = (String[]) list.get(i);
                                            
                                    %>
                                    <tr>
                                        <td style="width: 30%">
                                            <img src="<%= str[4]%>"/>
                                        </td >
                                        <td style="width: 30%">
                                            <h3>&nbsp;</h3>
                                            <h1 class="text-center"><%= str[2]%></h1>
                                        </td>
                                        <td style="width: 20%">
                                            <h3>&nbsp;</h3>
                                            <h1 class="text-center"><%= str[3]%></h1>
                                        </td>
                                        <td>
                                            <h2>&nbsp;</h2>
                                            <a class="btn btn-primary btn-lg btn-block text-center " href="/dinner/FoodSer?action=buyFood&foodid=<%= str[0]%>&foodname=<%= str[2]%>&businessid=<%= str[1]%>" role="button">购买</a>
                                            
                                        </td>
                                    </tr>
                                    <%
                                        }
                                    %>

                                </table>

                            </div>
                            <div class="col-md-1">
                               
                            </div>
                        </div>
                    
        <h1>&nbsp;</h1>
            
        <%@include file="../include/down.jsp" %>
    </body>
</html>
