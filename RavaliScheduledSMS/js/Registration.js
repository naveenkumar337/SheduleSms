$(document).ready(function () {
    $('#submit').click(function (event) {
        var obj = {};
        obj.username = $('#username').val(),
        obj.email = $('#txtmail').val(),
        obj.contactNo = $('#contactno').val(),
        obj.Password = $('#password').val(),
        obj.ConfirmPassword = $('#cfmpswd').val()
        if ($('#username').val() == "") {
            $.jGrowl("please Enter username")
            return false;
        }
        else if ($('#txtmail').val() == "") {
            $.jGrowl("please Enter Email")
            return false;
        }
        else if ($('#contactno').val() == "") {
            $.jGrowl("please enter contactNO")
            return false;
        }
        else if ($('#password').val() == "") {
            $.jGrowl("please enter Numeric password")
            return false;
        }
        else if ($('#cfmpswd').val() == "") {
            $.jGrowl("please enter Confirmpassword")
            return false;
        }
        if ($('#password').val() != $('#cfmpswd').val()) {
            $.jGrowl("password and confirmpassword must be match")
            return false;
        }
        if (obj.username != "" && obj.email != "" && obj.contactNo != "" && obj.Password != "" && obj.ConfirmPassword) {
            debugger;
            var request = $.ajax({
                url: 'http://localhost:58919/api/Registraion/Registarion_ADD',
                method: 'POST',
                data: obj,

            }).then(function (obj) {
               
                debugger;
                if (obj.objresponse.ResponseCode == '101') {
                    $.jGrowl("User alredy existed please registerd with new user");
                }
                else {
                                    
                    sessionStorage.setItem("username", obj.objresponse.UserName);
                    debugger;
                    $.jGrowl("User Registration Completed Successfully")
                    location.href = "Login%20.aspx";
                    return false;   
                }
            });
        }
        event.preventDefault();
        event.stopPropagation();
    });
    $('.input').keypress(function (e) {
        if (e.which == 13) {
            $('form#submit').submit();
            return false;
        }
    });
})
