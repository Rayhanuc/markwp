/* ---------------------------------------------
 common scripts
 --------------------------------------------- */

;(function ($) {

    "use strict";  

    var $window = $(window);


    /* ---------------------------------------------
     WOW init
     --------------------------------------------- */

    new WOW().init();

    $(document).ready(function () {

        /* ---------------------------------------------
         menu scrolling
         --------------------------------------------- */
        jQuery('.scroll_to').on('click', function(e){
            var jump = $(this).attr('href');
            var new_position = $(jump).offset();
            $('html, body').stop().animate({ scrollTop: new_position.top }, 500);
            e.preventDefault();
        });


        // add/remove active class in nav
        $(function(){
            $('.navbar-nav .nav-item').on('click', function(){
                $('.navbar-nav .nav-item.active').removeClass('active');
                $(this).addClass('active');
            });
        });

        // hide navbar while click nav link in responsive
        $(".navbar-nav li a").on('click', function(event) {
            $(".navbar-collapse").collapse('hide');
        });


        /* ---------------------------------------------
         height 100%
         --------------------------------------------- */

        $(".js_full_height").height($window.height());

        $window.on('resize', function(){
            $(".js_full_height").height($window.height());
        });



        /* ---------------------------------------------
         add sticky
         --------------------------------------------- */

        $window.on('scroll', function () {
            var wSize = $window.width();
            if (wSize > 767 && $(this).scrollTop() > 1) {
                $('.app-header').addClass("sticky-header");
            }
            else {
                $('.app-header').removeClass("sticky-header");
            }
        });


        /* ---------------------------------------------
         Fun facts
         --------------------------------------------- */

        function animateFacts(fact) {
            if($.fn.visible && $(fact).visible() && ! $(fact).hasClass('animated') ) {
                $(fact).animateNumber({
                    number: parseInt($(fact).data('target'),10)
                }, 2000);
                $(fact).addClass('animated');
            }
        }

        function initFunFacts() {
            var funFacts = $('.fun-box').find('.value');
            funFacts.each(function() {
                animateFacts(this);
            });
        }

        initFunFacts();

        $(window).on("scroll", function () {
            initFunFacts();
        });


        /* ---------------------------------------------
         portfolio filtering
         --------------------------------------------- */

        var $portfolio = $('.portfolio');
        if ($.fn.imagesLoaded && $portfolio.length > 0) {
            imagesLoaded($portfolio, function () {
                $portfolio.isotope({
                    itemSelector: '.portfolio-item',
                    filter: '*'
                });
                $(window).trigger("resize");
            });
        }

        $('.portfolio-filter').on('click', 'a', function (e) {
            e.preventDefault();
            $(this).parent().addClass('active').siblings().removeClass('active');
            var filterValue = $(this).attr('data-filter');
            $portfolio.isotope({filter: filterValue});
        });


        /*---------------------------------------------
         Portfolio popup
         ---------------------------------------------*/

        $(".portfolio-gallery").each(function () {
            $(this).find(".popup-gallery").magnificPopup({
                type: "image",
                gallery: {
                    enabled: true
                }
            });
        });



        /* ---------------------------------------------
         testimonial
         --------------------------------------------- */

        $('#js_testimonial').owlCarousel({
            loop: true,
            margin: 0,
            autoplay: true,
            nav:false,
            //navText: ["<a><span></span></a>","<a><span></span></a>"],
            autoHeight:true,
            dots: true,
            dotsData: true,
            //animateOut: 'slideOutUp',
            //animateIn: 'slideInUp',
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 1
                },
                1000: {
                    items: 1
                }
            }
        });



    });

})(jQuery);
