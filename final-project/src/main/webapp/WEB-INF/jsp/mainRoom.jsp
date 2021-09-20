<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<head>
<link href="${pageContext.request.contextPath}/resources/admin/img/logo/logo.png" rel="icon">
<link href="${pageContext.request.contextPath}/resources/admin/vendor/fontawesome-free/css/all.min.css"
      rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/admin/css/ruang-admin.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css2/nice-select.css">

<style>

.btn-primary {
	background-color: #27b2a5;
}

.bg-primary {
	background-color: #27b2a5 !important;
}

.text-warning {
	color: #FFFFFF !important;
}



 #chatScreen {
        background-color: #e6efef;
        height: 310px;
    }

    * {
        margin: 0;
        padding: 0;
    }

    .container {
        width: 500px;
        margin: 0 auto;
        padding: 25px
    }

    .container h1 {
        text-align: left;
        padding: 5px 5px 5px 15px;
        color: #27b2a5;
        /*border-left: 3px solid #008485;*/
    }

    .chatting {
        background-color: #e6efef;
        height: 300px;
        overflow: auto;
        padding-bottom: 50px;
        margin-bottom: 5px;

    }

    .chatting .me {
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

    .chatting .others {
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

    input {
        width: 180px;
        height: 25px;
    }

    #yourMsg {
        display: none;
    }

    #bubble {
        color: #27b2a5;
    }

    .spinner-border {
        color: #27b2a5;
        width: 100%;
        text-align: center;
    }

</style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>

var ws;

function wsOpen() {
    //웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
    ws = new WebSocket("ws://" + location.host + "/chatting/" + $("#roomNumber").val());
    wsEvt();
}

function wsEvt() {
    ws.onopen = function (data) {
        //소켓이 열리면 동작
    }

    ws.onmessage = function (data) {
        //메시지를 받으면 동작
        var msg = data.data;
        if (msg != null && msg.trim() != '') {
            var d = JSON.parse(msg);
            if (d.type == "getId") {
                var si = d.sessionId != null ? d.sessionId : "";
                if (si != '') {
                    $("#sessionId").val(si);
                }
            } else if (d.type == "message") {
                if (d.sessionId == $("#sessionId").val()) {
                    $("#chatWindow").append("<p class='me'>나 :" + d.msg + "</p>");
                } else {
                    $("#chatWindow").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
                }

            } else {
                console.warn("unknown type!")
            }
        }
    }

    document.addEventListener("keypress", function (e) {
        if (e.keyCode == 13) { //enter press
            send();
        }
    });
}

function chatName() {
    var userName = $("#userName").val();
    console.log("현재 로그인 값" + userName)
    if (userName == null || userName.trim() == "") {
        alert("사용자 이름을 입력해주세요.");
        $("#userName").focus();
    } else {
        wsOpen();
        $("#yourName").hide();
        $("#yourMsg").show();
    }
}

// 메세지 보내는 처리
function send() {
    var option = {
        type: "message",
        roomNumber: $("#roomNumber").val(),
        sessionId: $("#sessionId").val(),
        userName: $("#userName").val(),
        msg: $("#chatting").val(),
    }
    ws.send(JSON.stringify(option))
    $('#chatting').val("");
}
</script>


</head>



<div class="col-xl-4 col-lg-5 ">
	<div class="card">
		<div
			class="card-header py-4 bg-primary d-flex flex-row align-items-center justify-content-between">
			<i id="bubble" class="fas fa-comments fa-2x text-warning"></i>

			<h6 class="m-0 font-weight-bold text-light">${roomVO.pbName}PB의 채팅
				상담</h6>
		</div>
		<div>
			<input type="hidden" id="sessionId" value=""> <input
				type="hidden" id="roomNumber" value="${roomVO.roomNumber}">

			<div id="chatWindow" class="chatting"></div>
			<div class="card-footer text-center">
				<div id="yourName">
					<table class="inputTable">
						<tr>
							<c:if test="${empty userVO}">
								<th>사번을 입력하세요 :</th>
							</c:if>
							<c:if test="${not empty userVO}">
								<th>계좌 비밀번호 입력 :</th>
							</c:if>
							<th><input class="checkNum" type="password" name="userName"
								id="userName"></th>
							<th>
								<button class="btn btn-sm btn-primary" onclick="chatName()"
									id="startBtn">인증하기</button>
							</th>
						</tr>
					</table>
				</div>
				<div id="yourMsg">
					<table class="inputTable">
						<tr>
							<th>메시지</th>
							<th><input style="margin-left: 15px" id="chatting"
								placeholder="  메시지를 입력하세요."></th>
							<th>
								<button class="btn btn-sm btn-primary" onclick="send()"
									id="sendBtn">보내기</button>
							</th>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

