<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VirtualBloodBank</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Times', serif;
    }
    .container{
        display: flex;
    }
    .logo{
        float: left;
    }
    .header{
        width: 1200px;
        background-color:  #a92020;
        color: white;
        text-shadow: 1px 1px rgb(62, 56, 56);
        text-align: center;
        padding: 30px 0;
    }
    .header h1 {
        margin: 0;
    }
    .nav {
        background-color: #a92020;
        padding: 8pt;
        height: 40vh;
        align-items: center;
        text-align: center;
        border: 1px solid white;
    }
    .nav a {
        text-decoration: none;
        color: white;
        margin: 0 10px;
        font-weight: 500;
    }
    .nav a:hover {
        color: #333;
        font-weight: 500;
        background-color: white;
        padding: 5px;
        border-radius: 5px;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="logo">
            <img src="image/img1.png" width="371px">
        </div>
        <div class="header">
            <h1>Virtual Blood Bank</h1>
        </div>
    </div>
    <div class="nav">
        <a href="welcome" target="body" class='active'>Home</a>
        <a href="register" target="body">Register</a>
        <a href="aboutus" target="body">About Us</a>
        <a href="search" target="body">Search Blood</a>
        <a href="bloodfact" target="body">Blood Donation Facts</a>
        <a href="help" target="body">Help Us</a>
    </div>
</body>
</html>
