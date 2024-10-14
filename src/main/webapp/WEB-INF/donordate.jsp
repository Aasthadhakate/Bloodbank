<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Date of Donation</title>
    <style>
        body{
            font-family: 'Times', serif;
        }
        .donate{
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .donate h2{
            text-align: center;
            color: #a92020;
        }
        .date{
            width: 350px;
            margin: 10px auto;
            padding: 15px;
            padding-right: 25px;
            border: 1px solid #ccc;
            background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            height: 235px;
        }
        .date form{
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        table {
            width: 300px;
            margin: 10px auto;
            border-collapse: collapse;
        }
        td{
            padding: 10px;
            text-align: left;
        }
        input{
            width: 100%;
            height: 8px;
            padding: 10px;
            border: 1px solid #ccc;
        }
        select {
            width: 110%;
            height: 30px;
            border: 1px solid #ccc;
        }
        .button{
            width: 100px;
            margin-top: 15px;
            background-color: #a92020;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 15px;
            padding: 5px;
            transition: 0.5s;
        }
        .button:hover{
            background-color: linear-gradient(to right, #ce2b33, #b63236, #bb3b3f, #b31b23);
            box-shadow: 0 5px 15px rgba(242, 97, 103, .4);
            transform: scale(1.06);
        }
    </style>
</head>
<body>
   <div class="donate">
        <h2>Blood Donated Date</h2>
        <div class="date">
            <form action="donordate" method="post">
                <table>
                    <tr>
                        <td>User-Id:</td>
                        <td><input type="text" name="userid" id="userid"></td>
                    </tr>
                    <tr>
                        <td>Date of Donation:</td>
                        <td><input type="date" name="dateOfdonate" id="date"></td>
                    </tr>
                    <tr>
                        <td>BloodBank-Id:</td>
                        <td><input type="number" id="bank" name="bloodbankid"></td>
                    </tr>
                </table>
                <center><button type="submit" class="button">Save</button></center>
            </form>
        </div>
   </div> 
</body>
</html>