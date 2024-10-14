<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
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
        .reset {
            width: 350px;
            margin: 10px auto;
            padding: 15px;
            padding-right: 25px;
            border: 1px solid #ccc;
            background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            height: 200px;
        }
        .reset form {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        table {
            width: 100%;
            margin: 10px auto;
            border-collapse: collapse;
        }
        td {
            padding: 10px;
            text-align: left;
        }
        input {
            width: 100%;
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
            display: block;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Reset Password</h2>
        <div class="reset">
            <form id="resetForm" action="reset" method="post">
                <table>
                    <tr>
                        <td>Password:</td>
                        <td>
                            <input type="password" id="password" name="password">
                            <span class="error" id="passwordError"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>Retype Password:</td>
                        <td>
                            <input type="password" id="retypePassword" name="retypepassword">
                            <span class="error" id="retypePasswordError"></span>
                        </td>
                    </tr>
                </table>
                <center><button type="button" class="btn" onclick="validateForm()">Save</button></center>
            </form>
        </div>
    </div>
    <script>
        function validateForm() {
            var password = document.getElementById('password');
            var retypePassword = document.getElementById('retypePassword');
            var passwordError = document.getElementById('passwordError');
            var retypePasswordError = document.getElementById('retypePasswordError');
            
            var valid = true;

            if (password.value.length < 8) {
                passwordError.innerHTML = "*Password must be at least 8 characters";
                valid = false;
            } else {
                passwordError.innerHTML = "";
            }

            if (retypePassword.value !== password.value) {
                retypePasswordError.innerHTML = "*Passwords do not match";
                valid = false;
            } else {
                retypePasswordError.innerHTML = "";
            }

            if (valid) {
                alert("Password successfully reset!");
                document.getElementById('resetForm').submit(); // Submit the form if valid
            }
        }
    </script>
</body>
</html>
