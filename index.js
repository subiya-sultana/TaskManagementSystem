console.log("JS file loaded"); // Check for multiple loads

$(document).ready(function(){
    console.log("Document ready");

    // Avoid duplicate bindings
    $("label").off("click").on("click", function(){
        $("nav div ul").toggleClass("active");
    });

    $(".container .box").off("click").on("click", function(){
        $(this).children('.answer').slideToggle();
        $(this).find('i').toggleClass("fa-arrow-down fa-close");
    });
});
