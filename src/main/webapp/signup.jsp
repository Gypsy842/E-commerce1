<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign-up</title>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
                  integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
    </head>

    <body>
    
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    
      <section id="header">
        <a href="#"><img src="img/logo.png" class="logo" alt=""></a>
        <div>
            <ul id="navbar">
                <li><a href="index.html">Home</a></li>
                <li><a href="shop.html">Shop</a></li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle active"  href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Sign-in
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="signup.jsp">Signup</a>
                    </li>
                    <li><a class="dropdown-item" href="login.jsp">Login</a></li>
                    <li>
                    <li><a class="dropdown-item" href="index.html">logout</a></li>
                    <li>
                    <hr class="dropdown-divider">
                    <li><a class="dropdown-item" href="adminlog.jsp">Admin</a>
                    
                  </ul>
                </li>
                <li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li id="lg-bag"><a href="cart.html"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a></li>
                <a href="#" id="close"><i class="far fa-times"></i></a>
            </ul>
        </div>
        <div id="mobile">
            <a href="cart.html"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
            <i id="bar" class="fas fa-outdent"></i>
        </div>
    </section>
        <section class="h- bg-dark">
          <div class="container py-5 h-70">
            <div class="row d-flex justify-content-center align-items-center h-100">
              <div class="col">
                <div class="card card-registration my-4">
                  <div class="row g-0">
                    <div class="col-xl-6 d-none d-xl-block">
                      <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                        alt="Sample photo" class="img-fluid"
                        style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                    </div>
                    <div class="col-xl-6">
                      <div class="card-body p-md-5 text-black">
                        <h3 class="mb-5 text-uppercase">Sign-up</h3>
                        
                      <form action="register" method="post">
                        <div class="row">
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="form3Example1m" name="firstName" class="form-control form-control-lg" required />
                              <label class="form-label" for="form3Example1m">First name</label>
                            </div>
                          </div>
                          <div class="col-md-6 mb-4">
                            <div class="form-outline">
                              <input type="text" id="form3Example1n" name="lastName" class="form-control form-control-lg" required />
                              <label class="form-label" for="form3Example1n">Last name</label>
                            </div>
                          </div>
                        </div>
        
                        <div class="form-outline mb-4">
                          <input type="text" id="form3Example8" name="address" class="form-control form-control-lg" required/>
                          <label class="form-label" for="form3Example8">Address</label>
                        </div>
        
                       
        
                      
                        <div class="form-outline mb-4">
                          <input type="number" id="form3Example90" name="phn" class="form-control form-control-lg" required/>
                          <label class="form-label" for="form3Example90">Phone No.</label>
                        </div>
                        <div class="form-outline mb-4">
                          <input type="password" id="form3Example90" name ="pwd" class="form-control form-control-lg" required/>
                          <label class="form-label" for="form3Example90">Password</label>
                        </div>
                        <div class="form-outline mb-4">
                          <input type="email" id="form3Example97" name="email" class="form-control form-control-lg" required/>
                          <label class="form-label" for="form3Example97">Email ID</label>
                        </div>
        
                        <div class="d-flex justify-content-end pt-3">
                          <button type="submit" name="submit" value="Submit" class="btn btn-warning btn-lg ms-2">Register</button>
                        </div>
						</form>
                        <section id="lastL">
                       
                        
                        <div class="form-check d-flex justify-content-center mb-5">
                          <label class="form-check-label" for="form2Example3">
                              Already have an account? <a href="login.jsp">Log-in</a>
                          </label>
                        </div>
                      </section>
                      
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
    crossorigin="anonymous"></script>
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
        var status = document.getElementById("status").value;
        if(status == "success"){
        	swal("Congrats","Account created Successfully","success")
        }
        

        </script>
    </body>
</html>      