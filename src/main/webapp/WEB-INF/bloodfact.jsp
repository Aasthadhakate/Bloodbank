<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VirtualBloodBank | Blood Donation Facts</title>
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
            padding: 15px 0;
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
        header p {
            font-size: 18px;
            margin-top: 10px;
        }
        .container {
            max-width: 1200px;
            margin: 15px auto;
            padding: 0 20px;
        }
        .facts {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .facts .head1 {
            font-size: 28px;
            color: #a92020;
            margin-bottom: 20px;
            position: relative;
            text-align: center;
        }
        .facts .head2 {
            font-size: 28px;
            color: #a92020;
            margin-bottom: 20px;
            position: relative;
            text-align: center;
        }
        .facts p {
            font-size: 17px;
            line-height: 1.8;
            margin-bottom: 20px;
            text-align: justify;
        }
        .facts ul {
            list-style: none;
            padding: 0;
            margin-bottom: 30px;
        }
        .facts ul li {
            font-size: 17px;
            line-height: 1.8;
            margin-bottom: 15px;
            position: relative;
            padding-left: 35px;
            transition: color 0.3s ease, transform 0.3s ease;
        }
        .facts ul li::before {
            content: '💉';
            position: absolute;
            left: 0;
            top: 0;
            color: #a92020;
            font-size: 18px;
            transition: transform 0.3s ease, color 0.3s ease;
        }
        .facts ul li:hover::before {
            color: #b71111;
            transform: scale(1.2);
        }
        .facts ul li:hover {
            color: #a92020;
            transform: translateX(10px);
        }
        .fact-box {
            background-color: #fdf7f7;
            border-left: 5px solid #a92020;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            transition: box-shadow 0.3s ease, transform 0.3s ease;
        }
        .fact-box:hover {
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
            transform: translateY(-5px);
        }

        /* Hover Effects */
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
            background-color: #b71111;;
            transition: width 0.3s ease, left 0.3s ease;
        }
        header h1:hover::after {
            width: 36%;
            left: 32%;
        }

        .head1::after {
            content: "";
            position: absolute;
            bottom: -5px;
            left: 50%;
            width: 0;
            height: 5px;
            background-color: #b71111;
            transition: width 0.3s ease, left 0.3s ease;
        }
        .head1:hover {
            color: #b71111;
        }
        .head1:hover::after {
            width: 26%;
            left: 37%;
        }
        .head2::after {
            content: "";
            position: absolute;
            bottom: -5px;
            left: 50%;
            width: 0;
            height: 5px;
            background-color: #b71111;
            transition: width 0.3s ease, left 0.3s ease;
        }
        .head2:hover {
            color: #b71111;
        }
        .head2:hover::after {
            width: 40%;
            left: 30%;
        }

        /* Responsive Styling */
        @media (max-width: 768px) {
            header h1 {
                font-size: 28px;
            }
            .facts h2 {
                font-size: 24px;
            }
            .container {
                padding: 0 10px;
            }
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <h1>Blood Donation Facts</h1>
        <p>Learn more about the importance of donating blood and saving lives.</p>
    </header>

    <!-- Content Section -->
    <div class="container">
        <div class="facts">
            <h2 class="head1">Did You Know?</h2>
            <p>
                Blood donation is a crucial aspect of modern healthcare, and your contribution can make a huge difference in someone's life.
                Here are some facts and reasons why donating blood is so important.
            </p>

            <ul>
                <li>Every two seconds, someone in the world needs blood.</li>
                <li>A single donation can save up to three lives.</li>
                <li>The blood you donate can be separated into different components: red cells, plasma, and platelets.</li>
                <li>Blood donation helps ensure the availability of a safe and reliable supply of blood for those in need.</li>
                <li>Only 10% of eligible people donate blood annually, meaning there is always a need for more donors.</li>
            </ul>

            <div class="fact-box">
                <strong>Fact:</strong> People with O-negative blood type are known as universal donors because their blood can be given to anyone, regardless of the recipient's blood type.
            </div>

            <div class="fact-box">
                <strong>Fact:</strong> Donating blood is safe, simple, and takes less than an hour of your time, including registration and post-donation refreshments.
            </div>

            <div class="fact-box">
                <strong>Fact:</strong> After donating blood, your body works to replenish the lost fluids and cells, and within 24 hours, your blood volume is back to normal.
            </div>

            <h2 class="head2">Why Should You Donate?</h2>
            <p>
                Blood donation not only benefits the recipient but also contributes to the donor's well-being. Here are some reasons why donating blood is a noble act:
            </p>
            <ul>
                <li>It can help save lives in emergency situations, surgeries, and cancer treatments.</li>
                <li>Regular donations can reduce the risk of heart disease by lowering iron levels in the blood.</li>
                <li>You'll feel a sense of pride and accomplishment knowing you're helping others in need.</li>
                <li>Blood donation events can foster a sense of community and encourage others to give as well.</li>
                <li>It's a small, selfless act that has a big impact on society.</li>
            </ul>
        </div>
    </div>
</body>
</html>
