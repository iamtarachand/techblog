<%@page import="java.sql.Connection" %>
<%@ page import="com.tarachand.helper.ConnectionProvider" %>
<%@ include file="header.jsp" %>
<%@include file="navbar.jsp" %>

                <section class="pb-5 pt-3">
                    <main class="form-signin w-100 m-auto">
                        <h1 class="h3 mb-3">Welcome Back!</h1>

                        <div class="card">                            
                            <div class="card-body">
                                <form class="ta-signin-form" id="sign-form" action="LoginServlet" method="POST">
                          
                                    <h1 class="h3 mb-2">Login</h1>
                                
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email ID / Username</label>
                                        <input name="email" required type="email" class="form-control ta-input" id="email" placeholder="Enter Email ID / Username">
                                    </div>
                                    <div class="mb-3">
                                        <label for="password" class="form-label">Password</label>
                                        <input name="password" required type="password" class="form-control ta-input" id="password" placeholder="Enter Password">
                                    </div>
                                
                                    <div class="form-check text-start my-3">
                                      <input class="form-check-input ta-input" type="checkbox" value="remember-me" id="rememberCheck">
                                      <label class="form-check-label" for="rememberCheck">
                                        Remember me
                                      </label>
                                    </div>
                                    <button class="btn btn-primary w-100 py-2 ta-btn" type="submit">Sign in</button>
                                    
                                  </form>
                            </div>
                          </div>



                        
                      </main>
                   
                </section>

                

<%@include file="footer.jsp" %>
<script>
    $(document).ready(function () {
        $('#sign-form').on('submit', function (event) {
            event.preventDefault();
            let form = new FormData(this);

            //send to register servlet
            $.ajax({
                url: "LoginServlet",
                type: 'POST',
                data: form,
                success: function (data, textStatus, jqXHR) {
//                     console.log(data)
                    if (data.trim() === 'Done') {
                        swal({
                            title: "Success!",
                            text: "You Logged in Successfully!",
                            icon: "success",
                            button: "Ok!",
                            timer: 1000,
                        }).then((value) => {
                            window.location = "profile.jsp"
                        });

                    } else {
                        swal({
                            title: "Error!",
                            text: "Incorrect details! Please Try again..",
                            icon: "warning",
                            buttons: true,
                            dangerMode: true,
                        });
                    }

                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log(jqXHR)
                    swal({
                        title: "Error!",
                        text: "Something went wrong! Please Try again..",
                        icon: "warning",
                        buttons: true,
                        dangerMode: true,
                    });
                },
                processData: false,
                contentType: false
            });
        });
    });
</script>