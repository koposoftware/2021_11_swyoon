<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<hr style="margin-top: 500px;
    margin-bottom: 50px;">
<footer class="ftco-footer" style="padding: 0;">
    <div class="container">
        <div class="row mb-5">
            <div class="col-sm-12 col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2 logo"><a href="#">하나My PB</a></h2>
                </div>
            </div>
            <div class="col-sm-12 col-md">
                <div class="ftco-footer-widget mb-4 ml-md-4">
                    <h2 class="ftco-heading-2">Explore</h2>
                    <ul class="list-unstyled">
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Contact</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>What We Do</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Plans &amp; Pricing</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-12 col-md">
                <div class="ftco-footer-widget mb-4 ml-md-4">
                    <h2 class="ftco-heading-2">Legal</h2>
                    <ul class="list-unstyled">
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Join us</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Blog</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Privacy &amp; Policy</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Term &amp; Conditions</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-12 col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Company</h2>
                    <ul class="list-unstyled">
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About Us</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Blog</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Contact</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Careers</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-12 col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Company</h2>
                    <ul class="list-unstyled">
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About Us</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Blog</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Contact</a></li>
                        <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Careers</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>


<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#27b2a5"/>
    </svg>
</div>

<%--<script src="https://code.jquery.com/jquery-3.6.0.js"></script>--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>--%>

<script>


    <%--var socket = null;--%>
    <%--$(document).ready(function () {--%>
    <%--    // 웹소켓 연결--%>
    <%--    sock = new SockJS("${pageContext.request.contextPath}/client/searchList");--%>
    <%--    socket = sock;--%>

    <%--    // 데이터를 전달 받았을때--%>
    <%--    sock.onmessage = function (event) {--%>
    <%--        console.log(event)--%>
    <%--        $('#noticeIcon').show();--%>
    <%--        onMessage(event);--%>
    <%--    }--%>

    <%--});--%>

    // toast생성 및 추가
    // function onMessage(evt) {
    //     var data = evt.data;
    //     // toast
    //     let toast = "<div class='toast' role='alert' aria-live='assertive' aria-atomic='true' style='z-index: 100;'>";
    //     toast += "<div class='toast-header'><!--<i class='fas fa-bell mr-2'>--></i><strong class='mr-auto'>알림</strong>";
    //     toast += "<small class='text-muted'>just now</small><button id='closeMsg' type='button' class='ml-2 mb-1 close' data-dismiss='toast' aria-label='Close'>";
    //     toast += "<span aria-hidden='true'>&times;</span></button>";
    //     toast += "</div> <div class='toast-body'>" + data + "</div>";
    //     toast += "<button type='button' id='acceptBtn' class='btn btn-primary btn-xs' style='float:right;margin-right: 5px;'>수락하기</button></div>"
    //
    //     $("#msgStack").append(toast);   // msgStack div에 생성한 toast 추가
    //
    //     $('#acceptBtn').click(function () {
    //         alert('상담 요청이 수락되엇습니다.')
    //         socket.send('')
    //
    //     })
    // };


</script>

<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
