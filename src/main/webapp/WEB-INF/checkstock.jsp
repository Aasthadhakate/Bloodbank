<%@page import="in.softronix.entity.bloodgroupCount"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="in.softronix.entity.DonorRegister" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CheckStock</title>
    <style>
        body {
            font-family: 'Times', serif;
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
        .table-container {
            margin: 10px;
            padding: 15px;
            border: 1px solid #ccc;
            background-image: linear-gradient(120deg, #fdfbfb 0%, #ebedee 100%);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            border: 2px solid #a92020;
            
        }
        .table-container {
            width: 550px;
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
    <h2>Blood CheckStock</h2>
    <div class="main-container">
        <div class="table-container">
            <table class="blood-group-table">
                <tr class="head">
                    <td><b>BloodGroup-RH</b></td>
                    <td><b>Available</b></td>
                    <td><b>Issued</b></td>
                    <td><b>Discarded</b></td>
                <%  
                    List<bloodgroupCount> list = (List<bloodgroupCount>) session.getAttribute("list"); 
                    if (list != null && !list.isEmpty()) {
                        for (bloodgroupCount bgcnt : list) {
                %>
                <tr>
                    <td><%= bgcnt.getBloodGroup() + " " + bgcnt.getRh() %></td>
                    <td><%= bgcnt.getCount() %></td>
                    <td><%= bgcnt.getIssued() %></td> 
                    <td>0</td> <!-- Add logic for discarded bags -->
                </tr>
                <% 
                        }
                    }
                %>
            </table>
        </div>
    </div>
</body>
</html>