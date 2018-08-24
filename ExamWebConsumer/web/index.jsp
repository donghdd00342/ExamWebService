<%-- 
    Document   : index
    Created on : Aug 24, 2018, 7:33:27 PM
    Author     : dongh
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>list Page</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
        <link href="css/main1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container w-75"  style="background-color: #eee;">
            <div class="panel-heading">
                <div class="panel-title text-center">
                    <h1 class="title1" align="center">List Product</h1>
                    <hr />
                </div>
            </div>
            <div>
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">NAME</th>
                            <th scope="col">PRICE</th>
                            <th scope="col">QUANTITY</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${lists}" var="item">
                            <tr>
                                <td>${item.id}</td>
                                <td>${item.name}</td>
                                <td>${item.price}</td>
                                <td>@${item.quantity}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="login-register">
                <a href="addProduct.jsp" class="btn btn-primary btn-lg btn-block login-button">Add Product</a>
            </div>
        </div>
    </body>
</html>