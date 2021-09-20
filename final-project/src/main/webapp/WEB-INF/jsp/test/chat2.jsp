<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
	<meta charset="UTF-8">
	<title>Chating</title>
	<style>
		*{
			margin:0;
			padding:0;
		}
		.container{
			width: 500px;
			margin: 0 auto;
			padding: 25px
		}
		.container h1{
			text-align: left;
			padding: 5px 5px 5px 15px;
			color: #27b2a5;
			/*border-left: 3px solid #008485;*/
		}
		.chating{
			background-color: #e6efef;
			width: 300px;
			height: 300px;
			overflow: auto;
			padding-bottom: 50px;
		}
		.chating .me{
			color: #3c3c3c;
			text-align: right;
			word-break: keep-all;

			border-top-left-radius: 10px;
			border-bottom-left-radius: 10px;

			position: relative;
			padding: 9px 0 6px;
			margin: 5px 5px 15px 50px;
			background: #fff;
			top: 0;
			z-index: 5;
		}

		.chating .others{
			color: #008485;
			text-align: left;

			border-top-right-radius: 10px;
			border-bottom-right-radius: 10px;

			position: relative;
			padding: 9px 0 6px;
			margin: 5px 50px 15px 5px;
			background: #fff;
			top: 0;
			z-index: 5;


		}
		input{
			width: 180px;
			height: 25px;
		}
		#yourMsg{
			display: none;
		}

		#bubble{
			color: #27b2a5;
		}


	</style>
</head>

<script type="text/javascript">
	var ws;

	function wsOpen(){
		//웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
		ws = new WebSocket("ws://" + location.host + "/chating/"+$("#roomNumber").val());
		wsEvt();
	}

	function wsEvt() {
		ws.onopen = function(data){
			//소켓이 열리면 동작
		}

		ws.onmessage = function(data) {
			//메시지를 받으면 동작
			var msg = data.data;
			if(msg != null && msg.trim() != ''){
				var d = JSON.parse(msg);
				if(d.type == "getId"){
					var si = d.sessionId != null ? d.sessionId : "";
					if(si != ''){
						$("#sessionId").val(si);
					}
				}else if(d.type == "message"){
					if(d.sessionId == $("#sessionId").val()){
						$("#chating").append("<p class='me'>나 :" + d.msg + "</p>");
					}else{
						$("#chating").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
					}

				}else{
					console.warn("unknown type!")
				}
			}
		}

		document.addEventListener("keypress", function(e){
			if(e.keyCode == 13){ //enter press
				send();
			}
		});
	}

	function chatName(){
		var userName = $("#userName").val();
		console.log("현재 로그인 값" + userName)
		if(userName == null || userName.trim() == ""){
			alert("사용자 이름을 입력해주세요.");
			$("#userName").focus();
		}else{
			wsOpen();
			$("#yourName").hide();
			$("#yourMsg").show();
		}
	}

	function send() {
		var option ={
			type: "message",
			roomNumber: $("#roomNumber").val(),
			sessionId : $("#sessionId").val(),
			userName : $("#userName").val(),
			msg : $("#chatting").val() ,
		}
		ws.send(JSON.stringify(option))
		$('#chatting').val("");
	}
</script>
<body>
<div id="container" class="container">
	<i id="bubble" class="fas fa-comments fa-2x text-warning"></i>
	<h1>${roomName} PB의 채팅 상담</h1>
	<input type="hidden" id="sessionId" value="">
	<input type="hidden" id="roomNumber" value="${roomNumber}">

	<div id="chating" class="chating">
	</div>

	<div id="yourName">
		<table class="inputTable">
			<tr>
				<th>사용자명</th>
				<th><input type="text" name="userName" id="userName"></th>
				<th><button onclick="chatName()" id="startBtn">입장하기</button></th>
			</tr>
		</table>
	</div>
	<div id="yourMsg">
		<table class="inputTable">
			<tr>
				<th>메시지</th>
				<th><input id="chatting" placeholder="보내실 메시지를 입력하세요."></th>
				<th><button onclick="send()" id="sendBtn">보내기</button></th>
			</tr>
		</table>
	</div>
</div>
</body>
</html>