<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">

<link rel = "icon" href = 
"template/assets/img/logo.png" 
        type = "image/x-icon">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Forgotten Password</title>
    <link rel="stylesheet" href="template/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="template/assets/fonts/fontawesome-all.min.css">
</head>

<body style="background-color: #151c2e;
    background-image: linear-gradient(180deg, #6c6d6e 10%, #0c1224 100%);
    background-size: cover;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-lg-12 col-xl-10">
                <div class="card shadow-lg o-hidden border-0 my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-flex">
                                <div class="flex-grow-1 bg-password-image" style="background-image: url(&quot;template/assets/img/login.jpg&quot;);"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h4 class="text-dark mb-2">Forgot Your Password?</h4>
                                        <p class="mb-4">We get it, stuff happens. Just enter your email address below and we'll send you a link to reset your password!</p>
                                    </div>
                                    <form class="user" class="user" action="forgot" method="POST">
                                        <div class="mb-3"><input class="form-control form-control-user" type="email" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Email Address..." name="email"></div><button class="btn btn-primary d-block btn-user w-100" type="submit">Reset Password</button>
                                    </form>
                                    <div class="text-center">
                                        <hr><a class="small" href="register">Create an Account!</a>
                                    </div>
                                    <div class="text-center text-decoration-none"><a class="small" href="login">Already have an account? Login!</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    %>
    <script src="template/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="template/assets/js/theme.js"></script>
</body>

</html>