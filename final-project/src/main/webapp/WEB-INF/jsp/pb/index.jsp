<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/pbHeader.jsp"/>

<div class="hero-wrap" data-stellar-background-ratio="0.1">
    <%--    <img src="${pageContext.request.contextPath}/resources/images/consultant.png">--%>
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center">
            <div class="col-md-6 ftco-animate d-flex align-items-end">
                <div class="text w-100">
                    <h1 class="mb-4">Counseling For Your Better Life</h1>
                    <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                    <p><a href="#" class="btn btn-primary py-3 px-4">Contact us</a> <a href="#" class="btn btn-white py-3 px-4">Read more</a></p>
                </div>
            </div>
            <a href="https://vimeo.com/45830194" class="img-video popup-vimeo d-flex align-items-center justify-content-center">
                <span class="fa fa-play"></span>
            </a>
        </div>
    </div>
</div>

<section class="ftco-intro" style="margin-top : -150px">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-4 d-flex">
                <div class="intro aside-stretch d-lg-flex w-100">
                    <div class="icon">
                        <span class="flaticon-checklist"></span>
                    </div>
                    <div class="text">
                        <h2>100% Confidential</h2>
                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex">
                <div class="intro color-1 d-lg-flex w-100">
                    <div class="icon">
                        <span class="flaticon-employee"></span>
                    </div>
                    <div class="text">
                        <h2>Qualified Team</h2>
                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex">
                <div class="intro color-2 d-lg-flex w-100">
                    <div class="icon">
                        <span class="flaticon-umbrella"></span>
                    </div>
                    <div class="text">
                        <h2>Individual Approach</h2>
                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>
<script>

var socket  = null;
$(document).ready(function(){

    // 웹소켓 연결
    sock = new SockJS("<c:url value="/client/searchList"/>");
    socket = sock;

    // 데이터를 전달 받았을때
    sock.onmessage = function(event){
    	console.log(event)
    	alert('전달성공')
        $('#noticeIcon').show();
        onMessage(event);


    }
});
</script>


</body>
</html>
