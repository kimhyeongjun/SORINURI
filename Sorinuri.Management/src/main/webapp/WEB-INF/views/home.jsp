<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	function ajaxGo() {
		jQuery.ajax({
			type : "POST",
			url : "ajax",
			data : {id : "id"},
			dataType : "text",
			success : function(obj) {
				
					alert(obj);
			},
			complete : function(data) {// 응답이 종료되면 실행, 잘 사용하지않는다
			},
			error : function(xhr, status, error) {
				alert("ERROR!!!");
			}
		});
	}
</script>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	
	<button onclick="ajaxGo()">AJAX</button>
</body>
</html>
