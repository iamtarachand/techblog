<%@page import="java.sql.Connection" %>
<%@ page import="com.tarachand.helper.ConnectionProvider" %>
<%@ include file="header.jsp" %>
<%@include file="navbar.jsp" %>

<section class="py-5">
    <main class="form-signin w-100 m-auto mt-2" style="max-width: 500px !important">

        <div class="card">
            <div class="card-body">
                <form id="reg-form" class="ta-signin-form" action="RegisterServlet" method="post">
                    <h1 class="h3 mb-2">Register</h1>


                    <!-- start -->
                    <div class="container">
                        <div class="row">
                            <div class="col-6">
                                <div class="mb-3">
                                    <label for="fname" class="form-label">First Name</label>
                                    <input type="text" class="form-control ta-input" id="fname"
                                           name="fname" placeholder="Enter First Name" required>
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" class="form-control ta-input" id="password"
                                           name="password" placeholder="Enter Password" required>
                                </div>
                                <div class="mb-3">
                                    <label for="mobile" class="form-label">Mobile Number</label>
                                    <input type="number" class="form-control ta-input" id="mobile"
                                           name="mobile" placeholder="Mobile Number" required>
                                </div>

                            </div>


                            <div class="col-6">
                                <div class="mb-3">
                                    <label for="lname" class="form-label">Last Name</label>
                                    <input type="text" class="form-control ta-input" id="lname"
                                           name="lname" placeholder="Enter Last Name" required>
                                </div>

                                <div class="mb-3">
                                    <label for="confirm_password" class="form-label">Confirm
                                        Password</label>
                                    <input type="password" class="form-control ta-input"
                                           id="confirm_password" placeholder="Enter Password" required>
                                    <span id='message'></span>
                                </div>


                                <div class="mb-3">
                                    <label for="gender" class="form-label">Gender</label>
                                    <select class="form-select ta-input" name="gender" required>
                                        <option value="" disabled selected>--Select--</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                        <option value="other">Other</option>
                                    </select>

                                </div>

                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email ID</label>
                                <input type="email" class="form-control ta-input" id="email"
                                       name="email" placeholder="Enter Email" required>
                            </div>
                            <div class="form-check text-start my-3">
                                <input class="form-check-input ta-input" type="checkbox" id="tandc"
                                       name="tandc" required>
                                <label class="form-check-label small" for="tandc">
                                    By clicking Register, you agree to the Terms and Conditions &
                                    Privacy Policy
                                </label>
                            </div>
                            <button class="btn btn-primary w-100 py-2 ta-btn"
                                    type="submit">Register</button>



                        </div>
                    </div>

                    <!-- End -->
                </form>

            </div>
        </div>




    </main>

</section>



<%@include file="footer.jsp" %>
<script>
    $(document).ready(function () {
        $('#reg-form').on('submit', function (event) {
            event.preventDefault();
            let form = new FormData(this);

            //send to register servlet
            $.ajax({
                url: "RegisterServlet",
                type: 'POST',
                data: form,
                success: function (data, textStatus, jqXHR) {
                    // console.log(data)
                    if (data.trim() === 'Done') {
                        swal({
                            title: "Registered!",
                            text: "Your Registration is Successful! Now you Can Login",
                            icon: "success",
                            button: "Login!",
                        }).then((value) => {
                            window.location = "signin.jsp"
                        });

                    } else {
                        swal({
                            title: "Error!",
                            text: "Your Registration is unsuccessful! Please Try again..",
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