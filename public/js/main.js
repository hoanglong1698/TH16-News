;(function () {

    'use strict';

    var owlCarousel = function(){

        $('#slider1').owlCarousel({
            loop: false,
            margin: 10,
            dots: false,
            nav: true,
            navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 4
                }
            }
        });

        $('#slider2').owlCarousel({
            loop: false,
            margin: 10,
            dots: false,
            nav: true,
            navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 2
                },
                1000: {
                    items: 3
                }
            }
        });

        $('#slider3').owlCarousel({
            loop: false,
            margin: 10,
            dots: false,
            nav: true,
            navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 2
                },
                1000: {
                    items: 3
                }
            }
        });

    };


    var videos = function() {


        $(document).ready(function () {
            $('#play-video').on('click', function (ev) {
                $(".fh5co_hide").fadeOut();
                $("#video")[0].src += "&autoplay=1";
                ev.preventDefault();

            });
        });


        $(document).ready(function () {
            $('#play-video_2').on('click', function (ev) {
                $(".fh5co_hide_2").fadeOut();
                $("#video_2")[0].src += "&autoplay=1";
                ev.preventDefault();

            });
        });

        $(document).ready(function () {
            $('#play-video_3').on('click', function (ev) {
                $(".fh5co_hide_3").fadeOut();
                $("#video_3")[0].src += "&autoplay=1";
                ev.preventDefault();

            });
        });


        $(document).ready(function () {
            $('#play-video_4').on('click', function (ev) {
                $(".fh5co_hide_4").fadeOut();
                $("#video_4")[0].src += "&autoplay=1";
                ev.preventDefault();

            });
        });
    };

    var googleTranslateFormStyling = function() {
        $(window).on('load', function () {
            $('.goog-te-combo').addClass('form-control');
        });
    };


    var contentWayPoint = function() {
        var i = 0;

        $('.animate-box').waypoint( function( direction ) {

            if( direction === 'down' && !$(this.element).hasClass('animated-fast') ) {

                i++;

                $(this.element).addClass('item-animate');
                setTimeout(function(){

                    $('body .animate-box.item-animate').each(function(k){
                        var el = $(this);
                        setTimeout( function () {
                            var effect = el.data('animate-effect');
                            if ( effect === 'fadeIn') {
                                el.addClass('fadeIn animated-fast');
                            } else if ( effect === 'fadeInLeft') {
                                el.addClass('fadeInLeft animated-fast');
                            } else if ( effect === 'fadeInRight') {
                                el.addClass('fadeInRight animated-fast');
                            } else {
                                el.addClass('fadeInUp animated-fast');
                            }

                            el.removeClass('item-animate');
                        },  k * 50, 'easeInOutExpo' );
                    });

                }, 100);

            }

        } , { offset: '85%' } );
        // }, { offset: '90%'} );
    };


	var goToTop = function() {

		$('.js-gotop').on('click', function(event){
			
			event.preventDefault();

			$('html, body').animate({
				scrollTop: $('html').offset().top
			}, 500, 'swing');
			
			return false;
		});

		$(window).scroll(function(){

			var $win = $(window);
			if ($win.scrollTop() > 200) {
				$('.js-top').addClass('active');
			} else {
				$('.js-top').removeClass('active');
			}

		});
	
	};

	
	$(function(){
		owlCarousel();
		videos();
        contentWayPoint();
		goToTop();
		googleTranslateFormStyling();
	});

}());
function googleTranslateElementInit() {
    new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}


// Util
function range (start, end) {
    let ans = []
    for (let i = start; i <= end; i++) ans.push(i)
    return ans
  }
  function CreateElement (tagName, value, text) {
    let node = document.createElement(tagName)
    node.value = value
    node.text = text
    return node
  }
let _ngay = document.getElementById('ngay')
for (let ngay of range(1, 31)) _ngay.appendChild(CreateElement('option', ngay, ngay))
// Init Month
let _thang = document.getElementById('thang')
for (let thang of range(1, 12)) _thang.appendChild(CreateElement('option', thang, thang))
// Init Year
let _nam = document.getElementById('nam')
for (let nam of range(1900, 2019))  _nam.appendChild(CreateElement('option', nam, nam))


var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
