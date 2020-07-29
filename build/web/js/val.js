






            function loginValidate() {
              var username = document.getElementById("username").value;
              var password = document.getElementById("password").value;

              if (username == null || username == "") {
                alert("Please enter the username.");
                return false;
            }
            if (password == null || password == "") {
                alert("Please enter the password");
                return false;
            }
                        // alert('Login successful');
                        
                    } 

        function signupValidate() {

            var name = document.getElementById("name").value;
            var username = document.getElementById("susername").value;
            var password = document.getElementById("spassword").value;
            var email = document.getElementById("email").value;
            var cpassword = document.getElementById("cpassword").value;
            var pass = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;

            
            if (name == null || name == "") {
                alert("Please enter the Name");
                return false;
            }
            if (username == null || username == "") {
                alert("Please enter the username");
                return false;
            }


            if (email == null || email == "") {
                alert("Please enter the Email");
                return false;
            }
            if (password == null || password == "") {
                alert("Please enter the password");
                return false;
            }
             if(password.match(pass)){ 
                 if (cpassword == null || cpassword == "") {
                alert("Please enter the password");

                return false;
            }
            if(cpassword!=password){
                alert("Password not matching");

                return false;
            }

            }
            else
            { 
                alert('Password must contain at least one lowercase letter, one uppercase letter, numeric digit and a special character with minimum length of 8 characters');
                return false;
            }
            
          
           
            // alert('Login successful');
            
        } 