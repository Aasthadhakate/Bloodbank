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
        <h2>Hospital | Edit Your Profile</h2>
        <div class="hospital">
            <form action="hospitaledit" id="form" method="post">
            <input type="hidden" name="userid" value="${hospital.userid}"/>
                <table>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" class="input" id="name" name="name" value="${hospital.name}" required></td>
                        <td><span class="error" id="nameerror"></span></td>
                    </tr>
                    <tr>
                        <td>Contact No.:</td>
                        <td><input type="number" class="input" id="contact" name="contact" value="${hospital.contact}" required></td>
                        <td><span class="error" id="conterror"></span></td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td><textarea id="address" name="address" rows="2" class="textarea" required>${hospital.address}</textarea></td>
                        <td><span class="error" id="adderror"></span></td>
                    </tr>
                    <tr>
                        <td>District:</td>
                        <td>
                            <select class="select" id="district" name="district" required>
                                <option value="Ahmednagar" ${hospital.district == 'Ahmednagar' ? 'selected' : ''}>Ahmednagar</option>
                            <option value="Akola" ${hospital.district == 'Akola' ? 'selected' : ''}>Akola</option>
                            <option value="Amravati" ${hospital.district == 'Amravati' ? 'selected' : ''}>Amravati</option>
                            <option value="Aurangabad" ${hospital.district == 'Aurangabad' ? 'selected' : ''}>Aurangabad</option>
                            <option value="Beed" ${hospital.district == 'Beed' ? 'selected' : ''}>Beed</option>
                            <option value="Buldhana" ${hospital.district == 'Buldhana' ? 'selected' : ''}>Buldhana</option>
                            <option value="Chandrapur" ${hospital.district == 'Chandrapur' ? 'selected' : ''}>Chandrapur</option>
                            <option value="Dhule" ${hospital.district == 'Dhule' ? 'selected' : ''}>Dhule</option>
                            <option value="Gadchiroli" ${hospital.district == 'Gadchiroli' ? 'selected' : ''}>Gadchiroli</option>
                            <option value="Gondia" ${hospital.district == 'Gondia' ? 'selected' : ''}>Gondia</option>
                            <option value="Hingoli" ${hospital.district == 'Hingoli' ? 'selected' : ''}>Hingoli</option>
                            <option value="Jalgaon"${hospital.district == 'Jalgaon' ? 'selected' : ''}>Jalgaon</option>
                            <option value="Jalna" ${hospital.district == 'Jalna' ? 'selected' : ''}>Jalna</option>
                            <option value="Kolhapur"${hospital.district == 'Kolhapur' ? 'selected' : ''}>Kolhapur</option>
                            <option value="Latur"${hospital.district == 'Latur' ? 'selected' : ''}>Latur</option>
                            <option value="Mumbai City"${hospital.district == 'Mumbai City' ? 'selected' : ''}>Mumbai City</option>
                            <option value="Mumbai Suburban" ${hospital.district == 'Mumbai Suburban' ? 'selected' : ''}>Mumbai Suburban</option>
                            <option value="Nagpur" ${hospital.district == 'Nagpur' ? 'selected' : ''}>Nagpur</option>
                            <option value="Nanded" ${hospital.district == 'Nanded' ? 'selected' : ''}>Nanded</option>
                            <option value="Nandurbar"${hospital.district == 'Nandurbar' ? 'selected' : ''}>Nandurbar</option>
                            <option value="Osmanabad"${hospital.district == 'Osmanabad' ? 'selected' : ''}>Osmanabad</option>
                            <option value="Palghar" ${hospital.district == 'Palghar' ? 'selected' : ''}>Palghar</option>
                            <option value="Parbhani"${hospital.district == 'Parbhani' ? 'selected' : ''}>Parbhani</option>
                            <option value="Pune"${hospital.district == 'Pune' ? 'selected' : ''}>Pune</option>
                            <option value="Raigad"${hospital.district == 'Raigad' ? 'selected' : ''}>Raigad</option>
                            <option value="Ratnagiri"${hospital.district == 'Ratnagiri' ? 'selected' : ''}>Ratnagiri</option>
                            <option value="Sangli"${hospital.district == 'Sangli' ? 'selected' : ''}>Sangli</option>
                            <option value="Satara"${hospital.district == 'Satara' ? 'selected' : ''}>Satara</option>
                            <option value="Sindhudurg"${hospital.district == 'Sindhudurg' ? 'selected' : ''}>Sindhudurg</option>
                            <option value="Solapur"${hospital.district == 'Solapur' ? 'selected' : ''}>Solapur</option>
                            <option value="Thane"${hospital.district == 'Thane' ? 'selected' : ''}>Thane</option>
                            <option value="Wardha"${hospital.district == 'Wardha' ? 'selected' : ''}>Wardha</option>
                            <option value="Washim"${hospital.district == 'Washim' ? 'selected' : ''}>Washim</option>
                            <option value="Yavatmal"${hospital.district == 'Yavatmal' ? 'selected' : ''}>Yavatmal</option>
                            </select>
                        </td>
                        <td><span class="error" id="disterror"></span></td>
                    </tr>
                    <tr>
                        <td>Name of MD:</td>
                        <td><input type="text" class="input" id="md" name="mdname" value="${hospital.mdname}" required></td>
                        <td><span class="error" id="mderror"></span></td>
                    </tr>
                    <tr>
                        <td>MD No.:</td>
                        <td><input type="text" class="input" id="mdno" name="mdnumber" value="${hospital.mdnumber}" required></td>
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

        var name = document.getElementById("name");
        var contact = document.getElementById("contact");
        var address = document.getElementById("address");
        var district = document.getElementById("district");
        var md = document.getElementById("mdname");
        var mdno = document.getElementById("mdnumber");

        var nameerror = document.getElementById("nameerror");
        var conterror = document.getElementById("conterror");
        var adderror = document.getElementById("adderror");
        var disterror = document.getElementById("disterror");
        var mderror = document.getElementById("mderror");
        var mdnoerror = document.getElementById("mdnoerror");

        function fun() {

            var namestr = /^[a-zA-Z ]+$/;
            var contactstr = /^[0-9]{10}$/;
            var addressstr = /^[a-zA-Z0-9\s,]+$/;
            var mdstr = /^[a-zA-Z ]+$/;
            var mdnostr = /^[0-9]{10}$/;

            var isValid = true;

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