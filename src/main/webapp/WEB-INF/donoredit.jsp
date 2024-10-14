<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor</title>
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
        .content {
            width: 400px;
            margin: 10px auto;
            padding: 15px;
            padding-right: 25px;
            border: 1px solid #ccc;
            background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            height: 400px;
        }
        .content form {
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
            width: 113%;
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
        .flex-row {
            display: flex;
            align-items: center;
        }
        .flex-row input {
            margin-right: 8px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Donor | Edit Your Profile</h2>
        <div class="content">
            <form action="donoredit" method="post">
            <input type="hidden" name="userid" value="${donor.userid}"/>
                <table>
                    <tr>
						<td>Name:</td>
						<td><input class="input" type="text" id="fname" name="name" value="${donor.name}" required></td>
						<td><span class="error" id="fnameError"></span></td>
					</tr>
					<tr>
						<td>Date of Birth:</td>
						<td><input class="input" type="date" id="dob" name="dateOfBirth" value="${donor.dateOfBirth}" required></td>
						<td><span class="error" id="dobError"></span></td>
					</tr>
					<tr>
						<td>Contact no:</td>
						<td><input class="input" type="tel" id="contact" name="contactNo" value="${donor.contactNo}" required></td>
						<td><span class="error" id="contactError"></span></td>
					</tr>
					<tr>
						<td>Address:</td>
						<td><textarea id="address" name="address" rows="2" class="textarea" required>${donor.address}</textarea></td>
						<td><span class="error" id="addressError"></span></td>
					</tr>
					<tr>
						<td>District:</td>
						<td><select class="select" id="district" name="district" required>
							<option value="Ahmednagar" ${donor.district == 'Ahmednagar' ? 'selected' : ''}>Ahmednagar</option>
                            <option value="Akola" ${donor.district == 'Akola' ? 'selected' : ''}>Akola</option>
                            <option value="Amravati" ${donor.district == 'Amravati' ? 'selected' : ''}>Amravati</option>
                            <option value="Aurangabad" ${donor.district == 'Aurangabad' ? 'selected' : ''}>Aurangabad</option>
                            <option value="Beed" ${donor.district == 'Beed' ? 'selected' : ''}>Beed</option>
                            <option value="Buldhana" ${donor.district == 'Buldhana' ? 'selected' : ''}>Buldhana</option>
                            <option value="Chandrapur" ${donor.district == 'Chandrapur' ? 'selected' : ''}>Chandrapur</option>
                            <option value="Dhule" ${donor.district == 'Dhule' ? 'selected' : ''}>Dhule</option>
                            <option value="Gadchiroli" ${donor.district == 'Gadchiroli' ? 'selected' : ''}>Gadchiroli</option>
                            <option value="Gondia" ${donor.district == 'Gondia' ? 'selected' : ''}>Gondia</option>
                            <option value="Hingoli" ${donor.district == 'Hingoli' ? 'selected' : ''}>Hingoli</option>
                            <option value="Jalgaon"${donor.district == 'Jalgaon' ? 'selected' : ''}>Jalgaon</option>
                            <option value="Jalna" ${donor.district == 'Jalna' ? 'selected' : ''}>Jalna</option>
                            <option value="Kolhapur"${donor.district == 'Kolhapur' ? 'selected' : ''}>Kolhapur</option>
                            <option value="Latur"${donor.district == 'Latur' ? 'selected' : ''}>Latur</option>
                            <option value="Mumbai City"${donor.district == 'Mumbai City' ? 'selected' : ''}>Mumbai City</option>
                            <option value="Mumbai Suburban" ${donor.district == 'Mumbai Suburban' ? 'selected' : ''}>Mumbai Suburban</option>
                            <option value="Nagpur" ${donor.district == 'Nagpur' ? 'selected' : ''}>Nagpur</option>
                            <option value="Nanded" ${donor.district == 'Nanded' ? 'selected' : ''}>Nanded</option>
                            <option value="Nandurbar"${donor.district == 'Nandurbar' ? 'selected' : ''}>Nandurbar</option>
                            <option value="Osmanabad"${donor.district == 'Osmanabad' ? 'selected' : ''}>Osmanabad</option>
                            <option value="Palghar" ${donor.district == 'Palghar' ? 'selected' : ''}>Palghar</option>
                            <option value="Parbhani"${donor.district == 'Parbhani' ? 'selected' : ''}>Parbhani</option>
                            <option value="Pune"${donor.district == 'Pune' ? 'selected' : ''}>Pune</option>
                            <option value="Raigad"${donor.district == 'Raigad' ? 'selected' : ''}>Raigad</option>
                            <option value="Ratnagiri"${donor.district == 'Ratnagiri' ? 'selected' : ''}>Ratnagiri</option>
                            <option value="Sangli"${donor.district == 'Sangli' ? 'selected' : ''}>Sangli</option>
                            <option value="Satara"${donor.district == 'Satara' ? 'selected' : ''}>Satara</option>
                            <option value="Sindhudurg"${donor.district == 'Sindhudurg' ? 'selected' : ''}>Sindhudurg</option>
                            <option value="Solapur"${donor.district == 'Solapur' ? 'selected' : ''}>Solapur</option>
                            <option value="Thane"${donor.district == 'Thane' ? 'selected' : ''}>Thane</option>
                            <option value="Wardha"${donor.district == 'Wardha' ? 'selected' : ''}>Wardha</option>
                            <option value="Washim"${donor.district == 'Washim' ? 'selected' : ''}>Washim</option>
                            <option value="Yavatmal"${donor.district == 'Yavatmal' ? 'selected' : ''}>Yavatmal</option>
						</select></td>
						<td><span class="error" id="districtError"></span></td>
					</tr>
					<tr>
						<td>Gender:</td>
						<td class="flex-row">
						<input type="radio" name="gender" value="male" ${donor.gender == 'male' ? 'checked' : ''} required> Male
        				<input type="radio" name="gender" value="female" ${donor.gender == 'female' ? 'checked' : ''} required> Female</td>
						<td><span class="error" id="genderError"></span></td>
					</tr>
					<tr>
						<td>Blood Group:</td>
						<td><select class="select" id="bloodgroup" name="bloodGroup" required>
								<option value="selectblood">Select Blood Group</option>
								<option value="A ${donor.bloodGroup == 'A' ? 'selected' : ''}">A</option>
								<option value="B ${donor.bloodGroup == 'B' ? 'selected' : ''}">B</option>
								<option value="AB ${donor.bloodGroup == 'AB' ? 'selected' : ''}">AB</option>
								<option value="O ${donor.bloodGroup == 'O' ? 'selected' : ''}">O</option>
						</select></td>
						<td><span class="error" id="bloodgroupError"></span></td>
					</tr>
					<tr>
						<td>RH:</td>
						<td class="flex-row">
						<input type="radio" id="rhpositive"	name="rh" value="+Ve" ${donor.rh == '+Ve' ? 'checked' : ''} required>+Ve 
						<input type="radio"	id="rhnegative" name="rh" value="-Ve" ${donor.rh == '-Ve' ? 'checked' : ''} required>-Ve</td>
						<td><span class="error" id="rhError"></span></td>
					</tr>
					<tr>
						<td>Weight:</td>
						<td><input class="input" type="number" id="weight" name="weight" value="${donor.weight}" required></td>
						<td><span class="error" id="weightError"></span></td>
					</tr>
                    <tr>
                        <td colspan="3">
                            <center>
                                <button id="reset" class="btn" type="submit" onclick="fun()">UpdateProfile</button>
                                <button id="clear" class="btn" type="reset">Clear</button>
                            </center>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <script>
        var submit = document.getElementById("reset");
        var clear = document.getElementById("clear");
        var fname = document.getElementById("name");
        var dob = document.getElementById("dateOfBirth");
        var contact = document.getElementById("contactNo");
        var address = document.getElementById("address");
        var district = document.getElementById("district");
        var male = document.getElementById("male");
        var female = document.getElementById("female");
        var bloodgroup = document.getElementById("bloodGroup");
        var rhpositive = document.getElementById("rhpositive");
        var rhnegative = document.getElementById("rhnegative");
        var weight = document.getElementById("weight");

        var fnameError = document.getElementById("fnameError");
        var dobError = document.getElementById("dobError");
        var contactError = document.getElementById("contactError");
        var addressError = document.getElementById("addressError");
        var districtError = document.getElementById("districtError");
        var genderError = document.getElementById("genderError");
        var bloodgroupError = document.getElementById("bloodgroupError");
        var rhError = document.getElementById("rhError");
        var weightError = document.getElementById("weightError");

        function fun(){

            var fnamestr = /^[a-zA-Z ]+$/;
            var contactstr = /^[0-9]{10}$/;
            var addressstr = /^[a-zA-Z0-9\s,]+$/;
            var weightstr = /^[0-9]+$/;

            var isValid = true;

            if (fnamestr.test(fname.value)) {
                fnameError.innerHTML = "";
            } else {
                fnameError.innerHTML = "*Invalid";
                isValid = false;
            }

            if (dob.value != "") {
                dobError.innerHTML = "";
            } else {
                dobError.innerHTML = "*Required";
                isValid = false;
            }

            if (contactstr.test(contact.value)) {
                contactError.innerHTML = "";
            } else {
                contactError.innerHTML = "*Invalid";
                isValid = false;
            }

            if (addressstr.test(address.value)) {
                addressError.innerHTML = "";
            } else {
                addressError.innerHTML = "*Invalid";
                isValid = false;
            }

            if (district.value != "") {
                districtError.innerHTML = "";
            } else {
                districtError.innerHTML = "*Required";
                isValid = false;
            }

            if (male.checked || female.checked) {
                genderError.innerHTML = "";
            } else {
                genderError.innerHTML = "*Required";
                isValid = false;
            }

            if (bloodgroup.value != "") {
                bloodgroupError.innerHTML = "";
            } else {
                bloodgroupError.innerHTML = "*Required";
                isValid = false;
            }

            if (rhpositive.checked || rhnegative.checked) {
                rhError.innerHTML = "";
            } else {
                rhError.innerHTML = "*Required";
                isValid = false;
            }

            if (weightstr.test(weight.value)) {
                weightError.innerHTML = "";
            } else {
                weightError.innerHTML = "*Invalid";
                isValid = false;
            }

            if (isValid) {
                alert("Profile Updated Successfully");
            }
        };

        clear.addEventListener("click", function() {
            document.querySelector("form").reset();
            fnameError.innerHTML = "";
            dobError.innerHTML = "";
            contactError.innerHTML = "";
            addressError.innerHTML = "";
            districtError.innerHTML = "";
            genderError.innerHTML = "";
            bloodgroupError.innerHTML = "";
            rhError.innerHTML = "";
            weightError.innerHTML = "";
        });
    </script>
</body>
</html>
