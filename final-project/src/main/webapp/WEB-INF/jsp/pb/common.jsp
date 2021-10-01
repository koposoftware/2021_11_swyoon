<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="utf-8">
<head>
    <title>Counselor - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <style>

        p {
            padding: 17px;
        }

    </style>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/pbHeader.jsp"/>

<section class="hero-wrap hero-wrap-2" data-stellar-background-ratio="0.5" style="margin-bottom: 100px">
    <div class="overlay" style="background: #27b2a5;"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
                <p class="breadcrumbs mb-0"><span class="mr-2"><a href="index.html">Home <i
                        class="fa fa-chevron-right"></i></a></span> <span>Services <i
                        class="fa fa-chevron-right"></i></span></p>
                <h1 class="mb-0 bread" style="color: #fff">PB Services</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center pb-5">
            <div class="col-md-7 heading-section text-center ftco-animate">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 d-flex align-items-stretch ftco-animate">
                <div class="services-2 text-center">
                    <div class="icon-wrap">
                        <div class="number d-flex align-items-center justify-content-center"><span>02</span></div>
                        <div class="icon d-flex align-items-center justify-content-center">
                            <%--                            <a href="${pageContext.request.contextPath}/createRoom"><span class="flaticon-qa"></span></a>--%>
                            <a id="waitRoom" href="${pageContext.request.contextPath}/createRoom"><span
                                    class="flaticon-qa"></span></a>
                        </div>
                    </div>
                    <h2>상담 진행하기</h2>
                    <p>예약이 완료된 손님과 온라인 투자상담을 진행할 수 있습니다.</p>
                </div>
            </div>
            <div class="col-md-4 d-flex align-items-stretch ftco-animate">
                <div class="services-2 text-center">
                    <div class="icon-wrap">
                        <div class="number d-flex align-items-center justify-content-center"><span>01</span></div>
                        <div class="icon d-flex align-items-center justify-content-center">
                            <a href="${pageContext.request.contextPath}/pb/scheduler"><span
                                    class="flaticon-calendar"></span> </a>
                        </div>
                    </div>
                    <h2>스케줄 관리하기</h2>
                    <p>PB 직원은 온라인 / 오프라인으로 나누어 스케줄을 관리할 수 있습니다.</p>
                </div>
            </div>
            <div class="col-md-4 d-flex align-items-stretch ftco-animate">
                <div class="services-2 text-center">
                    <div class="icon-wrap">
                        <div class="number d-flex align-items-center justify-content-center"><span>03</span></div>
                        <div class="icon d-flex align-items-center justify-content-center">
                            <a href="${pageContext.request.contextPath}/pb/history">
                                <span class="flaticon-checklist"></span>
                            </a>
                        </div>
                    </div>
                    <h2>상담 내역확인</h2>
                    <p>상담 기록을 하고, 손님이 남긴 문의 사항에 대해 답변을 남길 수 있습니다. </p>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>
</body>
<script>

    $('#waitRoom').click(function () {
        console.log('pb대기방입장')
        socket.send("${bankerVO.pbName} 자산관리사분이 상담실에 입장했습니다. ")

    })


</script>

</html>
