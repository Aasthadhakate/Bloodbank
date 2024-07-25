<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BloodBank</title>
    <style>
        body{
            font-family: 'Times', serif;
        }
        .container{
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .container h2{
            text-align: center;
        }
        .login{
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
        .login form{
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .tab table {
            width: 300px;
            margin: 10px auto;
            border-collapse: collapse;
        }
        .tab td{
            padding: 10px;
            text-align: left;
        }
        .tab input{
            width: 100%;
            height: 8px;
            padding: 10px;
            border: 1px solid #ccc;
        }
        .tab select {
            width: 110%;
            height: 30px;
            border: 1px solid #ccc;
        }
        .btn{
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
        .btn:hover{
            background-image: linear-gradient(to right, #ce2b33, #b63236, #bb3b3f, #b31b23);
            box-shadow: 0 5px 15px rgba(242, 97, 103, .4);
            transform: scale(1.06);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>BloodBank | Login Form</h2>
        <div class="login">
            <form id="form" class="form" action="save" onsubmit="return validateForm()">
                <table class="tab">
                  <tr>
                    <td>User-id:</td>
                    <td><input type="email" id="email" name="email"></td>
                  </tr>
                  <tr>
                    <td>Password:</td>
                    <td><input type="password" id="password" name="password"></td>
                  </tr>
                  <tr>
                    <td>Role:</td>
                    <td><select id="role" name="role">
                        <option value="select"selected>Select Role</option>
                        <option value="donor" selected>Donor</option>
                        <option value="bloodbank">Blood Bank</option>
                        <option value="stockmanager">Stock Manager</option>
                        <option value="hospital">Hospital</option>
                      </select></td>
                  </tr>
                </table>
                <center><button type="submit" class="btn">Login</button></center>
              </form>         
        </div>
    </div>
    <script>
        function validateMail(email) {
            const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return re.test(email);
        }

        function validatePas(password){
            const pas = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@.#$!%*?&^])[A-Za-z\d@.#$!%*?&]{8,15}$/;
            return pas.test(password);
        }

        function validateForm() {
            const emailInput = document.getElementById('email');
            const passwordInput = document.getElementById('password');
            const repasswordInput = document.getElementById('repassword');

            let isValid = true;

            emailInput.classList.remove('error');
            passwordInput.classList.remove('error');

            if (!validateMail(emailInput.value)) {
                alert('Invalid email address.');
                emailInput.classList.add('error');
                isValid = false;
            }

            if (!validatePas(passwordInput.value)) {
                alert('Password must be at least 8 characters long, it must include lower and upper case characters and must include at least one number or symbol');
                passwordInput.classList.add('error');
                isValid = false;
            }

            if (isValid) {
                alert('Login successful!');
            }

            return isValid;
        }
    </script>
</body>
</html>