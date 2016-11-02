<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="../css/header_style.css">
<link type="text/css" rel="stylesheet" href="../css/leftbar_style.css">
<link type="text/css" rel="stylesheet" href="../css/main_style.css">
<script type="text/javascript" src="../jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="../js/mainjs.js" charset="utf-8"></script>
<title>회원가입</title>
</head>
<body>
	<jsp:include page="include/Header.jsp" />
	<div id="contents" style="background: #fff; float: right; margin-top: 77px;">
		<div id="student_space">
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="username"></td>
				</tr>
			</table>
		</div>
	</div>
	<jsp:include page="include/LeftBar.jsp" />
	<jsp:include page="include/Bottom.jsp" />
</body>
</html>