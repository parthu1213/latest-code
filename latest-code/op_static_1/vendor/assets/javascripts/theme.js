(function($) {
  "use strict";

  if ($('.stricky').length) {
    $('.stricky').addClass('original').clone(true).insertAfter('.stricky').addClass('stricked-menu').removeClass('original');
  }
  if ($('.main-navigation .navigation-box').length) {
    var subMenu = $('.main-navigation .sub-menu');
    subMenu.parent('li').children('a').append(function() {
      return '<button class="sub-nav-toggler"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>';
    });
    var mainNavToggler = $('.header-navigation .menu-toggler');
    var subNavToggler = $('.main-navigation .sub-nav-toggler');
    mainNavToggler.on('click', function() {
      var Self = $(this);
      var menu = Self.data('target');
      $(menu).slideToggle();
      $(menu).toggleClass('showen');
      return false;
    });
    subNavToggler.on('click', function() {
      var Self = $(this);
      Self.parent().parent().children('.sub-menu').slideToggle();
      return false;
    });
  }
  if ($('.scroll-to-target').length) {
    $(".scroll-to-target").on('click', function() {
      var target = $(this).attr('data-target');
      // animate
      $('html, body').animate({
        scrollTop: $(target).offset().top
      }, 1000);

      return false;

    });
  }

  function SmoothMenuScroll() {
    var anchor = $('.scrollToLink');
    if (anchor.length) {
      anchor.children('a').bind('click', function(event) {
        if ($(window).scrollTop() > 10) {
          var headerH = '67';
        } else {
          var headerH = '100';
        }
        var target = $(this);
        $('html, body').stop().animate({
          scrollTop: $(target.attr('href')).offset().top - headerH + 'px'
        }, 1200, 'easeInOutExpo');
        anchor.removeClass('current');
        target.parent().addClass('current');
        event.preventDefault();
      });
    }
  }
  SmoothMenuScroll();

  function OnePageMenuScroll() {
    var windscroll = $(window).scrollTop();
    if (windscroll >= 100) {
      var menuAnchor = $('.one-page-scroll-menu .scrollToLink').children('a');
      menuAnchor.each(function() {
        // grabing section id dynamically
        var sections = $(this).attr('href');
        $(sections).each(function() {
          // checking is scroll bar are in section
          if ($(this).offset().top <= windscroll + 100) {
            // grabing the dynamic id of section
            var Sectionid = $(sections).attr('id');
            // removing current class from others
            $('.one-page-scroll-menu').find('li').removeClass('current');
            // adding current class to related navigation
            $('.one-page-scroll-menu').find('a[href*=\\#' + Sectionid + ']').parent().addClass('current');
          }
        });
      });
    } else {
      $('.one-page-scroll-menu li.current').removeClass('current');
      $('.one-page-scroll-menu li:first').addClass('current');
    }
  }

  if ($('.counter').length) {
    $('.counter').counterUp({
      delay: 10,
      time: 3000
    });
  }

  if ($('.side-menu__toggler').length) {
    $('.side-menu__toggler').on('click', function(e) {
      $('.side-menu__block').addClass('active');
      e.preventDefault();
    });
  }

  if ($('.side-menu__block-overlay').length) {
    $('.side-menu__block-overlay').on('click', function(e) {
      $('.side-menu__block').removeClass('active');
      e.preventDefault();
    });
  }


  $(window).on('scroll', function() {
    if ($('.stricked-menu').length) {
      var headerScrollPos = 100;
      var stricky = $('.stricked-menu');
      if ($(window).scrollTop() > headerScrollPos) {
        stricky.addClass('stricky-fixed');
      } else if ($(this).scrollTop() <= headerScrollPos) {
        stricky.removeClass('stricky-fixed');
      }
    }
    OnePageMenuScroll();
    if ($('.scroll-to-top').length) {
      var strickyScrollPos = 100;
      if ($(window).scrollTop() > strickyScrollPos) {
        $('.scroll-to-top').fadeIn(500);
      } else if ($(this).scrollTop() <= strickyScrollPos) {
        $('.scroll-to-top').fadeOut(500);
      }
    }

  });


  function toggleTabWithSwitch() {

    var toggleSwitch = $('#switch-toggle-tab label.switch');
    var TabTitle = $('#switch-toggle-tab li');
    var monthTabTitle = $('#switch-toggle-tab li.month');
    var yearTabTitle = $('#switch-toggle-tab li.year');
    var monthTabContent = $('#month');
    var yearTabContent = $('#year');
    // hidden show deafult;
    monthTabContent.fadeIn();
    yearTabContent.fadeOut();

    function toggleHandle() {
      if (toggleSwitch.hasClass('on')) {
        yearTabContent.fadeOut();
        monthTabContent.fadeIn();
        monthTabTitle.addClass('active');
        yearTabTitle.removeClass('active');
      } else {
        monthTabContent.fadeOut();
        yearTabContent.fadeIn();
        yearTabTitle.addClass('active');
        monthTabTitle.removeClass('active');
      }
    };
    monthTabTitle.on('click', function() {
      toggleSwitch.addClass('on').removeClass('off');
      toggleHandle();
      return false;
    });
    yearTabTitle.on('click', function() {
      toggleSwitch.addClass('off').removeClass('on');
      toggleHandle();
      return false;
    });
    toggleSwitch.on('click', function() {
      toggleSwitch.toggleClass('on off');
      toggleHandle();
    });

  }

  $(window).on('load', function() {

    toggleTabWithSwitch();
    if ($('.app-shot-one__carousel').length) {
      $('.app-shot-one__carousel').owlCarousel({
        loop: true,
        margin: 43,
        nav: false,
        dots: false,
        autoWidth: false,
        autoplay: true,
        smartSpeed: 700,
        autoplayTimeout: 5000,
        autoplayHoverPause: true,
        slideBy: 5,
        responsive: {
          0: {
            items: 1
          },
          480: {
            items: 2
          },
          600: {
            items: 3
          },
          991: {
            items: 4
          },
          1000: {
            items: 5
          },
          1200: {
            items: 5
          }
        }
      });
    }

    if ($('.testimonials-one__carousel').length) {
      $('.testimonials-one__carousel').owlCarousel({
        loop: true,
        margin: 0,
        nav: false,
        dots: false,
        autoWidth: false,
        autoplay: true,
        smartSpeed: 700,
        autoplayTimeout: 5000,
        autoplayHoverPause: true,
        items: 1
      });

      $('.testimonials-one__nav-left').on('click', function() {
        $('.testimonials-one__carousel').trigger('next.owl.carousel');
        return false;
      });
      $('.testimonials-one__nav-right').on('click', function() {
        $('.testimonials-one__carousel').trigger('prev.owl.carousel');
        return false;
      });
    }


    if ($('.countdown-one__list').length) {
      $('.countdown-one__list').countdown({
        date: "June 7, 2020 15:03:25",
        render: function(date) {
          this.el.innerHTML =
            "<li> <div class='days'> <i>" + date.days + "</i> <span>Days</span> </div> </li>" +
            "<li> <div class='hours'> <i>" + date.hours + "</i> <span>Hours</span> </div> </li>" +
            "<li> <div class='minutes'> <i>" + date.min + "</i> <span>Minutes</span> </div> </li>" +
            "<li> <div class='seconds'> <i>" + date.sec + "</i> <span>Seconds</span> </div> </li>";
        }
      });
    }
  });

})(jQuery);
