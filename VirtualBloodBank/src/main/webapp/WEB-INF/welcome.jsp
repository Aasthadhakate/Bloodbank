<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BloodBank</title>
    <style>
        .imge img{
            width: 800px;
            height: 40vh;
            margin: 30px;
            box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.6); 
        }
        .bttn{
            margin: 100px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .bttn1{
            margin-right: 20px;
            background-color: #a92020;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 0px 2px 2px rgb(149, 58, 58);
            transition: 0.5s;
        }
        .bttn1 a{
            color: white;
            text-decoration: none;
            font-size: 20px;
        }
        .bttn1:hover{
            background-image: linear-gradient(to right, #ce2b33, #b63236, #bb3b3f, #b31b23);  
            box-shadow: 0 5px 15px rgba(242, 97, 103, .4);
            transform: scale(1.06);
        }
        .bttn2{
            margin-left: 20px;
            background-color: #a92020;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 0px 2px 2px rgb(149, 58, 58);
            transition: 0.5s;
        }
        .bttn2:hover{
            background-image: linear-gradient(to right, #ce2b33, #b63236, #bb3b3f, #b31b23);
            box-shadow: 0 5px 15px rgba(242, 97, 103, .4);
            transform: scale(1.06);
        }
        .bttn2 a{
            color: white;
            text-decoration: none;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <div class="imge">
        <img src="image/img5.jpeg">
    </div>
    <div class="bttn">
        <div class="bttn1">
            <a href="register" target="body">Register</a>
        </div>
        <div class="bttn2">
            <a href="login" target="body">Login</a>
        </div>
    </div>
</body>
</html>