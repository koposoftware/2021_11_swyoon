<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="${pageContext.request.contextPath}/resources/css2/js/jquery-3.3.1.min.js"></script>

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/barfiller.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/style.css" type="text/css">
    <style>

        .hero__text .hero__categories__tags li a {
            color: #fff;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>


<%--<div class="hero-wrap" data-stellar-background-ratio="0.1">--%>
<%--&lt;%&ndash;    <img src="${pageContext.request.contextPath}/resources/images/consultant.png">&ndash;%&gt;--%>
<%--    <div class="overlay"></div>--%>
<%--    <div class="container">--%>
<%--        <div class="row no-gutters slider-text align-items-center">--%>
<%--            <div class="col-md-6 ftco-animate d-flex align-items-end">--%>
<%--                <div class="text w-100">--%>
<%--                    <h1 class="mb-4">Counseling For Your Better Life</h1>--%>
<%--                    <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>--%>
<%--                    <p><a href="#" class="btn btn-primary py-3 px-4">Contact us</a> <a href="#" class="btn btn-white py-3 px-4">Read more</a></p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <a href="https://vimeo.com/45830194" class="img-video popup-vimeo d-flex align-items-center justify-content-center">--%>
<%--                <span class="fa fa-play"></span>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- Hero Section Begin -->
<section class="hero set-bg" style="background-color: #27b2a5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="hero__text">
                    <div class="section-title">
                        <h2>당신만의 온라인 자산관리사를 찾아드립니다.</h2>
                        <p>전국의 하나금융 Private Banker가 기다리고 있습니다.</p>
                    </div>
                    <div class="hero__search__form">
                        <form action="#">
                            <input type="text" placeholder="Search...">
                            <div class="select__option">
                                <select>
                                    <option value="">분야별 카테고리</option>
                                    <option value="">주식 설계</option>
                                    <option value="">채권 설계</option>
                                    <option value="">부동산 설계</option>
                                    <option value="">세금 설계</option>
                                    <option value="">펀드 설계</option>
                                </select>
                            </div>
                            <button type="submit">Explore Now</button>
                        </form>
                    </div>
                    <ul class="hero__categories__tags">
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/css2/img/hero/cat-1.png" alt=""> #주식 분야</a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/css2/img/hero/cat-2.png" alt=""> #채권 분야</a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/css2/img/hero/cat-3.png" alt=""> #부동산 분야</a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/css2/img/hero/cat-4.png" alt=""> #펀드 분야</a></li>
                        <li><a href="#"><img src="${pageContext.request.contextPath}/resources/css2/img/hero/cat-5.png" alt=""> #세금 분야</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<%--<section class="ftco-intro" style="margin-top : -150px">--%>
<%--    <div class="container">--%>
<%--        <div class="row no-gutters">--%>
<%--            <div class="col-md-4 d-flex">--%>
<%--                <div class="intro aside-stretch d-lg-flex w-100">--%>
<%--                    <div class="icon">--%>
<%--                        <span class="flaticon-checklist"></span>--%>
<%--                    </div>--%>
<%--                    <div class="text">--%>
<%--                        <h2>100% Confidential</h2>--%>
<%--                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-4 d-flex">--%>
<%--                <div class="intro color-1 d-lg-flex w-100">--%>
<%--                    <div class="icon">--%>
<%--                        <span class="flaticon-employee"></span>--%>
<%--                    </div>--%>
<%--                    <div class="text">--%>
<%--                        <h2>Qualified Team</h2>--%>
<%--                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-4 d-flex">--%>
<%--                <div class="intro color-2 d-lg-flex w-100">--%>
<%--                    <div class="icon">--%>
<%--                        <span class="flaticon-umbrella"></span>--%>
<%--                    </div>--%>
<%--                    <div class="text">--%>
<%--                        <h2>Individual Approach</h2>--%>
<%--                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>

<!-- Js Plugins -->
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.nicescroll.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.barfiller.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/bootstrap.min.js"></script>

</body>
</html>
