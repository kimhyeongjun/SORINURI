$(document).ready(function() {
	var h = $("body").height();
	var w = $("body").width();
	var windowH = $(window).height();
	var windowW = $(window).width();
	var top = (windowH - 600) / 2;
	var left = (windowW - 900) / 2;

	if (h < windowH) {
		$("#leftbar").css({
			"height" : windowH
		});

		$("#contents").css({
			"width" : w - 209,
			"height" : windowH
		});
	} else {
		$("#leftbar").css({
			"height" : h
		});

		$("#contents").css({
			"width" : w - 209
		});
	}
	
	console.log(h);

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

	$("#student_space, #student_space #s_list, #student_space #search, #schedule_list").css({
		"width" : cw - 60, "min-width":"800px"
	});

	// 팝업//

	$("#popup").css({
		"display" : "none"
	});

	$("#popup_contents").css({
		"display" : "none"
	});

	$("#submit").click(function() {
		$("#popup").css({
			"display" : "block",
			"position" : "fixed",
			"background" : "#fff",
			"width" : w,
			"height" : windowH,
			"z-index" : "10000",
			"top" : "0",
			"left" : "0",
			"opacity" : "0.5"
		});

		$("#popup_contents").css({
			"display" : "block",
			"position" : "fixed",
			"z-index" : "10001",
			"top" : top,
			"left" : left
		});
	});
	$("#popup,#cancel").click(function() {
		$("#popup,#popup_contents").css({
			"display" : "none"
		});
	});

	/*
	 * var count=0; $("#delete_btn, #delete_btn_all").css({"display":"none"});
	 * $("#delete").click(function() {
	 * $("#delete_btn,#delete_btn_all").css({"display":"block"}); count=1; });
	 */
	$("#delete_btn_all #all").click(function() {
		// var chk = $(this).is(":checked");
		if ($("#delete_btn_all #all").prop("checked")) {
			$("#delete_btn input[type=checkbox]").prop("checked", true);
		} else {
			$("#delete_btn input[type=checkbox]").prop("checked", false);
		}

	});
	
	
	day("#s_import");
	function day(a) {
		var $a = $(a);
		
		$a.find(".weekday").each(function(index) {
			$(this).click(function() {
				if($(this).prop("checked")) {
					$(this).before("<select name='time'><option value='1'>1교시</option><option value='2'>2교시</option><option value='3'>3교시</option><option value='4'>4교시</option><option value='5'>5교시</option><option value='6'>6교시</option><option value='7'>7교시</option><option value='8'>8교시</option></select>");
				} else {
					$("select[name=time]").remove();
					$(".weekday[type=checkbox]").prop("checked", false);
				}
			});
		});
	}
	

	$("#student_space #btn_bar").css({
		"width" : cw - 60,
		"position" : "fixed",
		"top" : windowH-100,
		"min-width":"800px"
	});

});