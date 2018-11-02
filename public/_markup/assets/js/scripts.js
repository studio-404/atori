
  
  
 
  
$(document).ready(function() {
   
     $('#ComplatedDiv').bind('scroll', function() {
            if ($(this).scrollTop() + $(this).innerHeight() >= $(this)[0].scrollHeight) {
               $('.ComplatedDiv').addClass('ScrollEnd');
            }else {
				$('.ComplatedDiv').removeClass('ScrollEnd');
			}
        })     

   
    
});  
  
  
  
  
  
  
  

  
if (document.documentElement.clientWidth > 992) {
	$(function() {
		$("#ComplatedDiv").niceScroll({ 
			scrollspeed: 300,
			preservenativescrolling: false,
			cursorwidth: '8px',
			cursorborder: 'none',
			cursorborderradius:'0px',
			cursorcolor:"#3365ab",
			autohidemode: false, 
			background:"#999999",
			horizrailenabled:false, 
			boxzoom:true,
			horizrailenabled:false
			
		});
		
		
	});
}


$(document).ready(function() {
	
 
	
  $(".animsition").animsition({
    inClass: 'zoom-in-sm',
    outClass: 'zoom-out-sm',
    inDuration: 800,
    outDuration: 800,
    linkElement: '.animsition-link',
    // e.g. linkElement: 'a:not([target="_blank"]):not([href^="#"])'
    loading: true,
    loadingParentElement: 'body', //animsition wrapper element
    //loadingClass: 'animsition-loading',
    loadingInner: '', // e.g '<img src="loading.svg" />'
    timeout: true,
    timeoutCountdown: 1000,
    onLoadEvent: true,
   // browser: [ 'animation-duration', '-webkit-animation-duration'],
    // "browser" option allows you to disable the "animsition" in case the css property in the array is not supported by your browser.
    // The default setting is to disable the "animsition" in a browser that does not support "animation-duration".
    //overlay : false,
    //overlayClass : 'animsition-overlay-slide',
    overlayParentElement : 'body',
    transition: function(url){ window.location.href = url; }
  });
});
  
  
  
  
 /*
$(function(){
	var windowH = $('.MainSection').height();
	var wrapperH = $('.Height100').height();
	if(windowH > wrapperH) {                            
		$('.Height100').css({'height':($(window).height())+'px'});
	}                                                                               
	$(window).resize(function(){
		var windowH = $(window).height();
		var wrapperH = $('.Height100').height();
		var differenceH = windowH - wrapperH;
		var newH = wrapperH + differenceH;
		var truecontentH = $('.Height100').height();
		if(windowH > truecontentH) {
			$('.Height100').css('height', (newH)+'px');
		}

	})          
});
 
  
  
  */
  
  
$(document).ready(function() { 
	$('.masterTooltip').hover(function(){ 
		var Size = $(this).attr('Size');
		$(this).data('tipText', Size).removeAttr('Size');
		$('<p class="tooltip"></p>')
		.html(Size)
		.appendTo('body')
		.show();
	}, function() { 
		$(this).attr('Size', $(this).data('tipText'));
		$('.tooltip').remove();
	})
	.mousemove(function(e){
		var mousex = e.pageX - 220; 
		var mousey = e.pageY - 55; 
		$('.tooltip')
		.css({ top: mousey, left: mousex })
	});
	
	 
	$('#SelectOpenModal').change(function(){ 
		var title = $(this).val(); 
		$('#PlanModal').modal('show');
	});
}); 	  
  
  
 
$(document).ready(function() {
	$('#ApartamentModal').on('shown.bs.modal', function() {
        $(document).off('focusin.modal');
    });
		
	//$('#PlanModal').modal('toggle');
	$("#PlanModal").on("shown.bs.modal", function() {
		$('map').imageMapResize();	
		$('.map').maphilight({ 
			fillColor: '40a7f4',
			fill: true, 
			fillOpacity: 0.45,
			stroke: false,
			strokeColor: '40a7f4',
			strokeOpacity: 1, 
		});
	})
	
	$('map').imageMapResize();	
	$('.map').maphilight({ 
		fillColor: '40a7f4',
		fill: true, 
		fillOpacity: 0.45,
		stroke: false,
		strokeColor: '40a7f4',
		strokeOpacity: 1, 
	});
	 
	 
	 
		
	$(".OpenGallery").click(function(){ 
		$(".ApartGallery").addClass("Open"); 
		$("body").addClass("MobileStyle"); 
	});
	$(".OpenLocation").click(function(){ 
		$(".ApartLocation").addClass("Open"); 
		$("body").addClass("MobileStyle"); 
	});
	$(".OpenTerms").click(function(){ 
		$(".ApartTerms").addClass("Open"); 
		$("body").addClass("MobileStyle"); 
	});

	$(".CloseApartDiv").click(function(){ 
		$(".ApartRightDiv").removeClass("Open"); 
		$("body").removeClass("MobileStyle"); 
	});
	
	$(".Head .CloseIcon").click(function(){ 
		$(".InfoBox").toggleClass("FixedPosition"); 
	});
	
	$(".CalculatorButton").click(function(){ 
		$(".CalcParentDiv").toggleClass("Right0"); 
		$(".CalcBackgrond").addClass("Show"); 
	});
	$(".CalcBackgrond").click(function(){ 
		$(".CalcParentDiv").removeClass("Right0");  
	});
	
	
	$('.Hamburger').click(function(e){
		e.stopPropagation();
		e.preventDefault();
		$('body').toggleClass('ShowMenu');
	});	
	
 
	
	
	// Wow
	new WOW().init(); 	 
	 
	/*
	$(".ComplatedDiv .row").niceScroll({
		scrollspeed:50,
		mousescrollstep:98,
		cursorcolor: "#fcff00",
		cursoropacitymin: 0,
		cursoropacitymax: 1,
		cursorwidth: "6px", // cursor width in pixel (you can also write "5px")
		cursorborder: "0px solid #484d54", 
		cursorborderradius: "0px", 
		touchbehavior: false, 
		hwacceleration: true,
		boxzoom: false, 
		dblclickzoom: true, 
		gesturezoom: true, 
		grabcursorenabled: true, 
		autohidemode: true,  
	});
	*/
	 
 
	$('.BigImages').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: true,
		fade: true,
		speed: 900,
		cssEase: 'cubic-bezier(0.7, 0, 0.3, 1)',
		touchThreshold: 100,
		asNavFor: '.SmallImages .row'
	});
	$('.SmallImages .row').slick({
		slidesToShow: 6,
		slidesToScroll: 1,
		asNavFor: '.BigImages',
		dots: false,
		arrows: false,
		//centerMode: true,
		focusOnSelect: true,
		responsive: [
		{
		  breakpoint: 1024,
		  settings: {
			slidesToShow: 3,
			slidesToScroll: 3, 
		  }
		} 
	  ]
	});
 
	// Input
	$('input, textarea').blur(function(){
		tmpval = $(this).val();
		if(tmpval == '') {
			$(this).next().addClass('empty');
			$(this).next().removeClass('active');
		} else {
			$(this).next().addClass('active');
			$(this).next().removeClass('empty');
		}
	}); 
	
});    


$(document).ready(function() {
    var time = 10;
    var $bar,
        $slick,
        isPause,
        tick,
        percentTime;

    $slick = $('.slider');
    $slick.slick({
        draggable: true,
        adaptiveHeight: false,
        dots: false,
        arrows: false,
        mobileFirst: true,
        pauseOnDotsHover: true,
        speed: 800,
        lazyLoad: 'progressive',

    }).slickAnimation();

    $bar = $('.ChangeSliderProgres .progress');

    $('.SliderWrapper').on({
        mouseenter: function() {
            //isPause = true;
        },
        mouseleave: function() {
            //isPause = false;
        }
    })
    function startProgressbar() {
        resetProgressbar();
        percentTime = 0;
        isPause = false;
        tick = setInterval(interval, 10);
    }
    function interval() {
        if (isPause === false) {
            percentTime += 1 / (time + 0.1);
            $bar.css({
                width: percentTime + "%"
            });
            if (percentTime >= 100) {
                $slick.slick('slickNext');
                startProgressbar();
            }
        }
    }
    function resetProgressbar() {
        $bar.css({
            width: 0 + '%'
        });
        clearTimeout(tick);
    }
    startProgressbar();
});


 

