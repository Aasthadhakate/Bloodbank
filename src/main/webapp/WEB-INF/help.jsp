<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help Us - Virtual Blood Bank</title>
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
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 0 20px;
        }
        /* HEADER SECTION */
        header {
            padding: 20px 0;
            padding-top: 0;
            padding-bottom: 30px;
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
            width: 15%;
            left: 42%;
        }

        /* HELP US SECTION */
        .help-us {
            background-color: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }
        .help-us h2 {
            color: #a92020;
            font-size: 28px;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 25px;
            position: relative;
            transition: color 0.3s ease;
        }
        .help-us h2::after {
            content: "";
            position: absolute;
            bottom: -5px;
            left: 50%;
            width: 0;
            height: 5px;
            background-color: #b71111;
            transition: width 0.3s ease, left 0.3s ease;
        }
        .help-us h2:hover {
            color: #b71111;
        }
        .help-us h2:hover::after {
            width: 35%;
            left: 32%;
        }

        .card-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 20px;
        }

        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            flex: 1;
            min-width: 200px;
            max-width: 30%;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
        }

        .card-icon {
            font-size: 50px;
            margin-bottom: 15px;
            color: #a92020;
        }

        .card p {
            font-size: 18px;
            line-height: 1.8;
            margin-bottom: 10px;
        }

        /* Bullet Points */
        .card ul {
            text-align: left;
            margin-top: 10px;
            padding-left: 20px;
            font-size: 16px;
            color: #666;
        }

        .short-para {
            margin-top: 20px;
            text-align: center;
            font-size: 18px;
            color: #666;
            line-height: 1.6;
        }

        /* CONTACT US SECTION */
        .contact-us {
            display: flex;
            justify-content: space-between;
            margin-top: 50px;
            background-color: #ffffff;
            padding: 40px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .contact-us-info {
            flex: 1;
            padding-right: 20px;
        }
        .contact-us-info .info-block {
            display: flex;
            align-items: center;
            background-color: #f4ecec;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
        }
        .contact-us-info .info-block img {
            margin-right: 15px;
        }
        .contact-us-info .info-block h4 {
            font-size: 18px;
            color: #333;
        }
        .contact-us-info .info-block p {
            margin: 5px 0 0;
            font-size: 15px;
            color: #666;
        }

        .contact-form {
            flex: 1;
            background-image: linear-gradient(135deg, #feada6 10%, #f5efef 100%);
            padding: 40px;
            padding-top: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        .contact-form h3 {
            font-size: 30px;
            color: #333;
        }
        .contact-form input{
        	width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            font-family: 'Times', sans-serif;
            border-radius: 15px;
        }
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            font-family: 'Times', sans-serif;
            border: 1px solid #ccc;
            border-radius: 15px;
        }
        .button{
            padding: 15px;
            width: 60%;
            background-color: #b71111;
            color: white;
            border: none;
            border-radius: 30px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
        }
        .button:hover{
            background-image: linear-gradient(to right, #ce2b33, #b63236, #bb3b3f, #b31b23);
            box-shadow: 0 5px 15px rgba(242, 97, 103, .4);
            transform: scale(1.06);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .contact-us {
                flex-direction: column;
            }
            .contact-us-info, .contact-form {
                width: 100%;
                margin-bottom: 20px;
                padding-right: 0;
            }
            .card-container {
                flex-direction: column;
            }
            .card {
                max-width: 100%;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <!-- HEADER SECTION -->
        <header>
            <h1>Help Us</h1>
        </header>

        <!-- HELP US SECTION -->
        <div class="help-us">
            <h2>How You Can Help Us</h2>
            <div class="card-container">
                <div class="card">
                    <div class="card-icon">🩸</div>
                    <p>Donate Blood</p>
                    <ul>
                        <li>Help save lives by donating regularly.</li>
                        <li>Join local blood drives.</li>
                        <li>Encourage others to donate blood.</li>
                    </ul>
                </div>
                <div class="card">
                    <div class="card-icon">👐</div>
                    <p>Volunteer</p>
                    <ul>
                        <li>Support blood donation events.</li>
                        <li>Help organize local awareness campaigns.</li>
                        <li>Contribute time to our blood bank operations.</li>
                    </ul>
                </div>
                <div class="card">
                    <div class="card-icon">💌</div>
                    <p>Spread Awareness</p>
                    <ul>
                        <li>Share blood donation information on social media.</li>
                        <li>Inform friends and family about the importance of donating blood.</li>
                        <li>Participate in local awareness events.</li>
                    </ul>
                </div>
                <div class="card">
                    <div class="card-icon">🧑‍🤝‍🧑</div>
                    <p>Be an Ambassador</p>
                    <ul>
                        <li>Represent our cause in your community.</li>
                        <li>Organize blood donation drives in your area.</li>
                        <li>Help educate others about the need for regular donations.</li>
                    </ul>
                </div>
                <div class="card">
                    <div class="card-icon">🤝</div>
                    <p>Partner with Us</p>
                    <ul>
                        <li>Collaborate with businesses to sponsor events.</li>
                        <li>Engage schools and organizations in donation drives.</li>
                        <li>Partner with us to expand our reach.</li>
                    </ul>
                </div>
                <div class="card">
                    <div class="card-icon">📤</div>
                    <p>Share Our Cause</p>
                    <ul>
                        <li>Help spread the word through social platforms.</li>
                        <li>Encourage others to share and donate.</li>
                        <li>Support us by promoting our campaigns.</li>
                    </ul>
                </div>
            </div>
            <p class="short-para">
                By taking one of these steps, you are playing a critical role in saving lives. Together, we can ensure that there’s enough blood for those in need.
            </p>
        </div>

        <!-- CONTACT US SECTION -->
        <div class="contact-us">
            <div class="contact-us-info">
                <div class="info-block">
                    <img src="./image/location-icon.png" alt="Location Icon" width="40">
                    <div>
                        <h4>Our Location</h4>
                        <p>123 Blood Drive, Heartland, India</p>
                    </div>
                </div>
                <div class="info-block">
                    <img src="./image/mail-icon.png" alt="Email Icon" width="40">
                    <div>
                        <h4>Email Us</h4>
                        <p>info@virtualbloodbank.com</p>
                    </div>
                </div>
                <div class="info-block">
                    <img src="./image/phone-icon.png" alt="Phone Icon" width="40">
                    <div>
                        <h4>Call Us</h4>
                        <p>+91 9876543210</p>
                    </div>
                </div>
            </div>
            <div class="contact-form">
                <center><h3>Contact Us</h3></center>
                <form method="post" action="help" target="_top">
                    <input type="text" name="name" placeholder="Your Name" required>
                    <input type="email" name="email" placeholder="Your Email" required>
                    <textarea name="message" placeholder="Your Message" rows="4" required></textarea>
                    <center><button class="button" type="submit">Send Message</button></center>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
