$(document).ready(function () {

    arr =["./images/uploads/pnggrad16rgb.png","./images/uploads/sample2.jpeg","./images/uploads/sample3.jpg","./images/uploads/sample4.jpg","./images/uploads/sample5.jpeg","./images/uploads/sample6.jpeg"];


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

    var index;
    var backgroundUrl;
    arr= [];
    $(".innerImg").each(function(){
        arr.push($(this).attr("src"));
    });

    $(".img").on("click", function(){
        jQuery.noConflict()
        backgroundUrl = $(this).children("img").attr("src");
        backgroundUrl = backgroundUrl.replace('url(','').replace(')','').replace(/\"/gi, "");
        $("#modal-body-image").attr("src",backgroundUrl);
        var text = $(this).next().find(".row-text").children("p").text();
        var title =  $(this).next().find(".row-text").children("h5").text();
        $(".modal-title").text(title);
        $(".modal-footer > p").text(text);
        $('.modal').modal("toggle");
        index = arr.indexOf(backgroundUrl)

    });

    $(".next").on("click",function(){
        if(index<arr.length-1){
            index=index+1;
            backgroundUrl = arr[index];
            $("#modal-body-image").attr("src",backgroundUrl);
            var $selectthis =$("[src="+"'"+backgroundUrl+"'"+"]").parent().next();
            var text= $selectthis.find(".row-text").children("p").text();
            var title = $selectthis.find(".row-text").children("h5").text();
            $(".modal-title").text(title);
            $(".modal-footer > p").text(text);
        }

    });


    $(".prev").on("click",function(){
        if(index>0){
            index=index-1;
            backgroundUrl = arr[index];
            $("#modal-body-image").attr("src",backgroundUrl);
            var $selectthis =$("[src="+"'"+backgroundUrl+"'"+"]").parent().next();
            var text= $selectthis.find(".row-text").children("p").text();
            var title = $selectthis.find(".row-text").children("h5").text();
            $(".modal-title").text(title);
            $(".modal-footer > p").text(text);
        }

    });



});