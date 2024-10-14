<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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
	margin: 3px auto;
	padding: 10px;
	padding-right: 22px;
	border: 1px solid #ccc;
	background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	height: 650px;
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
	font-size: 14px;
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
		<h2>BloodBank | Complete your registration</h2>
		<div class="content">
			<form action="bloodregis" method="post">
				<table>
					<tr>
						<td>User-Id:</td>
						<td><input class="input" type="text" id="userid"
							name="userid" required></td>
						<td><span class="error" id="useridError"></span></td>
					</tr>
					<tr>
						<td>Name:</td>
						<td><input class="input" type="text" id="fname" name="name"
							required></td>
						<td><span class="error" id="fnameError"></span></td>
					</tr>
					<tr>
						<td>Contact no:</td>
						<td><input class="input" type="tel" id="contact"
							name="contact" required></td>
						<td><span class="error" id="contactError"></span></td>
					</tr>
					<tr>
						<td>Address:</td>
						<td><textarea id="address" name="address" rows="2"
								class="textarea" required></textarea></td>
						<td><span class="error" id="addressError"></span></td>
					</tr>
					<tr>
						<td>District:</td>
						<td><select class="select" id="district" name="district"
							required>
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
						<td>Name of Incharger:</td>
						<td><input type="text" name="nameofincharge" id="incharge"
							class="input"></td>
						<td><span class="error" id="inchargeError"></span></td>
					</tr>
					<tr>
						<td>Incharger Phone No.:</td>
						<td><input type="number" name="inchargerphone" id="phone"
							class="input"></td>
						<td><span class="error" id="phoneError"></span></td>
					</tr>
					<tr>
						<td>Blood Component Separation Facility:</td>
						<td class="flex-row"><input type="radio" id="yes"
							name="bloodseparationfacility" value="yes" required />Yes <input
							type="radio" id="no" name="bloodseparationfacility" value="no"
							required />No</td>
						<td><span class="error" id="chkError"></span></td>
					</tr>
					<tr>
						<td>Attached To Any Storage Unit:</td>
						<td class="flex-row"><input type="radio" id="yes1"
							name="attachedstorageunit" value="yes" required />Yes <input
							type="radio" id="no1" name="attachedstorageunit" value="no"
							required />No</td>
						<td><span class="error" id="chk1Error"></span></td>
					</tr>
					<tr>
						<td>License No.:</td>
						<td><input type="number" name="licenseno" id="lic"
							class="input"></td>
						<td><span class="error" id="licError"></span></td>
					</tr>
					<tr>
						<td>License Status:</td>
						<td class="flex-row"><input type="radio" id="valid"
							name="licensestatus" value="valid" required />Valid <input
							type="radio" id="invalid" name="licensestatus" value="invalid"
							required />Not Valid</td>
						<td><span class="error" id="validError"></span></td>
					</tr>
					<tr>
						<td>Validity Upto:</td>
						<td><input type="date" id="validity" name="validityupto"
							class="input"></td>
						<td><span class="error" id="validityError"></span></td>
					</tr>
					<tr>
						<td>Reporting Period:</td>
						<td><input class="input" type="text" id="report"
							name="reportingperiod" required></td>
						<td><span class="error" id="reportError"></span></td>
					</tr>
					<tr>
						<td>Supported by NACO:</td>
						<td class="flex-row"><input type="radio" id="yes2"
							name="supportbynaco" value="yes" required>Yes <input
							type="radio" id="no2" name="supportbynaco" value="no" required>No
						</td>
						<td><span class="error" id="checkError"></span></td>
					</tr>
					<tr>
						<td colspan="3">
							<center>
								<button id="submit" class="btn" type="submit" onclick="validateForm()">Confirm</button>
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
		var contact = document.getElementById("contact");
		var address = document.getElementById("address");
		var district = document.getElementById("district");
		var incharge = document.getElementById("incharge");
		var phone = document.getElementById("phone");
		var chkYes = document.getElementById("yes");
		var chkNo = document.getElementById("no");
		var chkYes1 = document.getElementById("yes1");
		var chkNo1 = document.getElementById("no1");
		var lic = document.getElementById("lic");
		var valid = document.getElementById("valid");
		var invalid = document.getElementById("invalid");
		var validity = document.getElementById("validity");
		var report = document.getElementById("report");
		var yes2 = document.getElementById("yes2");
		var no2 = document.getElementById("no2");

		
		var useridError = document.getElementById("useridError");
		var fnameError = document.getElementById("fnameError");
		var contactError = document.getElementById("contactError");
		var addressError = document.getElementById("addressError");
		var districtError = document.getElementById("districtError");
		var inchargeError = document.getElementById("inchargeError");
		var phoneError = document.getElementById("phoneError");
		var chkError = document.getElementById("chkError");
		var chk1Error = document.getElementById("chk1Error");
		var licError = document.getElementById("licError");
		var validError = document.getElementById("validError");
		var validityError = document.getElementById("validityError");
		var reportError = document.getElementById("reportError");
		var checkError = document.getElementById("checkError");

		function validateForm() {
			
			var useridstr = /^[a-zA-Z0-9_]+$/;
			var fnamestr = /^[a-zA-Z ]+$/;
			var contactstr = /^[0-9]{10}$/;
			var addressstr = /^[a-zA-Z0-9\s,]+$/;

			var isValid = true;

			if (!useridstr.test(userid.value)) {
				useridError.innerText = "*Invalid";
				isValid = false;
			} else {
				useridError.innerText = "";
			}

			if (!fnamestr.test(fname.value)) {
				fnameError.innerText = "*Invalid";
				isValid = false;
			} else {
				fnameError.innerText = "";
			}

			if (!contactstr.test(contact.value)) {
				contactError.innerText = "*Invalid";
				isValid = false;
			} else {
				contactError.innerText = "";
			}

			if (!addressstr.test(address.value)) {
				addressError.innerText = "*Required";
				isValid = false;
			} else {
				addressError.innerText = "";
			}

			if (district.value === "select") {
				districtError.innerText = "*Required";
				isValid = false;
			} else {
				districtError.innerText = "";
			}

			if (incharge.value === "") {
				inchargeError.innerText = "*Required";
				isValid = false;
			} else {
				inchargeError.innerText = "";
			}

			if (phone.value === "") {
				phoneError.innerText = "*Required";
				isValid = false;
			} else {
				phoneError.innerText = "";
			}

			if (!chkYes.checked && !chkNo.checked) {
				chkError.innerText = "*Required";
				isValid = false;
			} else {
				chkError.innerText = "";
			}

			if (!chkYes1.checked && !chkNo1.checked) {
				chk1Error.innerText = "*Required";
				isValid = false;
			} else {
				chk1Error.innerText = "";
			}

			if (lic.value === "") {
				licError.innerText = "*Required";
				isValid = false;
			} else {
				licError.innerText = "";
			}

			if (!valid.checked && !invalid.checked) {
				validError.innerText = "*Required";
				isValid = false;
			} else {
				validError.innerText = "";
			}

			if (validity.value === "") {
				validityError.innerText = "*Required";
				isValid = false;
			} else {
				validityError.innerText = "";
			}

			if (report.value === "") {
				reportError.innerText = "*Required";
				isValid = false;
			} else {
				reportError.innerText = "";
			}

			if (!yes2.checked && !no2.checked) {
				checkError.innerText = "*Required";
				isValid = false;
			} else {
				checkError.innerText = "";
			}

			if (isValid) {
				alert("Registration Successful");
			}
		}
		
		clear.addEventListener("click", function() {
            document.querySelector("form").reset();
            useridError.innerHTML = "";
            fnameError.innerHTML = "";
            contactError.innerHTML = "";
            addressError.innerHTML = "";
            districtError.innerHTML = "";
            inchargeError.innerHTML = "";
            phoneError.innerHTML = "";
            chkError.innerHTML = "";
            chk1Error.innerHTML = "";
            licError.innerHTML = "";
            validError.innerHTML = "";
            validityError.innerHTML = "";
            reportError.innerHTML = "";
            checkError.innerHTML = "";
        });
	</script>
</body>
</html>

