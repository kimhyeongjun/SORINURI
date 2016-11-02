<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="user" scope="session" class="com.sori.mg.repository.User" />
<div id="leftbar">
	<div id="login_info">
		<%
			if (user.getId() != null) {
		%>
			<script language="javascript">
				$("#login a").replaceWith('<a>로그아웃</a>');
				$("#login a").prop('href', "http://gudwns0312.cafe24.com/view/logout");
			</script>
			<ul id="info">
				<li>소속 : 소리누리언어발달센터</li>
				<li>이름 : <%=user.getName() %></li>
				<li>학생수 : 20명</li>
				<li>담당 과목 : <%=user.getUserprogram() %></li>
			</ul>
		<%} else {%>
			<script>
				$("#contents").css({"display":"none"});
				$(".title a").prop('href', "javascript:window.alert('\n로그인이 필요합니다.\n\n박스');");
			</script>
			<ul id="info">
				<li>소속 : 소리누리언어발달센터</li>
				<li>이름 :</li>
				<li>학생수 : </li>
				<li>담당 과목 :</li>
			</ul>
		<%} %>
	</div>
	<div id="top_line"></div>
	<div class="space" id="a_space">
		<div class="icon01">
			<img src="../resources/images/icon01.png">
		</div>
		<div class="title" id="a_title">
			<a href="http://gudwns0312.cafe24.com/account/payment">회계관리</a>
		</div>
		<div class="stdout"></div>
		<ul class="sub_title" id="a_mouseover">
			<li style="margin-right: 8px;"><img src="../resources/images/icon02.png"></li>
			<li><a href="http://gudwns0312.cafe24.com/account/payment">수업료관리</a></li>
			<li class="stdout"></li>
			<li style="margin-right: 8px;"><img src="../resources/images/icon02.png"></li>
			<li><a href="http://gudwns0312.cafe24.com/account/voucher">바우처관리</a></li>
			<li class="stdout"></li>
			<li style="margin-right: 8px;"><img src="../resources/images/icon02.png"></li>
			<li><a href="http://gudwns0312.cafe24.com/account/aid">교보재관리</a></li>
			<li class="stdout"></li>
			<li style="margin-right: 8px;"><img src="../resources/images/icon02.png"></li>
			<li>소리누리 수익</li>
		</ul>
		<div class="stdout"></div>
		<div class="line"></div>
		<div class="stdout"></div>
	</div>
	<div class="space">
		<div class="icon01">
			<img src="../resources/images/icon01.png">
		</div>
		<div class="title" id="s_title">
			<a href="http://gudwns0312.cafe24.com/student/list">학생관리</a>
		</div>
		<div class="stdout"></div>
		<ul class="sub_title" id="s_mouseover">
			<li style="margin-right: 8px;"><img src="../resources/images/icon02.png"></li>
			<li><a href="http://gudwns0312.cafe24.com/student/list">전체 학생 관리</a></li>
			<li class="stdout"></li>
			<li style="margin-right: 8px;"><img src="../resources/images/icon02.png"></li>
			<li>학생 개인 관리</li>
			<li class="stdout"></li>
			<li style="margin-right: 8px;"><img src="../resources/images/icon02.png"></li>
			<li>원생 수 관리</li>
		</ul>
		<div class="stdout"></div>
		<div class="line"></div>
		<div class="stdout"></div>
	</div>
	<div class="space">
		<div class="icon01">
			<img src="../resources/images/icon01.png">
		</div>
		<div class="title"><a href="http://gudwns0312.cafe24.com/schedule/list">스케줄 관리</a></div>
		<div class="stdout"></div>
		<div class="line"></div>
		<div class="stdout"></div>
	</div>
</div>

	<div id="join_form">
		<!-- 로그인 -->
		<form action="<%=request.getContextPath() %>/view/login" method='post'>
			<div style="margin-bottom: 20px; font-size: 13px; font-weight: 500;">로그인</div>
			<label class="userid"> 
				<label>아이디</label> 
				<input id="login_id" type="text" placeholder="아이디 입력" name="userid">
			</label> 
			<label class="passwd"> 
				<label>패스워드</label> 
				<input type="password" placeholder="패스워드 입력" name="passwd">
			</label>
			<input type="submit" value="로그인"> 
		</form>
		<div style="border-top:1px solid #ccc; width: 229px; margin-top: 20px;"></div>
		<!-- 회원가입-->
		<form action='<%=request.getContextPath() %>/view/join' method="post">
			<div style="margin: 20px 0px; font-size: 13px; font-weight: 500;">회원가입</div>
			<label class="userid"> 
				<label>아이디</label> 
				<input id="join_id" type="text" placeholder="아이디 입력" name="userid">
			</label> 
			<label id="username"> 
				<label>이름</label> 
				<input type="text" placeholder="이름 입력" name="username">
			</label> 
			<label class="passwd"> 
				<label>패스워드</label> 
				<input type="password" placeholder="패스워드 입력" name="passwd">
			</label> 
			<label id="userprogram"> 
				<label>과목</label> 
				<input type="text" placeholder="담당과목 입력" name="userprogram">
			</label>
			<input type="submit" value="회원가입">
		</form> 
	</div>

<div class="stdout"></div>
