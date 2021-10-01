<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <head>
        <title>Counselor - Free Bootstrap 4 Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link
                href="${pageContext.request.contextPath}/resources/admin/img/logo/logo.png"
                rel="icon">
        <link
                href="${pageContext.request.contextPath}/resources/admin/vendor/fontawesome-free/css/all.min.css"
                rel="stylesheet" type="text/css">
        <link
                href="${pageContext.request.contextPath}/resources/admin/css/ruang-admin.min.css"
                rel="stylesheet">
        <link
                href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
                rel="stylesheet">
        <link
                href="${pageContext.request.contextPath}/resources/css2/nice-select.css">
        <script
                src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


        <style type="text/css">
            /* The Modal (background) */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                /*z-index: 1; !* Sit on top *!*/
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                background-color: rgb(0, 0, 0); /* Fallback color */
                background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
                overflow: hidden; /* 모달 띄웠을 시, 옆에 스크롤 제거 */
            }

            .modal2 {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                background-color: rgb(0, 0, 0); /* Fallback color */
                background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
                overflow: hidden; /* 모달 띄웠을 시, 옆에 스크롤 제거 */
            }

            /* Modal Content/Box */
            #modal-content {
                background-color: #fefefe;
                margin: 15% auto; /* 15% from the top and centered */
                padding: 20px;
                border: 1px solid #888;
                width: 30%; /* Could be more or less, depending on screen size */
            }

            /* Modal Content/Box */
            #modal-content2 {
                background-color: #fefefe;
                margin: 15% auto; /* 15% from the top and centered */
                padding: 20px;
                border: 1px solid #888;
                width: 30%; /* Could be more or less, depending on screen size */
            }

            /*---------------------
              Register Form
            -----------------------*/

            .register-login-section {
                padding-top: 72px;
                padding-bottom: 80px;
            }

            .register-form h2,
            .login-form h2 {
                color: #252525;
                font-weight: 700;
                text-align: center;
                margin-bottom: 35px;
            }

            .register-form form .group-input,
            .login-form form .group-input {
                margin-bottom: 25px;
            }

            .register-form form .group-input label,
            .login-form form .group-input label {
                display: block;
                font-size: 18px;
                color: #252525;
                margin-bottom: 13px;
            }

            .register-form form .group-input input,
            .login-form form .group-input input {
                border: 1px solid #ebebeb;
                height: 50px;
                width: 100%;
                padding-left: 20px;
                padding-right: 15px;
            }

            .register-form form .register-btn,
            .register-form form .login-btn,
            .login-form form .register-btn,
            .login-form form .login-btn {
                width: 100%;
                letter-spacing: 2px;
                margin-top: 5px;
                height: 50px;
            }

            .register-form .switch-login,
            .login-form .switch-login {
                text-align: center;
                margin-top: 22px;
            }

            .register-form .switch-login .or-login,
            .login-form .switch-login .or-login {
                color: #252525;
                font-size: 14px;
                letter-spacing: 2px;
                text-transform: uppercase;
                position: relative;
            }

            .register-form .switch-login .or-login:before,
            .login-form .switch-login .or-login:before {
                position: absolute;
                left: 0;
                bottom: 0;
                height: 2px;
                width: 100%;
                background: #9f9f9f;
                content: "";
            }

            .login-form .group-input.gi-check {
                margin-bottom: 8px;
            }

            .login-form .group-input .gi-more {
                overflow: hidden;
            }

            .login-form .group-input .gi-more label {
                position: relative;
                cursor: pointer;
                padding-left: 28px;
                font-size: 14px;
                color: #6B6B6B;
                float: left;
            }

            .login-form .group-input .gi-more label input {
                position: absolute;
                visibility: hidden;
            }

            .login-form .group-input .gi-more label input:checked ~ span {
                border-color: #6C6C6C;
            }

            .login-form .group-input .gi-more label input:checked ~ span:after {
                border-color: #6c6c6c;
            }

            .login-form .group-input .gi-more label .checkmark {
                position: absolute;
                left: 0;
                top: 4px;
                height: 13px;
                width: 13px;
                border: 1px solid #6C6C6C;
                border-radius: 2px;
            }

            .login-form .group-input .gi-more label .checkmark:after {
                left: 2px;
                top: -2px;
                width: 13px;
                height: 6px;
                border: solid #ffffff;
                border-width: 2px 2px 0px 0px;
                -webkit-transform: rotate(127deg);
                -ms-transform: rotate(127deg);
                transform: rotate(127deg);
            }

            .login-form .group-input .gi-more .forget-pass {
                float: right;
                line-height: 20px;
                margin-top: -2px;
                font-size: 14px;
                color: #6B6B6B;
            }


            @font-face {
                font-family: 'hanaBold';
                src: local(HanaB);
            }

            @font-face {
                font-family: 'hanaMedium';
                src: url(${pageContext.request.contextPath}/resources/css/font/HanaM.ttf) format('truetype');
            }

            @font-face {
                font-family: 'hanaLight';
                src: url(${pageContext.request.contextPath}/resources/css/font/HanaL.ttf) format('truetype');
            }

            #navbar .btn:hover {
                color: #fff;
            }

            .btn-solid-border {
                border: 2px solid #01888c;
                background: transparent;
                color: #fff;

            }

            .btn-solid-border:hover {
                border: 2px solid #01888c;
                background: #01888c;
                color: #fff;
            }


            .pricing .btn-solid-border {
                border-color: #dedede;
            }

            .pricing .btn-solid-border:Hover {
                border-color: #f75757;
            }


            .btn-round-full {
                border-radius: 50px;
                color: black;
            }


            .btn {
                display: inline-block;
                font-size: 14px;
                font-size: 0.8125rem;
                font-weight: bold;
                padding: 10px 15px 10px 15px;
                /*padding: 1rem 2.5rem;*/
                text-transform: uppercase;
                border-radius: 0;
                transition: all 0.2s ease;
            }

            .btn:focus {
                outline: 0px;
                border: 0px;
            }

            #loginBtn, #logoutBtn, #loginBtn2 {

                border-radius: 50px;
            }

            .nav-link:hover {
                color: #01888c !important;
            }

            #noticeIcon {
                transform-origin: 50% 0%;
                animation-name: shake;
                animation-duration: 2s;
                /*animation-iteration-count: infinite;*/
                animation-delay: 0.5s;
                animation-iteration-count: 2;
            }

            @keyframes shake {
                0% {
                    transform: rotate(0deg);
                }
                10% {
                    transform: rotate(45deg);
                }
                20% {
                    transform: rotate(-45deg);
                }
                30% {
                    transform: rotate(30deg);
                }
                40% {
                    transform: rotate(-30deg);
                }
                50% {
                    transform: rotate(10deg);
                }
                60% {
                    transform: rotate(-10deg);
                }
                70% {
                    transform: rotate(0deg);
                }
                100% {
                    transform: rotate(0deg);
                }
            }

            .fa-bell:before {
                color: #008485;
                position: relative;
            }

            .toast {
                z-index: 500;
                width: 300px;
                height: 170px;
                line-height: 20px;
            }

            #bell {
                font-size: 25px;
            }


        </style>
    </head>


    <!-- The Modal -->
    <div id="myModal" class="modal">
        <!-- Modal content -->
        <div id="modal-content">
            <div class="login-form">
                <h2>PB 로그인</h2>
                <form action="${pageContext.request.contextPath }/pb/login" method="post" name="loginForm">
                    <div class="group-input">
                        <label for="userId">PB 아이디 </label>
                        <input type="text" id="userId" name="pbId">
                    </div>
                    <div class="group-input">
                        <label for="password">비밀번호 </label>
                        <input type="password" id="password" name="pbPassword">
                    </div>
                    <button type="submit" class="site-btn login-btn"
                            style="background: #01888c;color: #fff;cursor: pointer">Sign In
                    </button>
                </form>
                <div class="switch-login">
                    <a href="<%=request.getContextPath() %>/register.do" class="or-login">Or Create An Account</a>
                </div>
            </div>
        </div>
    </div>


    <div class="wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-6 d-flex align-items-center">
                    <p class="mb-0 phone pl-md-2">
                        <%--                        <a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> +00 1234 567</a>--%>
                        <%--                        <a href="#"><span class="fa fa-paper-plane mr-1"></span> youremail@email.com</a>--%>
                    </p>
                </div>
                <div class="col-md-6 d-flex justify-content-md-end">
                    <div class="social-media">
                        <p class="mb-0 d-flex">
                            <a href="#" class="d-flex align-items-center justify-content-center"><span
                                    class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                            <a href="#" class="d-flex align-items-center justify-content-center"><span
                                    class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                            <a href="#" class="d-flex align-items-center justify-content-center"><span
                                    class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
                            <a href="#" class="d-flex align-items-center justify-content-center"><span
                                    class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <img src="${pageContext.request.contextPath}/resources/hana.png" style="width: 44px"/>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">하나My PB</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                    aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation"
                    style="color :black!important">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="${pageContext.request.contextPath}/pb/services" class="nav-link">PB
                        Service</a></li>
                </ul>
            </div>
            <c:choose>
                <c:when test="${empty bankerVO}">
                    <button id="loginBtn" class="btn btn-solid-border btn-round-full"
                            style="margin-left: 5px;padding: .5rem 1.5rem;">로그인
                    </button>
                </c:when>
                <c:when test="${not empty bankerVO  }">
                    <button id="logoutBtn" class="btn btn-solid-border btn-round-full"
                            style="margin-left: 20px;padding: .5rem 1.5rem;border-radius: 50px!important;">로그아웃
                    </button>
                </c:when>
            </c:choose>
            <i id="noticeIcon" class="fa fa-bell" style="font-size:24px;margin-left:20px;position: relative">
                <div id="msgStack" style="position: absolute"></div>
            </i>

            <!--            TopBar
                      <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown no-arrow mx-1">
                          <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            <i id="bell" class="fas fa-bell fa-fw"></i>
                            <span class="badge badge-danger badge-counter">3+</span>
                          </a>
                          <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                            aria-labelledby="alertsDropdown">
                            <h6 class="dropdown-header">
                              상담 예약 알림
                            </h6>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                              <div class="mr-3">
                                <div class="icon-circle bg-primary">
                                  <i class="fas fa-file-alt text-white"></i>
                                </div>
                              </div>
                              <div>
                                <div class="small text-gray-500">December 12, 2019</div>
                                <span class="font-weight-bold">A new monthly report is ready to download!</span>
                              </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                              <div class="mr-3">
                                <div class="icon-circle bg-success">
                                  <i class="fas fa-donate text-white"></i>
                                </div>
                              </div>
                              <div>
                                <div class="small text-gray-500">December 7, 2019</div>
                                $290.29 has been deposited into your account!
                              </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                              <div class="mr-3">
                                <div class="icon-circle bg-warning">
                                  <i class="fas fa-exclamation-triangle text-white"></i>
                                </div>
                              </div>
                              <div>
                                <div class="small text-gray-500">December 2, 2019</div>
                                Spending Alert: We've noticed unusually high spending for your account.
                              </div>
                            </a>
                            <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                          </div>
                        </li>
                      </ul>
                    Topbar -->

        </div>
    </nav>
    <!-- END nav -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
    <%--toast--%>
    <script type="text/javascript">
        document.getElementById("noticeIcon").style.display = "none";

        $('#noticeIcon').click(function () {
            $(".toast").toast({"animation": true, "autohide": false});
            $('.toast').toast('show');

        })
        $('#closeMsg').click(function () {
            $('#msgStack').hide();
        })

        $(document).ready(function () {
            $('#loginBtn').click(function () {
                $('#myModal').show();

            });

            $('#logoutBtn').click(function () {
                location.href = '${pageContext.request.contextPath}/logout'

            });

        });

        // 외부영역 클릭 시 팝업 닫기
        $(document).mouseup(function (e) {
            var LayerPopup = $(".modal");
            if (LayerPopup.has(e.target).length === 0) {
                $('#myModal').hide();
            }
            var LayerPopup = $(".modal2");
            if (LayerPopup.has(e.target).length === 0) {
                $('#myModal2').hide();
            }
        });

        var socket = null;
        $(document).ready(function () {
            // 웹소켓 연결
            sock = new SockJS("${pageContext.request.contextPath}/client/searchList");
            socket = sock;
            console.log('PB 화면 소켓 연결')


            // 데이터를 전달 받았을때
            sock.onmessage = function (event) {
                console.log(event)
                $('#noticeIcon').show();
                onMessage(event);
            }

        });

        function onMessage(evt) {
            var data = evt.data;
            // toast
            let toast = "<div class='toast' role='alert' aria-live='assertive' aria-atomic='true' style='z-index: 100;'>";
            toast += "<div class='toast-header'><!--<i class='fas fa-bell mr-2'>--></i><strong class='mr-auto'>알림</strong>";
            toast += "<small class='text-muted'>just now</small><button id='closeMsg' type='button' class='ml-2 mb-1 close' data-dismiss='toast' aria-label='Close'>";
            toast += "<span aria-hidden='true'>&times;</span></button>";
            toast += "</div> <div class='toast-body'>" + data + "</div>";
            toast += "<button type='button' id='acceptBtn' class='btn btn-primary btn-xs' style='float:right;margin-right: 5px;'>수락하기</button></div>"

            $("#msgStack").empty();   // msgStack div에 생성한 toast 추가
            $("#msgStack").append(toast);   // msgStack div에 생성한 toast 추가

            $('#acceptBtn').click(function () {
                alert('상담 수락이 완료되었습니다.')
                var bankerName = "${bankerVO.pbName}"
                socket.send(bankerName)
                location.reload();

            })
        };


    </script>
