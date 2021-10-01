<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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

        #closeBtn {
            border-color: crimson;
            background-color: crimson;
        }

        .btn-outline-primary {

            color: #27b2a5;
            border-color: #27b2a5;
        }

        .btn-primary {
            border-color: #27b2a5;

        }

        .btn-outline-primary:hover, .btn-outline-primary:focus, .btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open > .dropdown-toggle.btn-primary {
            color: #fff;
            background-color: #27b2a5;
            border-color: #27b2a5;

        }

    </style>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>

        var ws;

        function wsOpen() {
            //웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
            ws = new WebSocket("wss://" + location.host + "/chatting/" + $("#roomNumber").val());
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
                            $("#chatWindow").append("<p class='me'>  본인 :" + d.msg + "</p>");
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
            $('#chatWindow').empty();
            var userName = $("#userName").val();
            console.log("현재 로그인 값" + userName)
            if (userName == null || userName.trim() == "") {
                alert("사용자 이름을 입력해주세요.");
                $("#userName").focus();
            } else {
                wsOpen();
                $("#yourName").hide();
                $("#yourMsg").show();
                $(function () {
                    $('#webrtc').css({
                        "visibility": "visible"
                    })

                })
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
        <div class="card-header py-4 bg-primary d-flex flex-row align-items-center ">
            <i id="bubble" class="fas fa-comments fa-2x text-warning" style="padding-right: 10px"></i>
            <h6 class="m-0 font-weight-bold text-light" style="float: left">${bankerVO.pbName} PB의 채팅상담</h6>

        </div>
        <div>
            <input type="hidden" id="sessionId" value=""> <input
                type="hidden" id="roomNumber" value="${roomVO.roomNumber}">

            <div id="chatWindow" class="chatting">
            </div>

            <div class="card-footer text-center">
                <div id="yourName">
                    <table class="inputTable">
                        <tr>
                            <c:if test="${empty userVO}">
                                <th>인증번호 :</th>
                            </c:if>
                            <c:if test="${not empty userVO}">
                                <th>인증번호 :</th>
                            </c:if>
                            <th><input class="checkNum" type="password" name="userName"
                                       id="userName" style="margin-left: 15px"></th>
                            <th>
                                <button class="btn btn-sm btn-primary" onclick="chatName()"
                                        id="startBtn" style="margin-left: 15px;">인증하기
                                </button>
                            </th>
                        </tr>
                    </table>
                </div>
                <div id="yourMsg">
                    <table class="inputTable">
                        <tr>
                            <th>메시지 :</th>
                            <th><input style="margin-left: 15px;width: 130px;" id="chatting"
                                       placeholder="  메시지입력"></th>
                            <th>
                                <button class="btn btn-sm btn-primary" onclick="send()"
                                        id="sendBtn" style="margin-left: 15px">보내기
                                </button>
                                <%--                                <button class="btn btn-primary" style="float:right;margin-left: 12px;"--%>
                                <%--                                        id="closeBtn">상담종료--%>
                                <%--                                </button>--%>

                                <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
                                        data-target="#exampleModal"
                                        id="#closeBtn" style="float:right;margin-left: 12px; border-color: crimson;
                                        background-color: crimson;">
                                    상담종료
                                </button>
                            </th>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">상담 종료</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="csltTitle" class="control-label">상담 제목
                            :</label>
                        <textarea style="height: 30px;width: 200px;" class="form-control"
                                  id="csltTitle"></textarea>
                    </div>
                </form>
                <form>
                    <div class="form-group">
                        <label for="csltComment" class="control-label">상담 내용 기록
                            :</label>
                        <textarea class="form-control" id="csltComment"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button id="sendMsg" type="button" class="btn btn-primary">상담종료</button>
                <button style="border-color: #27b2a5;" type="button" class="btn btn-outline-primary"
                        data-dismiss="modal">Close
                </button>
            </div>
        </div>
    </div>
</div>


<script>
    // 상담 종료
    $('#sendMsg').click(function () {
        console.log(${roomVO.roomNumber})
        console.log("${userVO.username}")
        console.log("${bankerVO.pbName}")
        console.log("${bankerVO.codeNum}")
        console.log("${bankerVO.branchName}")

        const roomNumber = "${roomVO.roomNumber}"
        const clientId = "${userVO.userId}"
        const username = "${userVO.username}"
        const pbName = "${bankerVO.pbName}"
        const pbCodeNum = "${bankerVO.codeNum}"
        const branchName = "${bankerVO.branchName}"
        const csltTitle = $('#csltTitle').val()
        const csltComment = $('#csltComment').val()


        const history = {roomNumber, clientId, pbName, csltTitle, csltComment, pbCodeNum, username, branchName}

        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/saveHistory",
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify(history),
            success: function (res) {
            }
        })
        alert('상담이 종료되었습니다.')
        location.href = "${pageContext.request.contextPath}/pb/history"

    })
</script>
