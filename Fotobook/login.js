$(document).ready(function () {
    var stopAnimation = false;
    $(".loginbtn").mouseover(
        function animation() {
            if (stopAnimation) {
                stopAnimation = false;
            }
            else {
                $(".loginbtn").animate({ opacity: "-=0.5" }, "slow");
                $(".loginbtn").animate({ opacity: "+=0.5" }, "slow", animation);
            }
        });

    $(".loginbtn").mouseout(function () {
        stopAnimation = true;
    });

    $(".loginbtn2").mouseover(
        function animation() {
            if (stopAnimation) {
                stopAnimation = false;
            }
            else {
                $(".loginbtn2").animate({ width: "+=25px" }, "slow");
                $(".loginbtn2").animate({ width: "-=25px" }, "slow", animation);
            }


        }
    );
    $(".loginbtn2").mouseout(function () {
        stopAnimation = true;
    });
    
});