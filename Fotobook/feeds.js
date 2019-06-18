$(document).ready(function () {
    var stopAnimation = false;
    $(".logoutbtn").mouseover(
        function animation() {
            if (stopAnimation) {
                stopAnimation = false;
            }
            else {
                $(".loginbtn").animate({ opacity: "-=0.5" }, "slow");
                $(".loginbtn").animate({ opacity: "+=0.5" }, "slow", animation);
            }
        });

    $(".logoutbtn").mouseout(function () {
        stopAnimation = true;
    });

    
});