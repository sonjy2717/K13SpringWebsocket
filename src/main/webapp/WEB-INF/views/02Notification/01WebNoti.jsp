<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>♥이지현 바보♥</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
	<h2>Web Notification01</h2>
	<button onclick="calculate();">버튼을 누르면 1초 후에 WebNotification이 뜹니다</button>
	
	<script type="text/javascript">
	window.onload = function() {
		if (window.Notification) {
			Notification.requestPermission();
		}
		else {
			alert("웹노티를 지원하지 않습니다");
		}
	}
	
	function calculate() {
		setTimeout(function() {
			notify();
		}, 1000);
	}
	
	function notify() {
		if (Notification.permission !== 'granted') {
			alert('웹노티를 지원하지 않습니다.');
		}
		else {
			var notification = new Notification(
				'Title 입니다',
				{
					icon: 'http://cfile201.uf.daum.net/image/235BFD3F5937AC17164572',
					body: '여긴내용입니다. 클릭하면 KOSMO로 이동합니다.',
				}
			);
			
			notification.onclick = function() {
				window.open('http://www.ikosmo.co.kr');
			};
		}
	}
	</script>
</div>
</body>
</html>