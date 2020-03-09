    
$(document).ready(function () {

    if ($("#remember-me").attr("checked", "checked")) {
        var remember = $.cookie('remember');
        if (remember == 'true') {
            var email = $.cookie('email');
            var password = $.cookie('password');
            // autofill the fields
            $('#txtname').attr("value", email);
            $('#pswd').attr("value", password);
        }
    }
    $('#submit').on("click",function () {
        debugger
        let username= $('#txtname').val();
        let pass =$('#pswd').val();
        
         $.ajax({
             url: "http://localhost:58919/api/Registraion/Login_ADD?Email=" + username + "&Password=" + pass,
             cache: false,
             async:true,
             type: "GET",
             success: function (data) {
                 debugger;
                 if (data.ResponseCode == 1)
                 {
                     if (data.ResponseMessage == "User Not Exist")
                     {
                         $.jGrowl("User Not Exist Plase Register");
                     }
                     else if (data.ResponseMessage == "Enter Correct Password") {
                         $.jGrowl("PassWord Not Correct");
                     }
                     else {
                         debugger;
                         if ($("#remember-me").attr("checked", "checked")) {
                             var email = $('#txtname').val();
                             var password = $('#pswd').val();

                             // set cookies to expire in 14 days
                             $.cookie('email', email, { expires: 14 });
                             $.cookie('password', password, { expires: 14 });
                             $.cookie('remember', true, { expires: 14 });
                         } else {
                             $.cookie('email', null, { expires: 14 });
                             $.cookie('password', null, { expires: 14 });
                             $.cookie('remember', true, { expires: 14 });
                         }
                     }
                     $.jGrowl("Successfull !");
                         window.location = "Home.aspx?UserName" + data.ResponseMessage;
                         
                 }
                 if (data.ResponseCode == -1)
                 {
                     $.jGrowl("Error Occured");
                 }
             }, error: function () {
                 $.jGrowl("Request failed: ");
             }
         });
         event.preventDefault();
         event.stopPropagation();
    });
    $('#register').click(function () {
        window.location = "Registration.aspx";
    });

    $('.input').keypress(function (e) {
        if (e.which == 13) {
            $('form#submit').submit();
            return false;
        }
    });
});