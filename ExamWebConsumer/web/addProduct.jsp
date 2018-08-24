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
        <div class="container">
            <h1 class="title">Add Product</h1>
            <div class="row main">
                
                <div class="main-login main-center">
                    <form class="form-horizontal" method="POST" action="/Product">
                        <div class="form-group">
                            <label for="codedg" class="cols-sm-2 control-label">Name</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="name" />
                                </div>
                            </div>
                        </div>       
                        <div class="form-group">
                            <label for="passdg" class="cols-sm-2 control-label">Price</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <input type="number" class="form-control" name="price" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="passdg" class="cols-sm-2 control-label">Quantity</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <input type="number" class="form-control" name="quantity" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group ">
                            <input type="submit" class="btn btn-primary btn-lg btn-block login-button" value="Submit"/>
                        </div>
                        <div class="login-register">
                            <a href="index.jsp">Back</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>