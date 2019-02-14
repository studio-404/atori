var Config = {
	website:"http://atori.ge/",
	website_:"http://atori.ge",
	ajax:"http://atori.ge/ge/ajax/index", 
	pleaseWait:"მოთხოვნა იგზავნება...",
	mainLanguage:"ge"
};

$(document).ready(function() {
   
     $('#ComplatedDiv').bind('scroll', function() {
            if ($(this).scrollTop() + $(this).innerHeight() >= $(this)[0].scrollHeight) {
               $('.ComplatedDiv').addClass('ScrollEnd');
            }else {
				$('.ComplatedDiv').removeClass('ScrollEnd');
			}
        })   

		 
	$('.AboutInfo').slimScroll({
		height: '100%',
		railVisible: false,
		alwaysVisible: false,
		wheelStep: 30, 
		allowPageScroll : false,
	});
	
	
	
	
	$('.TermsDivContent').slimScroll({
		height: '100%',
		railVisible: false,
		alwaysVisible: false,
		wheelStep: 30, 
		allowPageScroll : false,
	});
	 
	 
		
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


if (document.documentElement.clientWidth > 992) {
	$(function() {
		$("#OnGoingDiv").niceScroll({ 
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
	
	
	
	$('.UnderConstruction').hover(function(){ 
		var Size = $(this).attr('Size');
		$(this).data('tipText', Size).removeAttr('Size');
		$('<p class="tooltip_2"></p>')
		.html(Size)
		.appendTo('body')
		.show();
	}, function() { 
		$(this).attr('Size', $(this).data('tipText'));
		$('.tooltip_2').remove();
	})
	.mousemove(function(e){
		var mousex = e.pageX + 43; 
		var mousey = e.pageY - 85; 
		$('.tooltip_2')
		.css({ top: mousey, left: mousex })
	});
	 	
	$('.FloorHover').hover(function(){ 
		var Size = $(this).attr('Size');
		$(this).data('tipText', Size).removeAttr('Size');
		$('<p class="tooltip_3"></p>')
		.html(Size)
		.appendTo('body')
		.show();
	}, function() { 
		$(this).attr('Size', $(this).data('tipText'));
		$('.tooltip_3').remove();
	})
	.mousemove(function(e){
		var mousex = e.pageX - 240; 
		var mousey = e.pageY - 80; 
		$('.tooltip_3')
		.css({ top: mousey, left: mousex })
	});
	
	
}); 	  
  
  
 
$(document).ready(function() {
	$('#ApartamentModal').on('shown.bs.modal', function() {
        $(document).off('focusin.modal');
		if (document.documentElement.clientWidth > 992) {	
			$('.ApartInfoBox .Info ul').slimScroll({
				height: '200px',
				railVisible: true,
				alwaysVisible: true,
				wheelStep: 10, 
				allowPageScroll : true,
			});
		}
	
    });
//if (document.documentElement.clientWidth > 992) {		
	//$('#PlanModal').modal('toggle');
	$("#PlanModal").on("shown.bs.modal", function() {
		$('.FloorImageDiv map').imageMapResize();	
		$('.FloorImageDiv .map').maphilight({ 
			fillColor: '40a7f4',
			fill: true, 
			fillOpacity: 0.45,
			stroke: false,
			strokeColor: '40a7f4',
			strokeOpacity: 1, 
		});
	})
//}	
if (document.documentElement.clientWidth > 992) {	
	$('map').imageMapResize();	
	$('.map').maphilight({ 
		fillColor: '40a7f4',
		fill: true, 
		fillOpacity: 0.45,
		stroke: false,
		strokeColor: '40a7f4',
		strokeOpacity: 1, 
	});
}	 
	 
	 
		
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
        verticalSwiping: false ,

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


 
/* Gio js */
$(document).on("click", ".sendEmail", function(){
	
	var ajaxFile = "/sendmessage";
	$("#g-output").html("...");
	var lang = $("#lang").val();
	var namelname = $(".namelname").val();
	var email = $(".email").val();
	var phone = $(".phone").val();
	var message = $(".message").val();
	
	$.ajax({
		method: "POST",
		url: Config.ajax + ajaxFile,
		data: { namelname:namelname, email:email, phone:phone, message:message, lang:lang }
	}).done(function( msg ) {
		var obj = $.parseJSON(msg);
		if(obj.Success.Code==1){
			var text = obj.Success.Text;
		}else{
			var text = obj.Error.Text;
		}
		$("#g-output").html(text);
		$(".namelname").val("");
		$(".email").val("");
		$(".phone").val("");
		$(".message").val("");
	});
});

function floorChange(floorid){
	$("body").addClass("BodyLoader");
	
	setTimeout(function() {
		$("#PlanModal").modal('hide');
		$(".g-floor[data-floorid='"+floorid+"']").click();

		setTimeout(function(){
			$("body").removeClass("BodyLoader");
		},500);
   	}, 500);
}

function floorChange2(idx){
	$("body").addClass("BodyLoader");
	
	setTimeout(function() {
		$("#ApartamentModal").modal('hide');
       $(".flooorGegma_"+idx).click();
       setTimeout(function(){
       		$("body").removeClass("BodyLoader");
       },500);
   	}, 500);
}


$(document).on("click", ".g-floor", function(){
	var ajaxFile = "/loadfloor";
	var floorid = parseInt($(this).attr("data-floorid"));
	var lang = $("#lang").val();
	
	$.ajax({
		method: "POST",
		url: Config.ajax + ajaxFile,
		data: { floorid:floorid, lang:lang }
	}).done(function( msg ) {
		var obj = $.parseJSON(msg);
		if(obj.Success.Code==1){
			var text = obj.Success.Text;
			var floor_out = obj.Success.floor_out;
			$(".FloorFirstModal").html(floor_out);
			$("#PlanModal").modal("show");

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


			$(".selectpicker").selectpicker();

			$(".selectpicker").on("changed.bs.select", function(e, clickedIndex, newValue, oldValue) {
			    console.log(this.value, clickedIndex, newValue, oldValue);
			    var selectedText = $(this).find("option:selected").text();
			    $("#floorNum__").text(selectedText);
			    floorChange(this.value);
			});



		}else{
			var text = obj.Error.Text;
		}
		
	});
});


$(document).on("change", "#SelectOpenModal", function(){
	var ajaxFile = "/loadfloor";
	var floorid = parseInt($(this).val());
	var lang = $("#lang").val();
	
	$.ajax({
		method: "POST",
		url: Config.ajax + ajaxFile,
		data: { floorid:floorid, lang:lang }
	}).done(function( msg ) {
		var obj = $.parseJSON(msg);
		if(obj.Success.Code==1){
			var text = obj.Success.Text;
			var floor_out = obj.Success.floor_out;
			$(".FloorFirstModal").html(floor_out);
			$("#PlanModal").modal("show");

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

		}else{
			var text = obj.Error.Text;
		}
		
	});

});

function openwin(u){
	window.open(u, '_blank');
}

function loadApartment(idx, floor){
	var ajaxFile = "/loadapartment";
	var lang = $("#lang").val();
	$.ajax({
		method: "POST",
		url: Config.ajax + ajaxFile,
		data: { idx:parseInt(idx), floor:parseInt(floor), lang:lang }
	}).done(function( msg ) {
		var obj = $.parseJSON(msg);
		if(obj.Success.Code==1){
			var text = obj.Success.Text;
			var apartment_out = obj.Success.apartment_out;
			$(".ApartFirstModal").html(apartment_out);

			let c = 1;
			$(".Info ul li").each(function(){
				$(this).prepend("<span>"+c+"</span>");
				c++;
			});

			$("#ApartamentModal").modal("show");


			$(".floorSelector2").selectpicker(); 

			$(".floorSelector2").on("changed.bs.select", function(e, clickedIndex, newValue, oldValue) {
			    //console.log(this.value, clickedIndex, newValue, oldValue);
			    var selectedText = $(this).find("option:selected").text();
			    $("#floorNum__2").text(selectedText);
			    floorChange2(this.value);
			});
			

		}else{
			var text = obj.Error.Text;
		}
		
	});
}

$(document).on("click", ".CalculatorButton", function(){
	$(".CalcParentDiv").addClass("Right0"); 
	$(".CalcBackgrond").addClass("Show"); 
});

$(document).on("click", ".closeCalc", function(){
	$(".CalcParentDiv").removeClass("Right0"); 
	$(".CalcBackgrond").removeClass("Show"); 
});

// $(document).on("change", ".floorSelector", function(e){
// 	var val = e.value;
// 	console.log($(this).val());
// 	$("#floorNum__").text(val);
// });