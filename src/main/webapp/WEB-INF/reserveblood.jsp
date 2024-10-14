<%@page import="in.softronix.entity.bloodgroupCount"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reserve Blood</title>
    <style>
        body {
            font-family: 'Times', serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 160vh;
            margin: 0;
            background-color: #f5f5f5;
        }
        h2 {
            text-align: center;
            width: 100%;
            margin-bottom: 20px;
            color: #a92020;
        }
        .main-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin: auto;
        }
        .form-container, .table-container {
            margin: 10px;
            padding: 15px;
            border: 1px solid #ccc;
            background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container {
            width: 400px;
            height: 280px;
        }
        .form-container form {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .table-container {
            width: 550px;
        }
        .tab {
            width: 300px;
            margin: 10px auto;
            border-collapse: collapse;
        }
        .tab td {
            padding: 3px;
            text-align: left;
        }
        .forminput {
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
            margin-right: 10px;
        }
        .blood-group-table{
            width: 500px;
            margin: 10px auto;
        }
        .blood-group-table td {
            padding: 5px;
            border: 2px solid #ccc;
            text-align: center;
        }
        .head{
        	background-color:#a92020;
        	color:white;
        
        }
        .input {
            width: 80px;
            height: 8px;
            padding: 10px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <h2>Reserve Blood</h2>
    
    <div class="main-container">
        <!-- Form Container -->
        <div class="form-container">
            <form method="post" action="reserveblood">
                <table class="tab">
                    <tr>
                        <td>Hospital-id:</td>
                        <td><input type="text" class="forminput" id="hospital" name="hospitalid" required></td>
                    </tr>
                    <tr>
                        <td>Bloodbank-id:</td>
                        <td><input type="text" class="forminput" id="blood" name="bloodbankid" required></td>
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
                        <td>Number of bags to reserve:</td>
                        <td><input type="text" class="forminput" id="require" name="numberofrequire" required></td>
                    </tr>
                    <tr>
                        <td>Date:</td>
                        <td><input type="date" class="forminput" id="date" name="date" required></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <center>
                                <button id="submit" class="btn" type="submit">Reserve</button>
                            </center>
                        </td>
                    </tr>
                </table>
            </form>
        </div>

        <!-- Table Container for displaying blood group counts -->
        <div class="table-container">
            <table class="blood-group-table">
                <tr class="head">
                    <td><b>BloodGroup-RH</b></td>
                    <td><b>Available</b></td>
                    <td><b>Issued</b></td>
                    <td><b>Discarded</b></td>
                </tr>
                <%
                    // Retrieve the list of blood group counts from the session
                    List<bloodgroupCount> list = (List<bloodgroupCount>) session.getAttribute("hreserveBloodCounts");
                    if (list != null && !list.isEmpty()) {
                        for (bloodgroupCount bgcnt : list) {
                %>
                <tr>
                    <td><%= bgcnt.getBloodGroup() + " " + bgcnt.getRh() %></td>
                    <td><input class="input" type="text" value="<%= bgcnt.getCount() %>" readonly></td>
                    <td><input class="input" type="text" value="<%= bgcnt.getIssued() %>" readonly></td>
                    <td><input class="input" type="text" value="0" readonly></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="4">No data available</td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </div>
</body>
</html>
