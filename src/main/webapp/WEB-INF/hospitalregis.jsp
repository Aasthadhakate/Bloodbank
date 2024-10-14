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
        .contain{
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .contain h2 {
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
            height: 350px;
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
        .input {
            width: 100%;
            height: 8px;
            padding: 10px;
            border: 1px solid #ccc;
        }
        .select {
            width: 111%;
            height: 30px;
            padding: 5px;
            border: 1px solid #ccc;
        }
        .textarea {
            width: 109%;
            border: 1px solid #ccc;
            font-family: 'Times', serif;
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
    <div class="contain">
        <h2>Hospital | Complete Your Registration</h2>
        <div class="hospital">
            <form action="hospitalregis" id="form" method="post">
                <table>
                    <tr>
                        <td>User-id:</td>
                        <td><input type="text" class="input" id="user" name="userid" required></td>
                        <td><span class="error" id="usererror"></span></td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" class="input" id="name" name="name" required></td>
                        <td><span class="error" id="nameerror"></span></td>
                    </tr>
                    <tr>
                        <td>Contact No.:</td>
                        <td><input type="number" class="input" id="contact" name="contact" required></td>
                        <td><span class="error" id="conterror"></span></td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td><textarea id="address" name="address" rows="2" class="textarea" required></textarea></td>
                        <td><span class="error" id="adderror"></span></td>
                    </tr>
                    <tr>
                        <td>District:</td>
                        <td>
                            <select class="select" id="district" name="district" required>
                                <option value="select">Select District</option>
								<option value="Ahmednagar">Ahmednagar</option>
								<option value="Akola">Akola</option>
								<option value="Amravati">Amravati</option>
								<option value="Aurangabad">Aurangabad</option>
								<option value="Beed">Beed</option>
								<option value="Bhandara">Bhandara</option>
								<option value="Buldhana">Buldhana</option>
								<option value="Chandrapur">Chandrapur</option>
								<option value="Dhule">Dhule</option>
								<option value="Gadchiroli">Gadchiroli</option>
								<option value="Gondia">Gondia</option>
								<option value="Hingoli">Hingoli</option>
								<option value="Jalgaon">Jalgaon</option>
								<option value="Jalna">Jalna</option>
								<option value="Kolhapur">Kolhapur</option>
								<option value="Latur">Latur</option>
								<option value="Mumbai City">Mumbai City</option>
								<option value="Mumbai Suburban">Mumbai Suburban</option>
								<option value="Nagpur">Nagpur</option>
								<option value="Nanded">Nanded</option>
								<option value="Nandurbar">Nandurbar</option>
								<option value="Nashik">Nashik</option>
								<option value="Osmanabad">Osmanabad</option>
								<option value="Palghar">Palghar</option>
								<option value="Parbhani">Parbhani</option>
								<option value="Pune">Pune</option>
								<option value="Raigad">Raigad</option>
								<option value="Ratnagiri">Ratnagiri</option>
								<option value="Sangli">Sangli</option>
								<option value="Satara">Satara</option>
								<option value="Sindhudurg">Sindhudurg</option>
								<option value="Solapur">Solapur</option>
								<option value="Thane">Thane</option>
								<option value="Wardha">Wardha</option>
								<option value="Washim">Washim</option>
								<option value="Yavatmal">Yavatmal</option>
                            </select>
                        </td>
                        <td><span class="error" id="disterror"></span></td>
                    </tr>
                    <tr>
                        <td>Name of MD:</td>
                        <td><input type="text" class="input" id="md" name="mdname" required></td>
                        <td><span class="error" id="mderror"></span></td>
                    </tr>
                    <tr>
                        <td>MD No.:</td>
                        <td><input type="text" class="input" id="mdno" name="mdnumber" required></td>
                        <td><span class="error" id="mdnoerror"></span></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <center>
                                <button id="submit" class="btn" type="submit" onclick="fun()">Confirm</button>
								<button id="clear" class="btn" type="reset">Clear</button>
                            </center>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div> 
    <script>
        var submit = document.getElementById("submit");
        var clear = document.getElementById("clear");

        var user = document.getElementById("userid");
        var name = document.getElementById("name");
        var contact = document.getElementById("contact");
        var address = document.getElementById("address");
        var district = document.getElementById("district");
        var md = document.getElementById("mdname");
        var mdno = document.getElementById("mdnumber");

        var usererror = document.getElementById("usererror");
        var nameerror = document.getElementById("nameerror");
        var conterror = document.getElementById("conterror");
        var adderror = document.getElementById("adderror");
        var disterror = document.getElementById("disterror");
        var mderror = document.getElementById("mderror");
        var mdnoerror = document.getElementById("mdnoerror");

        function fun() {

            var userstr = /^[a-zA-Z0-9_]+$/;
            var namestr = /^[a-zA-Z ]+$/;
            var contactstr = /^[0-9]{10}$/;
            var addressstr = /^[a-zA-Z0-9\s,]+$/;
            var mdstr = /^[a-zA-Z ]+$/;
            var mdnostr = /^[0-9]{10}$/;

            var isValid = true;

            if (userstr.test(userid.value)) {
                usererror.innerHTML = "";
            } else {
                usererror.innerHTML = "*Invalid";
                isValid = false;
            }

            if (namestr.test(name.value)){
                nameerror.innerHTML = "";
            } else {
                nameerror.innerHTML = "*Invalid";
                isValid = false;
            }

            if (contactstr.test(contact.value)) {
                conterror.innerHTML = "";
            } else {
                conterror.innerHTML = "*Invalid";
                isValid = false;
            }

            if (addressstr.test(address.value)) {
                adderror.innerHTML = "";
            } else {
                adderror.innerHTML = "*Invalid";
                isValid = false;
            }

            if (district.value != "") {
                disterror.innerHTML = "";
            } else {
                disterror.innerHTML = "*Required";
                isValid = false;
            }

            if (mdstr.test(mdname.value)){
                mderror.innerHTML = "";
            }
            else {
                mderror.innerHTML = "*Invalid";
                isValid = false;
            }

            if (mdstr.test(mdnumber.value)){
                mdnoerror.innerHTML = "";
            }
            else {
                mdnoerror.innerHTML = "*Invalid";
                isValid = false;
            }


            if (isValid) {
                alert("Registration Successful");
            }
        }

        clear.addEventListener("click", function() {
            document.querySelector("form").reset();
            usererror.innerHTML = "";
            nameerror.innerHTML = "";
            conterror.innerHTML = "";
            adderror.innerHTML = "";
            disterror.innerHTML = "";
            mderror.innerHTML = "";
            mdnoerror.innerHTML = "";
        });
    </script>
</body>
</html>