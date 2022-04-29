<%@ page import="main.java.model.Booking" %>
<%
    Booking.flight_booking_id = request.getParameter("flight_id");
    Booking.ticket_price = Integer.parseInt(request.getParameter("ticket_price"));
    Booking.flight_name = request.getParameter("flight_name");
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Booking Details - FlyAway Airlines</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/global.css">
    <link rel = "shortcut icon" type = "image/png" href = "${pageContext.request.contextPath}/img/favicon.png" >
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
        body, html {
            height: 100%;
            line-height: 1.8;
        }
        .bgimg-1 {
            background-position: center;
            background-size: cover;
            background-image: url("img/plane.png");
            min-height: 100%;
        }
        .w3-bar .w3-button {
            padding: 16px;
        }
    </style>
</head>

<body>
<div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="${pageContext.request.contextPath}/index.jsp" class="w3-bar-item w3-button w3-wide"><img src="img/favicon.png" class="img-fluid" alt="image" width="18%">  FlyAway</a>
    <div class="w3-right w3-hide-small">
        <a href="${pageContext.request.contextPath}/login.jsp" class="w3-bar-item w3-button"><i class="fa fa-gear"></i> Admin Login</a>
    </div>
</div>
    <section class="container-fluid bg">
        <section class="row justify-content-center">
            <div class="row">
                <div class="col">
                    <h1 align="center" style="color:black;"><b>Booking Details</b></h1>
                    <p align="center" style="color:black;"><span><strong>Enter Passenger Details</strong></span></p><br>
                </div>
            </div>
            <section class="col-sm-6 col-md-3">
                <form action="${pageContext.request.contextPath}/payment.jsp" method="post" class="form-container">
                    <div class="form-group">
                        <label for="pname">Passenger Name</label>
                        <input type="text" class="form-control" id="pname" name="pname" placeholder="Enter name of the/any passenger(s)">
                    </div>
                    <div class="form-group">
                        <label for="pname">Address</label>
                        <input type="text" class="form-control" id="pname" name="pname" placeholder="Home address">
                    </div>
                    <div class="form-group">
                        <label for="pname">Age</label>
                        <input type="text" class="form-control" id="pname" name="pname" placeholder="Age">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter phone number">
                    </div>
                    <div class="form-group">
                    <label for="source">Personal Id</label>
                    <select  class="form-control" id="source" name="source">
                        <option value="Aadhar card">Aadhar card</option>
                        <option value="SSN">SSN</option>
                        <option value="Passport">Passport</option>
                        <option value="Voter ID">Voter ID</option>
                        <option value="Driving license">Driving license</option>
                    </select>
                    <label for="enterno">Enter No</label>
                        <input type="text" class="form-control" id="enterno" name="enterno" placeholder="Enter No">
                  </div>
                    <br>
                    <button type="submit" class="btn btn-success btn-block" value="Submit">Payment</button>
                </form>
            </section>
        </section>
    </section>
<div class="footer" align="center">
    FlyAway @ Sumeet Yajnik
</div>
</body>
</html>
