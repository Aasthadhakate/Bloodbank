<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VirtualBloodBank | About Us</title>
    <style>
        body {
            font-family: 'Times', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }
        * {
            box-sizing: border-box;
        }
        header {
            padding: 20px 0;
            text-align: center;
            color: #a92020;
            position: relative;
        }
        header h1 {
            margin: 0;
            font-size: 32px;
            transition: color 0.3s ease;
            position: relative;
        }
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 0 20px;
        }
        .content {
            background-color: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: box-shadow 0.3s ease, transform 0.3s ease;
        }
        .content h2 {
            color: #a92020;
            font-size: 28px;
            text-align: center;
            margin-bottom: 25px;
            position: relative;
            transition: color 0.3s ease;
        }
        .content .head1 {
            color: #a92020;
            font-size: 28px;
            text-align: center;
            margin-bottom: 25px;
            position: relative;
            transition: color 0.3s ease;
        }
        .content p {
            font-size: 17px;
            line-height: 1.8;
            margin-bottom: 20px;
            text-align: justify;
        }
        .content ul {
            margin-left: 20px;
            list-style-type: none;
            padding: 0;
        }
        .content ul li {
            font-size: 17px;
            line-height: 1.8;
            margin-bottom: 10px;
            position: relative;
            transition: color 0.3s ease, padding-left 0.3s ease;
        }
        .content ul li::before {
            content: '✔';
            color: #a92020;
            position: absolute;
            left: -25px;
            transition: color 0.3s ease;
        }
        .content ul li:hover {
            color: #a92020;
            padding-left: 10px;
        }
        .content ul li:hover::before {
            color: #000;
        }
        header h1:hover {
            color: #b71111;
        }
        header h1::after {
            content: "";
            position: absolute;
            bottom: -5px;
            left: 50%;
            width: 0;
            height: 5px;
            background-color: #b71111;
            transition: width 0.3s ease, left 0.3s ease;
        }
        header h1:hover::after {
            width: 16%;
            left: 42%;
        }
        .content h2::after {
            content: "";
            position: absolute;
            bottom: -5px;
            left: 50%;
            width: 0;
            height: 5px;
            background-color: #b71111;
            transition: width 0.3s ease, left 0.3s ease;
                }
        .content h2:hover {
            color: #b71111;
        }
        .content h2:hover::after {
            width: 20%;
            left: 40%;
        }
        .content .head1::after {
            content: "";
            position: absolute;
            bottom: -5px;
            left: 50%;
            width: 0;
            height: 5px;
            background-color: #b71111;
            transition: width 0.3s ease, left 0.3s ease;
        }
        .content .head1:hover {
            color: #b71111;
        }
        .content .head1:hover::after {
            width: 24%;
            left: 38%;
        }

        /* Responsive Styling */
        @media (max-width: 768px) {
            header h1 {
                font-size: 28px;
            }
            .content h2 {
                font-size: 24px;
            }
            .container {
                padding: 0 10px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>About Us</h1>
    </header>
    <div class="container">
        <div class="content">
            <h2>Our Mission</h2>
            <p>
                At VirtualBloodBank, we are committed to ensuring the availability of safe and reliable blood for those in need. 
                Our mission is to connect blood donors, hospitals, blood banks, and patients through a unified, easy-to-use platform 
                that simplifies the donation and distribution process. We are dedicated to saving lives by facilitating timely donations 
                and blood transfusions.
            </p>

            <h2>Who We Are</h2>
            <p>
                Founded in 2024, VirtualBloodBank was established to solve the ongoing issue of blood shortages. Our platform bridges the 
                gap between blood donors and patients in urgent need of blood. By partnering with hospitals, blood banks, and healthcare providers, 
                we ensure that every donated unit of blood is safely distributed where it is needed most.
            </p>

            <h2>Our Services</h2>
            <p>
                We offer a range of services to make blood donation and distribution more efficient:
            </p>
            <ul>
                <li>Connecting blood donors with nearby blood banks and hospitals.</li>
                <li>Providing real-time information on blood availability.</li>
                <li>Enabling online blood donation appointments for convenience.</li>
                <li>Ensuring safe transportation and storage of blood products.</li>
                <li>Supporting hospitals with urgent blood requests for emergencies.</li>
            </ul>

            <h2 class="head1">Why Choose Us</h2>
            <p>
                VirtualBloodBank is dedicated to leveraging technology to create a seamless experience for both donors and healthcare providers. 
                Our innovative platform simplifies the blood donation process, making it easier than ever to give blood and save lives. 
                Join us in making a difference in the world by supporting life-saving donations through VirtualBloodBank.
            </p>
        </div>
    </div>

</body>
</html>
