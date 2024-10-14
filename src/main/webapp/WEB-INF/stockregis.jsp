<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>StockManager</title>
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
	margin: 5px auto;
	padding: 10px;
	padding-right: 22px;
	border: 1px solid #ccc;
	background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	height: 270px;
}

.content form {
	display: flex;
	flex-direction: column;
	justify-content: center;
}

table {
	width: 300px;
	margin: 20px auto;
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
		<h2>Stock Manager | Complete your registration</h2>
		<div class="content">
			<form action="stockregis" method="post">
				<table>
					<tr>
						<td>User-Id:</td>
						<td><input class="input" type="text" id="userid"
							name="userid" required></td>
						<td><span class="error" id="useridError"></span></td>
					</tr>
					<tr>
						<td>Bloodbank-Id:</td>
						<td><input class="input" type="number" id="bloodbankid"
							name="bloodbankid" required></td>
						<td><span class="error" id="bloodbankidError"></span></td>
					</tr>
					<tr>
						<td>Name:</td>
						<td><input class="input" type="text" id="fname" name="name"
							required></td>
						<td><span class="error" id="fnameError"></span></td>
					</tr>
					<tr>
						<td>DOB:</td>
						<td><input class="input" type="date" id="dob" name="dob"
							required></td>
						<td><span class="error" id="dobError"></span></td>
					</tr>
					<tr>
						<td>Contact no:</td>
						<td><input class="input" type="tel" id="contact"
							name="contact" required></td>
						<td><span class="error" id="contactError"></span></td>
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
		var bloodbankid = document.getElementById("bloodbankid");
		var fname = document.getElementById("fname");
		var dob = document.getElementById("dob");
		var contact = document.getElementById("contact");

		
		var useridError = document.getElementById("useridError");
		var bloodbankidError = document.getElementById("bloodbankidError");
		var fnameError = document.getElementById("fnameError");
		var dobError = document.getElementById("dobError");
		var contactError = document.getElementById("contactError");

		function validateForm() {
			
			var useridstr = /^[a-zA-Z0-9_]+$/;
			var bloodbankstr = /^[0-9]{10}$/;
			var fnamestr = /^[a-zA-Z ]+$/;
			var contactstr = /^[0-9]{10}$/;

			var isValid = true;

			if (!useridstr.test(userid.value)) {
				useridError.innerText = "*Invalid";
				isValid = false;
			} else {
				useridError.innerText = "";
			}
			
			if (bloodbankid.value === "") {
				bloodbankidError.innerText = "*Required";
				isValid = false;
			} else {
				bloodbankidError.innerText = "";
			}

			if (!fnamestr.test(fname.value)) {
				fnameError.innerText = "*Invalid";
				isValid = false;
			} else {
				fnameError.innerText = "";
			}
			
			if (dob.value === "") {
				dobError.innerText = "*Required";
				isValid = false;
			} else {
				dobError.innerText = "";
			}

			if (!contactstr.test(contact.value)) {
				contactError.innerText = "*Invalid";
				isValid = false;
			} else {
				contactError.innerText = "";
			}

			if (isValid) {
				alert("Registration Successful");
			}
		}
		
		clear.addEventListener("click", function() {
            document.querySelector("form").reset();
            useridError.innerHTML = "";
            bloodbankidError.innerHTML = "";
            fnameError.innerHTML = "";
            dobError.innerHTML = "";
            contactError.innerHTML = "";
        });
	</script>
</body>
</html>

