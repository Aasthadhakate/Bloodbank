<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request Blood</title>
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
            height: 280px;
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
        <h2>Request Blood</h2>
        <div class="content">
            <form action="requestblood" method="post">
                <table>
                    <tr>
                        <td>Hospital-id:</td>
                        <td><input type="number" class="input" id="hospital" name="hospitalid" required></td>
                    </tr>
                    <tr>
                        <td>Bloodbank-id:</td>
                        <td><input type="number" class="input" id="blood" name="bloodbankid" required></td>
                    </tr>
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
                    </tr>
                    <tr>
                        <td>RH:</td>
                        <td class="flex-row">
                            <input type="radio" id="rhpositive" name="rh" value="+Ve" required>+Ve
                            <input type="radio" id="rhnegative" name="rh" value="-Ve" required>-Ve
                        </td>
                    </tr>
                    <tr>
                        <td>Number of require:</td>
                        <td><input type="number" class="input" id="require" name="numberofrequire" required></td>
                    </tr>
                    <tr>
                        <td>Date:</td>
                        <td><input type="date" class="input" id="date" name="date" required></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <center>
                                <button id="submit" class="btn" type="submit">Request</button>
                            </center>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>