var gl_path = '';
function include(scriptUrl) {
    if (gl_path.length == 0) {
        gl_path = jQuery('#gl_path').html()
    }
    document.write('<script src="catalog/view/theme/' + gl_path +'/' + scriptUrl + '"></script>');
}

/* Easing library
 ========================================================*/
include('js/jquery.easing.1.3.js');

/* ToTop
 ========================================================*/
;
(function ($) {
    var o = $('html');
    if (o.hasClass('desktop')) {
        include('js/jquery.ui.totop.js');

        $(document).ready(function () {
            $().UItoTop({easingType: 'easeOutQuart'});
        });
    }
})(jQuery);

/*=============================================================*/
$(function(){
	$('.breadcrumb li').last().addClass('last');
	$('#cart .total tbody tr').last().addClass('last');	
})
/*============================================================*/
$(document).ready(function(){
		$('.menu-button ul li ul  ').find('li ul').parent().find('>a').prepend('<i class="fa fa-angle-double-right"></i>');		
	});	

/* Stick up menus
 ========================================================*/
;
(function ($) {
    var o = $('html');
    if (o.hasClass('desktop')) {
        include('js/tmstickup.js');

        $(window).load(function () {
            $('.menu-wrap').TMStickUp({})
        });
    }
})(jQuery);

/* Unveil
 ========================================================*/
;
(function ($) {
    var o = $('.lazy img');

    if (o.length > 0) {
        include('js/jquery.unveil.js');

        $(document).ready(function () {
            $(o).unveil(0, function () {
                $(this).load(function () {
                    $(this).parent().addClass("lazy-loaded");
                })
            });
        });

        $(window).load(function () {
            $(window).trigger('lookup.unveil');
        });

    }
})(jQuery);

/* Elevate zoom
 ========================================================*/
;
(function ($) {
    var o = $('#gallery_zoom');
    if (o.length > 0) {
        include('js/elavatezoom/jquery.elevatezoom.js');
        $(document).ready(function () {
            o.bind("click", function (e) {
                var ez = o.data('elevateZoom');
                $.fancybox(ez.getGalleryList());
                return false;
            });

            o.elevateZoom({
                gallery: 'image-additional',
                cursor: 'pointer',
                zoomType: 'inner',
                galleryActiveClass: 'active',
                imageCrossfade: true
            });
        });
    }
})(jQuery);



/* Bx Slider
 ========================================================*/
;
(function ($) {
    var o = $('#image-additional');
    var o2 = $('#gallery');
    if (o.length || o2.length) {
        include('js/jquery.bxslider/jquery.bxslider.js');
    }

    if (o.length) {
        $(document).ready(function () {
            $('#image-additional').bxSlider({
                mode: 'vertical',
                pager: false,
                controls: true,
                slideMargin: 13,
                minSlides: 5,
                maxSlides: 5,
                slideWidth: 99,
                nextText: '<i class="fa fa-chevron-down"></i>',
                prevText: '<i class="fa fa-chevron-up"></i>',
                infiniteLoop: false,
                adaptiveHeight: true,
                moveSlides: 1
            });
        });
    }

    if (o2.length) {
        include('js/photo-swipe/klass.min.js');
        include('js/photo-swipe/code.photoswipe.jquery-3.0.5.js');
        include('js/photo-swipe/code.photoswipe-3.0.5.min.js');
        $(document).ready(function () {
            $('#gallery').bxSlider({
                pager: false,
                controls: true,
                minSlides: 1,
                maxSlides: 1,
                infiniteLoop: false,
                moveSlides: 1
            });
        });
    }

})(jQuery);

/* FancyBox
 ========================================================*/
;
(function ($) {
    var o = $('.quickview');
    var o2 = $('#default_gallery');
    if (o.length > 0 || o2.length > 0) {
        include('js/fancybox/jquery.fancybox.js');
    }

    if (o.length) {
        $(document).ready(function () {
            o.fancybox({
                maxWidth: 800,
                maxHeight: 600,
                fitToView: false,
                width: '70%',
                height: '70%',
                autoSize: false,
                closeClick: false,
                openEffect: 'elastic',
                closeEffect: 'elastic'
            });
        });
    }

})(jQuery);

/* Superfish menus
 ========================================================*/
;
(function ($) {
    include('js/superfish.js');
    $(window).load(function () {
        $('#tm_menu .menu').superfish();
    });
})(jQuery);

(function($){ //create closure so we can safely use $ as alias for jQuery
	  $(document).ready(function(){
		var exampleOptions = {
			delay:       1000,                            // one second delay on mouseout
			animation:   {opacity:'show',height:'show'},  // fade-in and slide-down animation
			speed:       'fast',                          // faster animation speed
			autoArrows:  true
		}
		// initialise plugin
		var example = $('#tm_menu').superfish(exampleOptions);
	  });

	})(jQuery);

/* Owl Carousel
 ========================================================*/
;
(function ($) {
    var o = $('.related-slider');
    if (o.length > 0) {
        $(document).ready(function () {
            o.owlCarousel({
                // Most important owl features
	items : 4,
	itemsCustom : false,
	itemsDesktop : [1199,3],
	itemsDesktopSmall : [991,2],
	itemsTablet: [767,2],
	itemsTabletSmall: false,
	itemsMobile : [600,1],

	// Navigation
    pagination: false,
	navigation : true,
	navigationText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],

                
            });
        });
    }
})(jQuery);

/* Box Carousel
 ========================================================*/
;
(function ($) {
    var o = $('.box-carousel');
    if (o.length > 0) {
    $(document).ready(function () {
        o.owlCarousel({
    // Most important owl features
	items : 4,
	itemsCustom : false,
	itemsDesktop : [1199,4],
	itemsDesktopSmall : [991,3],
	itemsTablet: [767,2],
	itemsTabletSmall: false,
	itemsMobile : [480,1],
	autoPlay : 7000,
	// Navigation
    pagination: false,
	navigation : true,
	navigationText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>']
            });
        });
    }
})(jQuery);

/* GREEN SOCKS
 ========================================================*/
;
(function ($) {
    var o = $('html');
    if (o.hasClass('desktop') && o.find('body').hasClass('common-home')) {
        include('js/greensock/jquery.gsap.min.js');
        include('js/greensock/TimelineMax.min.js');
        include('js/greensock/TweenMax.min.js');
        include('js/greensock/jquery.scrollmagic.min.js');

        function listBlocksAnimate(block, element, row, offset, difEffect) {
            if ($(block).length) {
                var i = 0;
                var j = row;
                var k = 1;
                var effect = -1;

                $(element).each(function () {
                    i++;

                    if (i > j) {
                        j += row;
                        k = i;
                        effect = effect * (-1);
                    }

                    if (effect == -1 && difEffect == true) {
                        ef = TweenMax.from(element + ':nth-child(' + i + ')', 0.5, {
                            left: -1 * 200 - i * 300 + "px",
                            alpha: 0,
                            ease: Power1.easeOut
                        })

                    } else {
                        ef = TweenMax.from(element + ':nth-child(' + i + ')', 0.5, {
                            right: -1 * 200 - i * 300 + "px",
                            alpha: 0,
                            ease: Power1.easeOut
                        })
                    }

                    var scene_new = new ScrollScene({
                        triggerElement: element + ':nth-child(' + k + ')',
                        offset: offset,
                    }).setTween(ef)
                        .addTo(controller)
                        .reverse(false);
                });
            }
        }

        function listTabsAnimate(element) {
            if ($(element).length) {
                TweenMax.staggerFromTo(element, 0.3, {alpha: 0, rotationY: -90, ease: Power1.easeOut}, {
                    alpha: 1,
                    rotationY: 0,
                    ease: Power1.easeOut
                }, 0.1);
            }
        }

        $(document).ready(function () {
            controller = new ScrollMagic();
        });

        $(window).load(function () {
            //if ($(".fluid_container").length) {
            //    var welcome = new TimelineMax();
            //
            //    welcome.from(".fluid_container h2", 0.5, {top: -300, autoAlpha: 0})
            //        .from(".fluid_container h4", 0.5, {bottom: -300, autoAlpha: 0});
            //
            //    var scene_welcome = new ScrollScene({
            //        triggerElement: ".fluid_container",
            //        offset: -100
            //    }).setTween(welcome).addTo(controller).reverse(false);
            //}
        });
    }
})(jQuery);

/* Swipe Menu
 ========================================================*/
;
(function ($) {
    $(document).ready(function () {
        $('#page').click(function () {
            if ($(this).parents('body').hasClass('ind')) {
                $(this).parents('body').removeClass('ind');
                return false
            }
        })

        $('.swipe-control').click(function () {
            if ($(this).parents('body').hasClass('ind')) {
                $(this).parents('body').removeClass('ind');
                $(this).removeClass('active');                
                return false
            }
            else {
                $(this).parents('body').addClass('ind');
                $(this).addClass('active');
				$('.top-button').find('.btn-group').removeClass('open');
				$('.bg-cart').removeClass('open');
                return false
            }
        })
    });

})(jQuery);

/* EqualHeights
 ========================================================*/
;
(function ($) {
    var o = $('[data-equal-group]');
    if (o.length > 0) {
        include('js/jquery.equalheights.js');
    }
})(jQuery);

$(document).ready(function () {
    /***********CATEGORY DROP DOWN****************/
    $("#menu-icon").on("click", function () {
        $("#menu-gadget .menu").slideToggle();
        $(this).toggleClass("active");
    });

    $('#menu-gadget .menu').find('li>ul').before('<i class="fa fa-angle-down"></i>');
    $('#menu-gadget .menu li i').on("click", function () {
        if ($(this).hasClass('fa-angle-up')) {
            $(this).removeClass('fa-angle-up').parent('li').find('> ul').slideToggle();
        }
        else {
            $(this).addClass('fa-angle-up').parent('li').find('> ul').slideToggle();
        }
    });
    if ($('.breadcrumb').length) {
        var o = $('.breadcrumb li:last-child');
        var str = o.find('a').html();
        o.find('a').css('display', 'none');
        o.append('<span>' + str + '</span>');
    }

});

var flag = true;

function respResize() {
    var width = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;

    if ($('aside').length) {
        var leftColumn = $('aside');
    } else {
        return false;
    }


    if (width > 767) {
        if (!flag) {
            flag = true;
            leftColumn.insertBefore('#content');
            $('.col-sm-3 .box-heading').unbind("click");

            $('.col-sm-3 .box-content').each(function () {
                if ($(this).is(":hidden")) {
                    $(this).slideToggle();
                }
            })
        }
    } else {
        if (flag) {
            flag = false;
            leftColumn.insertAfter('#content');

            $('.col-sm-3 .box-content').each(function () {
                if (!$(this).is(":hidden")) {
                    $(this).parent().find('.box-heading').addClass('active');
                }
            });

            $('.col-sm-3 .box-heading').bind("click", function () {
                if ($(this).hasClass('active')) {
                    $(this).removeClass('active').parent().find('.box-content').slideToggle();
                }
                else {
                    $(this).addClass('active');
                    $(this).parent().find('.box-content').slideToggle();
                }
            })
        }
    }
}

$(window).resize(function () {
    clearTimeout(this.id);
    this.id = setTimeout(respResize, 500);
});

