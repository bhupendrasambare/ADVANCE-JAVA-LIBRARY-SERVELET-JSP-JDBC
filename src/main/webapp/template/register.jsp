<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">

<link rel = "icon" href = 
"template/assets/img/logo.png" 
        type = "image/x-icon">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Register</title>
    <link rel="stylesheet" href="template/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="template/assets/fonts/fontawesome-all.min.css">
</head>

<body style="background-color: #151c2e;
    background-image: linear-gradient(180deg, #6c6d6e 10%, #0c1224 100%);
    background-size: cover;">
    <div class="container">
        <div class="card shadow-lg o-hidden border-0 my-5">
            <div class="card-body p-0">
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-flex">
                        <div class="flex-grow-1 bg-register-image" style="background-image: url(&quot;template/assets/img/login.jpg&quot;);"></div>
                    </div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h4 class="text-dark mb-4">Create an Account!</h4>
                            </div>
                            <form class="user" method="POST" action="./register">
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    
                                    <input class="form-control form-control-user" type="text" id="exampleFirstName" placeholder="First Name" name="first">
                                    
                                </div>
                                <div class="col-sm-6">
                                
                                    <input class="form-control form-control-user" type="text" id="exampleFirstName" placeholder="Last Name" name="last">
                                    
                                </div>
                                </div>
                                <div class="mb-3">
                                
                                	<input class="form-control form-control-user" type="email" id="exampleInputEmail" aria-describedby="email" placeholder="Email Address" name="email">
                                	
                                	</div>
                                <div class="row mb-3">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    
                                    <input class="form-control form-control-user" type="password" id="examplePasswordInput" placeholder="password" name="password">
                                    
                                    </div>
                                    <div class="col-sm-6">
                                    
                                    <input class="form-control form-control-user" type="password" id="exampleRepeatPasswordInput" placeholder="Contact Number" name="mobile">
                                    
                                    </div>
                                </div><button class="btn btn-primary d-block btn-user w-100" type="submit">Register Account</button>
                                <hr>
                            </form>
                            <div class="text-center"><a class="small" href="forgot">Forgot Password?</a></div>
                            <div class="text-center"><a class="small" href="login">Already have an account? Login!</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="template/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="template/assets/js/theme.js"></script>
</body>

</html>