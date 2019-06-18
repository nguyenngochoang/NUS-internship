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
});