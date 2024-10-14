<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Bloodbag</title>
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
            height: 520px;
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
        <h2>Add Blood Bag</h2>
        <div class="content">
            <form action="addbag" method="post">
                <table>
                    <tr>
                        <td>Bloodbank Id:</td>
                        <td><input class="input" type="number" id="bankid" name="bloodbankid" required></td>
                        <td><span class="error" id="bankidError"></span></td>
                    </tr>
                    <tr>
                        <td>Donor Id:</td>
                        <td><input class="input" type="number" id="did" name="donorid" required></td>
                        <td><span class="error" id="didError"></span></td>
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
                        <td>HB:</td>
                        <td><input class="input" type="text" id="hb" name="hb" required></td>
                        <td><span class="error" id="hbError"></span></td>
                    </tr>
                    <tr>
                        <td>HIV:</td>
                        <td><input class="input" type="text" id="contact" name="hiv" required></td>
                        <td><span class="error" id="contactError"></span></td>
                    </tr>
                    <tr>
                        <td>HSbag:</td>
                        <td><input class="input" type="text" id="hs" name="hsbag" required></td>
                        <td><span class="error" id="hsError"></span></td>
                    </tr>
                    <tr>
                        <td>HEV:</td>
                        <td><input class="input" type="text" id="hev" name="hev" required></td>
                        <td><span class="error" id="hevError"></span></td>
                    </tr>
                    <tr>
                        <td>Vdrl:</td>
                        <td><input class="input" type="text" id="vdrl" name="vdrl" required></td>
                        <td><span class="error" id="vdrlError"></span></td>
                    </tr>
                    <tr>
                        <td>Expiry Date:</td>
                        <td><input class="input" type="date" id="exp" name="expirydate" required></td>
                        <td><span class="error" id="expError"></span></td>
                    </tr>
                    <tr>
                        <td>mp_mf:</td>
                        <td><input class="input" type="text" id="mpmf" name="mpmf" required></td>
                        <td><span class="error" id="mpmfError"></span></td>
                    </tr>
                    <tr>
                        <td>BP:</td>
                        <td><input class="input" type="text" id="bp" name="bp" required></td>
                        <td><span class="error" id="bpError"></span></td>
                    </tr>
                    <tr>
                        <td>Status:</td>
                        <td><select name="status" id="status" class="select">
                            <option value="selected" selected>Select Status</option>
                            <option value="available">Available</option>
                            <option value="unavailable">Unavailable</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <center>
                                <button id="submit" class="btn" type="submit">Confirm</button>
                                <button id="clear" class="btn" type="reset">Clear</button>
                            </center>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
