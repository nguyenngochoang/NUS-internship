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



    $(".signupbtn").mouseover(
        function animation() {
            if (stopAnimation) {
                stopAnimation = false;
            }
            else {
                $(".signupbtn").animate({ width: "+=25px" }, "slow");
                $(".signupbtn").animate({ width: "-=25px" }, "slow", animation);
            }


        }
    );
    $(".signupbtn").mouseout(function () {
        stopAnimation = true;
    });
    
});