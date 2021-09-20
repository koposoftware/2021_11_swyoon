<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="utf-8">
<head>
    <title>Counselor - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

<section class="hero-wrap hero-wrap-2" data-stellar-background-ratio="0.5">
    <div class="overlay" style="background: #27b2a5;"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
                <p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>Services <i class="fa fa-chevron-right"></i></span></p>
                <h1 class="mb-0 bread" style="color: #fff">Services</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center pb-5">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <span class="subheading">Services</span>
                <h2>How It Works</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 d-flex align-items-stretch ftco-animate">
                <div class="services-2 text-center">
                    <div class="icon-wrap">
                        <div class="number d-flex align-items-center justify-content-center"><span>01</span></div>
                        <div class="icon d-flex align-items-center justify-content-center">
                            <a href="${pageContext.request.contextPath}/pb/scheduler"><span class="flaticon-calendar"></span> </a>
                        </div>
                    </div>
                    <h2>스케줄 관리하기</h2>
                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                </div>
            </div>
            <div class="col-md-4 d-flex align-items-stretch ftco-animate">
                <div class="services-2 text-center">
                    <div class="icon-wrap">
                        <div class="number d-flex align-items-center justify-content-center"><span>02</span></div>
                        <div class="icon d-flex align-items-center justify-content-center">
                            <a href="${pageContext.request.contextPath}/createRoom"><span class="flaticon-qa"></span></a>
                        </div>
                    </div>
                    <h2>상담 진행하기</h2>
                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                </div>
            </div>
            <div class="col-md-4 d-flex align-items-stretch ftco-animate">
                <div class="services-2 text-center">
                    <div class="icon-wrap">
                        <div class="number d-flex align-items-center justify-content-center"><span>03</span></div>
                        <div class="icon d-flex align-items-center justify-content-center">
                            <span class="flaticon-checklist"></span>
                        </div>
                    </div>
                    <h2>상담 내역확인</h2>
                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>

</html>
