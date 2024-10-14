<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,in.softronix.entity.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>History</title>
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
        .container {
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
            width: 80%;
        }
        .history{
           	width: 100%;
            margin: 10px auto;
            border-collapse: collapse;
        }
        .history td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }
        .head{
        	background-color:#a92020;
        	color:white;
        	font-weight:bold;
        
        }
    </style>
</head>
<body>
<% List<DonorDate> list=(List)request.getSession().getAttribute("list"); %>

	<h2>Blood Donated Date</h2>
    <div class="container">
    	<div class="table-container">
    		<form action="donorhistory" method="post">
     			<input type="hidden" name="userid" value="${userId}" />
        		<table class="history">
	                <tr class="head">
	                    <td>Last Donated Date</td>
	                    <td>BloodBank ID</td>
	                </tr>
		            <tr>
		                <td><%=list.get(0).getDateOfdonate() %></td>
		                <td><%=list.get(0).getBloodbankid() %></td>
		       	    </tr>   
		        </table>
        	</form>
    	</div>
    </div>
</body>
</html>
