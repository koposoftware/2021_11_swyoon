<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>


<head>

    <style>
        .spinner-border {
            color: #27b2a5;
            width: 100%;
            text-align: center;
        }

        #loader {
            margin-top: 30px;
            width: 70px;
            height: 70px;
        }

        .waitMent {
            text-align: center;
            margin-top: 250px;
        }

    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
    <script>
        var socket2 = null
        $(document).ready(function () {
            sock2 = new SockJS("${pageContext.request.contextPath}/createRoom");
            socket2 = sock2;
        })

        setTimeout(function () {
            socket2.send("최민기,윤승원,10 : 10,상담 요청")
        }, 2000);

        setTimeout(function () {
            location.href = "${pageContext.request.contextPath}/moveChatting"
        }, 3500);
    </script>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

<div>
    <div class="waitMent">
        <h2>상담실에 입장중입니다...</h2>
    </div>
    <div class="d-flex justify-content-center" style="margin-bottom: 1200px;">
        <div id="loader" class="spinner-border" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
</div>

</body>
>

</html>

