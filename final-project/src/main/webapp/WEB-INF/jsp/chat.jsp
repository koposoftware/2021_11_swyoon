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
		.chatting{
			background-color: #e6efef;
			width: 310px;
			height: 310px;
			overflow: auto;
			padding-bottom: 50px;
			margin-bottom: 5px;

		}
		.chatting .me{
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

		.chatting .others{
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

		.spinner-border{
			color: #27b2a5;
			width: 100%;
			text-align: center;
		}

		#loader{
			margin-top: 30px;
			width: 70px;
			height: 70px;
		}

		.waitMent{
			text-align: center;
			margin-top: 250px;
		}
		.checkNum{
			margin-left : 10px;
			width: 90px;
		}

		#startBtn{
			margin-left: 15px;
		}

		#sendBtn{
			margin-left: 10px;
		}


	</style>
</head>

<script type="text/javascript">
	var ws;

	function wsOpen(){
		//웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
		ws = new WebSocket("ws://" + location.host + "/chatting/"+$("#roomNumber").val());
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
						$("#chatWindow").append("<p class='me'>나 :" + d.msg + "</p>");
					}else{
						$("#chatWindow").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
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
    // 메세지 보내는 처리
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
<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>


<%--<div>--%>
<%--	<div class="waitMent">--%>
<%--		<h2>잠시 대기해주세요. 고객님께서 들어오고 있습니다.</h2>--%>
<%--	</div>--%>
<%--	<div  class="d-flex justify-content-center">--%>
<%--		<div id="loader" class="spinner-border" role="status">--%>
<%--			<span class="sr-only">Loading...</span>--%>
<%--		</div>--%>
<%--	</div>--%>
<%--</div>--%>

		<div id="ftco-loader" class="show fullscreen">
			<div class="waitMent">
				<h2>잠시 대기해주세요. 고객님께서 들어오고 있습니다.</h2>
			</div>
			<svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#27b2a5"/>
			</svg>
		</div>

<div id="container" class="container">
	<i id="bubble" class="fas fa-comments fa-2x text-warning"></i>
	<h1>${roomMaster} PB의 채팅 상담</h1>
	<input type="hidden" id="sessionId" value="">
	<input type="hidden" id="roomNumber" value="${roomNumber}">

	<div id="chatWindow" class="chatting">
	</div>

	<div id="yourName">
		<table class="inputTable">
			<tr>
				<c:if test="${empty userVO}">
				<th>사번을 입력하세요 :   </th>
				</c:if>
				<c:if test="${not empty userVO}">
					<th>계좌 비밀번호 입력 : </th>
				</c:if>
					<th><input class="checkNum" type="password" name="userName" id="userName"></th>
					<th><button class="btn btn-outline-success" onclick="chatName()" id="startBtn">확인</button></th>
			</tr>
		</table>
	</div>
	<div id="yourMsg">
		<table class="inputTable">
			<tr>
				<th>메시지</th>
				<th><input style="margin-left: 10px" id="chatting" placeholder="  메시지를 입력하세요."></th>
				<th><button class="btn btn-info" onclick="send()" id="sendBtn">보내기</button></th>
			</tr>
		</table>
	</div>
</div>
</body>
<script>
		var checkUser = '${userVO.username}'

		if( checkUser == '' ){
			// $('#ftco-loader').show()
			$('#ftco-loader').hide();

		} else {
			$('#ftco-loader').hide();
		}

</script>
</html>
