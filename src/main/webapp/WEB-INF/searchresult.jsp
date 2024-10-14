<%@ page import="java.util.List" %>
<%@ page import="in.softronix.entity.DonorRegister" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
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
        .blood-group-table{
            width: 100%;
            margin: 10px auto;
            border-collapse: collapse;
        }
        .blood-group-table td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }
        .head{
        	background-color:#a92020;
        	color:white;
        
        }
        
    </style>
</head>
<body>
	<h2>Blood Availability</h2>
    <div class="container">
       <div class="table-container">
            <table class="blood-group-table">
            <tr class="head">
                    <td><b>Bloodbank Id</b></td>
                    <td><b>District</b></td>
                    <td><b>No of Packets</b></td>
                </tr>
            
            <% 
                String dist = (String)session.getAttribute("district");
                String bg = (String)session.getAttribute("bg");
                String rh = (String)session.getAttribute("rh");

                List<DonorRegister> list = (List<DonorRegister>)session.getAttribute("list");
                String bloodBankId = (String)session.getAttribute("list1");
                
                int count1 = 0;

                for (DonorRegister donor : list) {
                    if (donor.getBloodGroup().trim().equalsIgnoreCase(bg.trim()) && 
                        donor.getRh().trim().equalsIgnoreCase(rh.trim()) && 
                        donor.getDistrict().trim().equalsIgnoreCase(dist.trim())) {
                        count1++;
                    }
                }
            %>
            
            <tr>
                <td><%= bloodBankId %></td>
                <td><%= (count1 > 0) ? dist : "No data available" %></td>
                <td><%= count1 %></td>
            </tr> 
            
        	</table>
        </div>
    </div>
</body>
</html>
