$("#txtphonenumber").mask("+91 999-999-9999");
//var dt = 0;
//$("#TextArea1").keypress(function () {
//    if (dt >= 250) {
//        $("#messagelog").text(250 + "/" + 250);
//    } else {
//        $("#messagelog").text(dt + "/" + 250);
//    }
//    dt = $("#TextArea1").val().length + 1;

//});
$("#TextArea1").on("keydown", function () {
    if ($("#TextArea1").val().length >= 250) {
        $("#messagelog").text(250 + "/" + 250);
    }
    else if ($("#TextArea1").val().length == 0) {
        $("#messagelog").text(0 + "/" + 250);
    }
    else if (event.keyCode == 8 || event.keyCode == 46)
    {
        event.currentTarget.dispatchEvent(true);
        $("#messagelog").text($("#TextArea1").val().length + "/" + 250);
    }
    else {
        $("#messagelog").text($("#TextArea1").val().length + "/" + 250);
    }
});
