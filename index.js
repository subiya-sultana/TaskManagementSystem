console.log("js file works");

$(document).ready(function(){
    // jquery for navbar
    $("label").click(function(){
        $("nav div ul").toggleClass("active");
    });
    // jquery for FAQ section
    $(".container .box ").click(function(){
        $(this).children('.answer').slideToggle();
        $(this).find('i').toggleClass("fa-arrow-down fa-close");
    });
});