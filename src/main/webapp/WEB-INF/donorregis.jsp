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
		height: 510px;
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
		<h2>Donor | Complete your registration</h2>
		<div class="content">
			<form action="savedonor" method="post">
				<table>
					<tr>
						<td>User-Id:</td>
						<td><input class="input" type="text" id="userid" name="userid" required></td>
						<td><span class="error" id="useridError"></span></td>
					</tr>
					<tr>
						<td>Name:</td>
						<td><input class="input" type="text" id="fname" name="name" required></td>
						<td><span class="error" id="fnameError"></span></td>
					</tr>
					<tr>
						<td>Date of Birth:</td>
						<td><input class="input" type="date" id="dob" name="dateOfBirth" required></td>
						<td><span class="error" id="dobError"></span></td>
					</tr>
					<tr>
						<td>Contact no:</td>
						<td><input class="input" type="tel" id="contact" name="contactNo" required></td>
						<td><span class="error" id="contactError"></span></td>
					</tr>
					<tr>
						<td>Address:</td>
						<td><textarea id="address" name="address" rows="2" class="textarea" required></textarea></td>
						<td><span class="error" id="addressError"></span></td>
					</tr>
					<tr>
						<td>District:</td>
						<td><select class="select" id="district" name="district" required>
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
						</select></td>
						<td><span class="error" id="districtError"></span></td>
					</tr>
					<tr>
						<td>Gender:</td>
						<td class="flex-row">
						<input type="radio" id="male" name="gender" value="male" required />Male 
						<input type="radio" id="female" name="gender" value="female" required />Female</td>
						<td><span class="error" id="genderError"></span></td>
					</tr>
					<tr>
						<td>Blood Group:</td>
						<td><select class="select" id="bloodgroup" name="bloodGroup" required>
								<option value="">Select Blood Group</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="AB">AB</option>
								<option value="O">O</option>
						</select></td>
						<td><span class="error" id="bloodgroupError"></span></td>
					</tr>
					<tr>
						<td>RH:</td>
						<td class="flex-row">
						<input type="radio" id="rhpositive"	name="rh" value="+Ve" required>+Ve 
						<input type="radio"	id="rhnegative" name="rh" value="-Ve" required>-Ve</td>
						<td><span class="error" id="rhError"></span></td>
					</tr>
					<tr>
						<td>Weight:</td>
						<td><input class="input" type="number" id="weight" name="weight" required></td>
						<td><span class="error" id="weightError"></span></td>
					</tr>
					<tr>
						<td>Last Date of Donation:</td>
						<td><input class="input" type="date" id="dod" name="lastDateOfDonation" required></td>
						<td><span class="error" id="dodError"></span></td>
					</tr>
					<tr>
						<td>Frequency:</td>
						<td><input class="input" type="text" id="frequency" name="frequency" required></td>
						<td><span class="error" id="frequencyError"></span></td>
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

		var userid = document.getElementById("userid");
		var fname = document.getElementById("fname");
		var dob = document.getElementById("dob");
		var contact = document.getElementById("contact");
		var address = document.getElementById("address");
		var district = document.getElementById("district");
		var male = document.getElementById("male");
		var female = document.getElementById("female");
		var bloodgroup = document.getElementById("bloodgroup");
		var rhpositive = document.getElementById("rhpositive");
		var rhnegative = document.getElementById("rhnegative");
		var weight = document.getElementById("weight");
		var dod = document.getElementById("dod");
		var frequency = document.getElementById("frequency");

		var useridError = document.getElementById("useridError");
		var fnameError = document.getElementById("fnameError");
		var dobError = document.getElementById("dobError");
		var contactError = document.getElementById("contactError");
		var addressError = document.getElementById("addressError");
		var districtError = document.getElementById("districtError");
		var genderError = document.getElementById("genderError");
		var bloodgroupError = document.getElementById("bloodgroupError");
		var rhError = document.getElementById("rhError");
		var weightError = document.getElementById("weightError");
		var dodError = document.getElementById("dodError");
		var frequencyError = document.getElementById("frequencyError");

		function fun() {
			var useridstr = /^[a-zA-Z0-9_]+$/;
			var fnamestr = /^[a-zA-Z ]+$/;
			var contactstr = /^[0-9]{10}$/;
			var addressstr = /^[a-zA-Z0-9\s,]+$/;
			var weightstr = /^[0-9]+$/;
			var frequencystr = /^[a-zA-Z0-9\s,]+$/;

			var isValid = true;

			if (useridstr.test(userid.value)) {
				useridError.innerHTML = "";
			} else {
				useridError.innerHTML = "*Invalid";
				isValid = false;
			}

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

			if (dod.value != "") {
				dodError.innerHTML = "";
			} else {
				dodError.innerHTML = "*Required";
				isValid = false;
			}

			if (frequencystr.test(frequency.value)) {
				frequencyError.innerHTML = "";
			} else {
				frequencyError.innerHTML = "*Invalid";
				isValid = false;
			}

			if (isValid) {
				alert("Registration Successful");
			}
		}

		clear.addEventListener("click", function() {
			document.querySelector("form").reset();
			useridError.innerHTML = "";
			fnameError.innerHTML = "";
			dobError.innerHTML = "";
			contactError.innerHTML = "";
			addressError.innerHTML = "";
			districtError.innerHTML = "";
			genderError.innerHTML = "";
			bloodgroupError.innerHTML = "";
			rhError.innerHTML = "";
			weightError.innerHTML = "";
			dodError.innerHTML = "";
			frequencyError.innerHTML = "";
		});
	</script>
</body>
</html>
