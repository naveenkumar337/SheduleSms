
//    if ($('#username').val() == "") {
//        $.jGrowl("please Enter username")
//        return false;
//    }
//    else if ($('#txtmail').val() == "") {
//        $.jGrowl("please Enter Email")
//        return false;
//    }
//    else if ($('#contactno').val() == "") {
//        $.jGrowl("please enter contactNO")
//        return false;
//    }
//    else if ($('#password').val() == "") {
//        $.jGrowl("please enter Numeric password")
//        return false;
//    }
//    else if ($('#cfmpswd').val() == "") {
//        $.jGrowl("please enter Confirmpassword")
//        return false;
//    }
//    if ($('#password').val() != $('#cfmpswd').val()) {
//        $.jGrowl("password and confirmpassword must be match")
//        return false;
//    }
//})
//if ($('#username').val() != "" && $('#txtmail').val() != "" && $('#contactno').val() != "" && $('#password').val() != "" && $('#cfmpswd').val() !== "") {
//    var request = $.ajax({
//        url: 'http://localhost:58919/api/Registraion/Registarion_ADD',
//        method: 'POST',
//        data: obj,

//        success: (function (obj) {
//            debugger;
//            alert("Registered successfully" + obj.username);
//        })
//    })
//    error: (function () {
//        alert("error");
//    })
//}


//$('.input').keypress(function (e) {
//    if (e.which == 13) {
//        $('form#submit').submit();
//        return false;
//    }
//});
//})


$(document).ready(function () {
    $('#submit').click(function (event) {
        var obj = {};
        obj.username = $('#username').val(),
        obj.email = $('#txtmail').val(),
        obj.contactNo = $('#contactno').val(),
        obj.password = $('#password').val(),
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
        if (obj.username != "" && obj.email != "" && obj.contactNo != "" && obj.password != "" && obj.ConfirmPassword) {
            debugger;
            var request = $.ajax({
                url: 'http://localhost:58919/api/Registraion/Registarion_ADD',
                method: 'POST',
                data: obj,

            }).then(function (response) {
                debugger;
                if (response == '-1') {
                    alert("Authentication failed");
                }
                else {
                    sessionStorage.setItem("username", response.UserName);
                    debugger;
                    location.href = "Login%20.aspx";
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
