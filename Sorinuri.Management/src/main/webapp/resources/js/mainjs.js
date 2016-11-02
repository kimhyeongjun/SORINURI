$(document).ready(function() {
	var h = $("body").height();
	var w = $("body").width();
	var windowH = $(window).height();
	var windowW = $(window).width();
	var top = (windowH - 279) / 2;
	var left = (windowW - 656) / 2;

	if(h< windowH) {
		$("#leftbar").css({
			"height" : windowH
		});

		$("#contents").css({
			"width" : w - 209,
			"height" : windowH
		});
	}else {
		$("#leftbar").css({
			"height" : h
		});

		$("#contents").css({
			"width" : w - 209,
			"height" : h
		});
	}
	
	$("#a_title").mouseover(function() {
		$("#a_mouseover").slideDown(400);
	});
	$("#s_title").mouseover(function() {
		$("#s_mouseover").slideDown(400);
	});
	
	$("#leftbar").mouseleave(function() {
		$(".sub_title").slideUp(300);
	});

});