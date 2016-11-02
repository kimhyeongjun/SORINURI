<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/header_style.css"/>">
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/leftbar_style.css"/>">
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/main_style.css"/>">
<script type="text/javascript" src="<c:url value="/resources/js/jquery-2.2.2.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/mainjs.js"/>" charset="utf-8"></script>
<title>SORINURI</title>
</head>
<body>
	<jsp:include page="include/Header.jsp" />
	<%-- <jsp:include page="/Contents.jsp" /> --%>
	<div id="contents" style="background: #fff; float: right; margin-top: 77px;">
		<div><p th:text=${mytext} ng-app>whatever</p></div>
		<div id="student_space" style="margin-top:60px;">
			<div class="view" style="margin:0px 50px 50px 0px;">
				<div class="m_icon">
					<img src="../resources/images/icon03.png">
				</div>
				<div class="m_title">학생 관리</div>
				<div class="detail">
					<div style="width: 65.5px; margin: 0px auto;">
						<a href='http://gudwns0312.cafe24.com/student/list'>자세히보기</a>
					</div>
				</div>
				<div class="stdout"></div>
				<table>
					<tr>
						<td id="board_title01" class="text">No</td>
						<td id="board_title02" class="text">이름</td>
						<td id="board_title03" class="text">치료 프로그램</td>
						<td id="board_title04" class="text">치료사</td>
						<td id="board_title05" class="text">이번달 수업일수</td>
						<td id="board_title06" class="text">바우처 등록여부</td>
					</tr>
					<c:forEach var="student" items="${info.students}" begin="0" end="14">
						<tr>
							<td>${student.pageNum}</td>
							<td>${student.name}</td>
							<td>${student.program }</td>
							<td>${student.therapist }</td>
							<td>${student.studydate }</td>
							<td>${student.voucher }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="view" >
				<div class="m_icon">
					<img src="../resources/images/icon03.png">
				</div>
				<div class="m_title">수업료 관리</div>
				<div class="detail">
					<div style="width: 65.5px; margin: 0px auto;">
						<a href='http://gudwns0312.cafe24.com/account/payment'>자세히보기</a>
					</div>
				</div>
				<div class="stdout"></div>
				<table>
					<tr>
						<td id="board_title01" class="text">No</td>
						<td id="board_title02" class="text">이름</td>
						<td id="board_title03" class="text">치료프로그램</td>
						<td id="board_title04" class="text">등록일</td>
						<td id="board_title05" class="text">수업료(월)</td>
						<td id="board_title06" class="text">납입</td>
					</tr>
					<c:forEach var="student" items="${info.students}" begin="0" end="14">
						<tr>
							<td>${student.pageNum}</td>
							<td>${student.name }</td>
							<td>${student.program }</td>
							<td>${student.creDate }</td>
							<td style="text-align: right; padding-right: 20px;">${student.payment }원</td>
							<td>${student.paycheck }(${student.count })</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="view" style="margin:0px 50px 50px 0px;" >
				<div class="m_icon">
					<img src="../resources/images/icon03.png">
				</div>
				<div class="m_title">교보재 관리</div>
				<div class="detail">
					<div style="width: 65.5px; margin: 0px auto;">
						<a href='http://gudwns0312.cafe24.com/account/aid'>자세히보기</a>
					</div>
				</div>
				<div class="stdout"></div>
				<table>
					<tr>
						<td id="board_title01" class="text">No</td>
						<td id="board_title02" class="text">이름</td>
						<td id="board_title03" class="text">교보재명</td>
						<td id="board_title04" class="text">치료실</td>
						<td id="board_title05" class="text">구입일</td>
						<td id="board_title06" class="text">구입처</td>
					</tr>
					<c:forEach var="aid" items="${info.aid}" begin="0" end="14">
						<tr>
							<td>${aid.pageNum}</td>
							<td>${aid.therapist }</td>
							<td>${aid.name }</td>
							<td>${aid.program }</td>
							<td>${aid.date}</td>
							<td>${aid.company }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="view" style="width:653px;">
				<div class="m_icon">
					<img src="../resources/images/icon03.png">
				</div>
				<div class="m_title">바우처 관리</div>
				<div class="detail">
					<div style="width: 65.5px; margin: 0px auto;">
						<a href='http://gudwns0312.cafe24.com/account/voucher'>자세히보기</a>
					</div>
				</div>
				<div class="stdout"></div>
				<table>
					<tr>
						<td id="board_title01" class="text">No</td>
						<td id="board_title02" class="text">이름</td>
						<td id="board_title03" class="text">치료프로그램</td>
						<td id="board_title04" class="text">등록일</td>
						<td id="board_title05" class="text">월간지원금</td>
						<td id="board_title06" class="text" style="width: 160px;">바우처 종류</td>
					</tr>
					<c:forEach var="voucher" items="${info.voucher}" begin="0" end="14">
						<tr>
							<td>${voucher.pageNum}</td>
							<td>${voucher.name }</td>
							<td>${voucher.program }</td>
							<td>${voucher.creDate }</td>
							<td style="text-align: right; padding-right: 20px;">${voucher.monthSf }원</td>
							<td>${voucher.service }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="stdout"></div>
		</div>
	</div>
	<jsp:include page="include/LeftBar.jsp" />
	<jsp:include page="include/Bottom.jsp" />
</body>
<!-- <script>
$(document).ready(function() {
	var contWidth = Math.floor($("#contents").width() / 753) - 1;
	$("#student_space").css("width", contWidth * 753);
});
</script> -->
</html>