<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital</title>
    <style>
        body {
            font-family: 'Times', serif;
        }
        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .container h2 {
            text-align: center;
            color: #a92020;
        }
        .hospital {
            width: 400px;
            margin: 10px auto;
            padding: 15px;
            padding-right: 25px;
            border: 1px solid #ccc;
            background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            height: 120px;
        }
        .hospital form {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        table {
            width: 300px;
            margin: 10px auto;
            border-collapse: collapse;
        }
        td {
            padding: 3px;
            text-align: left;
        }
        input {
            width: 100%;
            height: 8px;
            padding: 10px;
            border: 1px solid #ccc;
        }
        .btn {
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
        .btn:hover {
            background-color: linear-gradient(to right, #ce2b33, #b63236, #bb3b3f, #b31b23);
            box-shadow: 0 5px 15px rgba(242, 97, 103, .4);
            transform: scale(1.06);
        }
        .error {
            color: red;
            font-size: 12px;
            padding-left: 17px;
        }
        
    </style>
</head>
<body>
    <div class="container">
        <h2>Please Enter Your User-Id</h2>
        <div class="hospital">
            <form action="heditpro" method="post">
                <table>
                    <tr>
                        <td>User-Id:</td>
                        <td><input type="text" name="userid" id="email" required></td>
                        <td><span class="error" id="useridError"></span></td>
                    </tr>
                </table>
                <center><button type="submit" class="btn" onclick="fun()">Edit</button></center>
            </form>
        </div>
    </div>
    <script>
        var userid = document.getElementById("email");
        function fun(){
            var email = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

			if (email.test(userid.value)) {
				useridError.innerHTML = "";
			} else {
				useridError.innerHTML = "*Invalid";
				return false;
			}
        }
    </script>
</body>
</html>