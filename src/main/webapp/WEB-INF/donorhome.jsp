<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor</title>
</head>
<style>
	
    .imge img{
        width: 830px;
        height: 50vh;
        margin: 30px;
        box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.6); 
    }
    .content{
        display: flex;
        justify-content: center;
		font-size: 22px;
		font-weight: 600;
		color:#a92020;
		font-style: italic;
    }
    .button{
        display: flex;
        justify-content: center;
    }
    .bttn1{
        margin: 20px;
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
        background-color: linear-gradient(to right, #ce2b33, #b63236, #bb3b3f, #b31b23);  
        box-shadow: 0 5px 15px rgba(242, 97, 103, .4);
        transform: scale(1.06);
    }
</style>
<body>
    <div class="imge">
        <img src="./image/donor.jpg">
    </div>
    <div class="content">
    	"Donate blood and be the reason for someone's heartbeat."
    </div>
    <div class="button">
        <div class="bttn1">
            <a href="donorregis" target="body">Register</a>
        </div>
    </div>
</body>
</html>