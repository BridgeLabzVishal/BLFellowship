<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registration</title>

    <link rel="stylesheet" href="register.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
    <form action="AdminRegisterServlet" method="get">
        <div class="container">
            <div class="col-md-11">

                <div class="form-group">
                    <div class="form-row">
                        <div class="form-row ">
                            <i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i>
                            <h3 class="text-center">Registration</h3>
                        </div>
                    </div>
                </div>
                <hr />

                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-2">
                            <i class="fa fa-user-circle" aria-hidden="true"></i>First Name
                        </div>
                        <div class="col-md-4">
                            <input type="text" class="form-control" name="firstname" placeholder="First Name" required>
                        </div>
                        <div class="col-md-2">
                            <i class="fa fa-user-circle" aria-hidden="true"></i>Last Name
                        </div>
                        <div class="col-md-4">
                            <input type="text" class="form-control" name="lastname" placeholder="Last Name" required>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-2">
                            <i class="fa fa-envelope" aria-hidden="true"></i>E-mail
                        </div>
                        <div class="col-md-4">
                            <input type="email" class="form-control" name="email" placeholder="E-mail" required>
                        </div>
                        <div class="col-md-2">
                            <i class="fa fa-key" aria-hidden="true"></i>Password
                        </div>
                        <div class="col-md-4">
                            <input type="password" name="password" class="form-control" placeholder="Password" required>
                        </div>

                    </div>
                </div>

                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-2">
                            <i class="fa fa-mars" aria-hidden="true"></i>Gender
                        </div>
                        <div class="col-md-4 ">
                            <input type="radio" name="radio" value="male">Male <input type="radio" name="radio" value="female">Female <input type="radio" name="radio" value="other">Other
                        </div>
                        <div class="col-md-2">
                            <i class="fa fa-birthday-cake" aria-hidden="true"></i> DOB
                        </div>
                        <div class="col-md-4">
                            <input type="date" class="form-control" name="dob" required>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-2">
                            <i class="fa fa-child" aria-hidden="true"></i> Age
                        </div>
                        <div class="col-md-4">
                            <input type="number" name="age" class="form-control" placeholder="Age" required>
                        </div>
                        <div class="col-md-2">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>City
                        </div>
                        <div class="col-md-4">
                            <input type="text" name="city" class="form-control" placeholder="City" required>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-2">
                            <i class="fa fa-location-arrow" aria-hidden="true"></i>State
                        </div>
                        <div class="col-md-4">
                            <input type="text" name="state" class="form-control" placeholder="State" required>
                        </div>
                        <div class="col-md-2">
                            <i class="fa fa-map-pin" aria-hidden="true"></i>Zip/Pin Code
                        </div>
                        <div class="col-md-4">
                            <input type="number" name="zip" class="form-control" placeholder="Zip" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-2">
                            <i class="fa fa-user-circle" aria-hidden="true"></i> UserType
                        </div>
                        <div class="col-md-2">
                            <input type="radio" name="usertype" id="user" value="user">User
                            <input type="radio" name="usertype" id="admin" value="admin">Admin
                        </div>
                    </div>
                </div>

                <div class="form-group ">
                    <div class="col-md-8 offset-md-4">
                        <button type="submit" value="submit" class="btn btn-outline-info text-center" id="submit">Submit</button>

                        <button type="reset" value="Reset" class="btn btn-outline-primary text-center" id="reset">Reset</button>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>

</html>