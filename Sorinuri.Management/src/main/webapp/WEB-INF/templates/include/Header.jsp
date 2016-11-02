<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="header">
	<div id="logo">
		<div>
			<a href="http://gudwns0312.cafe24.com/view/main">
				<span style="font-weight: 900; font-size: 18px;">소리누리</span>
				관리프로그램
			</a>
		</div>
		<ul id="login_join">
			<li id="login">
				<a href="#">로그인</a>
			</li>
			<li>|</li>
			<li id="join">
				<a href="#">회원가입</a>
			</li>
		</ul>
	</div>
	<div id="bar">
		<div style="width: 42px; height: 42px; margin-left: 37px;">
			<a>
				<img src="../resources/images/print_img.png">
			</a>
		</div>
		<div style="font-size: 30px; width: 35px; height: 42px; border-right: 1px solid #fff; margin-right: 37px;"></div>
		<div style="width: 42px; height: 42px;">
			<a href="javascript:toXLS()">
				<img src="../resources/images/save_img.png">
			</a>
		</div>
		<div style="font-size: 30px; width: 35px; height: 42px; border-right: 1px solid #fff; margin-right: 37px;"></div>
	</div>
</div>
<script language="javascript">
	$("#join a, #login a").click(function() {
		$("#join_form").animate({
			"height" : 'toggle'
		}, {
			complete : function() {
				$("#login_id").focus();
			}
		});

	});
</script>