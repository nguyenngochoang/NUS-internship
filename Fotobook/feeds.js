$(document).ready(function () {
    var stopAnimation = false;
    $(".logoutbtn").mouseover(
        function animation() {
            if (stopAnimation) {
                stopAnimation = false;
            }
            else {

                $(".logoutbtn").animate({ opacity: "-=0.5" }, "slow");
                $(".logoutbtn").animate({ opacity: "+=0.5" }, "slow", animation);
            }
        });

    $(".logoutbtn").mouseout(function () {
        stopAnimation = true;
    });


    $(".HeartAnimation").click(function () {
        $(this).toggleClass("animate");
    });

    // auto fade navbar
    var lastScrollTop = 0;
    var $navbar = $('.navbar');

    $(window).scroll(function (event) {
        var st = $(this).scrollTop();

        if (st > lastScrollTop) { // scroll down
            $navbar.fadeOut()
        } else { // scroll up  
            $navbar.fadeIn()
        }
        lastScrollTop = st;
    });
});