<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SearchBlood</title>
    <style>
        body {
            font-family: 'Times', serif;
            background-color: #f9f9f9;
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
            height: 170px;
            
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
        <h2>Search Blood</h2>
        <div class="content">
            <form  action="searchsave" method="get">
                <table>
                    <tr>
                        <td>Blood Group:</td>
                        <td>
                            <select class="select" id="bloodgroup" name="bloodGroup" required>
                                <option value="">Select Blood Group</option>
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="AB">AB</option>
                                <option value="O">O</option>
                            </select>
                        </td>
                        <td><span class="error" id="bloodgroupError"></span></td>
                    </tr>
                    <tr>
                        <td>RH:</td>
                        <td class="flex-row">
                            <input type="radio" id="rhpositive" name="rh" value="+Ve" required>+Ve
                            <input type="radio" id="rhnegative" name="rh" value="-Ve" required>-Ve
                        </td>
                        <td><span class="error" id="rhError"></span></td>
                    </tr>
                    <tr>
                        <td>District:</td>
                        <td>
                            <select class="select" id="district" name="district" required>
                                <option value="selectdistrict">Select District</option>
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
                                <option value="Mumbai_city">Mumbai City</option>
                                <option value="Mumbai_suburban">Mumbai Suburban</option>
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
                        <td><span class="error" id="districtError"></span></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <center>
                                <button id="submit" class="btn" type="submit">Search</button>
                            </center>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
