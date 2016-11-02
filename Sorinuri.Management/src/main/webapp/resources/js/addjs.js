$(document).ready(function() {
	var h = $("#contents").height();
	var w = $("body").width();
	var bh = $("body").height();
	var windowH = $(window).height();
	var windowW = $(window).width();
	var top = (windowH-279)/2;
	var left = (windowW-656)/2;

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
			"height" : bh
		});

		$("#contents").css({
			"width" : w - 209,
			"height" : bh
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

	var cw = $("#contents").width();

	$("#student_space, #student_space #s_list, #student_space #search, #student_space #btn_bar").css({
		"width" : cw - 60
	});

	// 팝업//
	
		$("#popup").css({
			"display" : "block",
			"position" : "absolute",
			"background" : "#fff",
			"width" : w,
			"height" : bh,
			"z-index" : "10000",
			"top" : "0",
			"left" : "0",
			"opacity" : "0.5"
		});

		$("#popup_contents").css({
			"display" : "block",
			"position" : "absolute",
			"z-index" : "10001",
			"top" : top,
			"left" : left
		});

	$("#popup,#cancel").click(function() {
		$("#popup,#popup_contents").css({
			"display" : "none"
		});
	});
	
});