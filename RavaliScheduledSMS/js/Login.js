$(document).ready(function () {
    debugger;
    $('#submit').click(function () {
        var obj = {
            username: $('#txtname').val(),
            password: $('#pswd').val()
        };
        $('.input').keypress(function (e) {
            if (e.which == 13) {
                $('form#submit').submit();
                return false;
            }
        });
        var request = $.ajax({
            url: 'http://localhost:58919/api/Registraion/Login_ADD',
            method: 'POST',
            data: obj,
        });
        request.done(function (data) {
            debugger;
            alert("Saved successfully");
        })
        request.fail(function (jqXHR, textStatus) {
            debugger;
            alert("Request failed: " + textStatus);
        })
    })
    $('#register').click(function () {
        
        window.location = "Registration.aspx";
        return false;
    });
})


//$(document).ready(function () {
//    debugger;
//    $('#submit').click(function () {
//        var obj = {
//            username: $('#txtname').val(),
//            password: $('#pswd').val()
//        };
//    })
//})