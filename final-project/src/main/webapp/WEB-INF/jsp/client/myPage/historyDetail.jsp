<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Directing | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/barfiller.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/owl.carousel.min.css"
          type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css2/style.css" type="text/css">

    <style>
        .pb_thumbnail {
            margin-left: 30px;
            float: right;
            max-width: 15%;
        }

        .btn-light.disabled, .btn-light:disabled {
            opacity: 0.6;
            cursor: not-allowed;
        }

        #tagName {
            color: #27b2a5;
            font-weight: normal;
        }

        #profileBtn {
            cursor: pointer;
        }

        .modal fade {
            width: 70%;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box
        }

        ul > li {
            list-style: none
        }

        a {
            text-decoration: none;
        }

        .clearfix::after {
            content: "";
            display: block;
            clear: both;
        }

        #joinForm {
            width: 90%;
            margin: 0 auto;
        }

        ul.join_box {
            border: 1px solid #ddd;
            background-color: #fff;
        }

        .checkBox, .checkBox > ul {
            position: relative;
        }

        .checkBox > ul > li {
            float: left;
        }

        .checkBox > ul > li:first-child {
            width: 85%;
            padding: 15px;
            font-weight: 600;
            color: #888;
        }

        .checkBox > ul > li:nth-child(2) {
            position: absolute;
            top: 50%;
            right: 30px;
            margin-top: -12px;
        }

        .checkBox textarea {
            width: 96%;
            height: 90px;
            margin: 0 2%;
            background-color: #f7f7f7;
            color: #888;
            border: none;
        }

        .footBtwrap {
            margin-top: 15px;
        }

        .footBtwrap > li {
            float: left;
            width: 50%;
            height: 60px;
        }

        .footBtwrap > li > button {
            display: block;
            width: 100%;
            height: 100%;
            font-size: 20px;
            text-align: center;
            line-height: 60px;
        }


        .product-classification {
            cursor: pointer;
            padding: 5px 40px 5px 10px;
            -moz-appearance: none;
            -webkit-appearance: none;
            appearance: none;
            border: 1px solid #dedede;
            font-size: 16px;
            background: transparent;
            background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%20000002%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E');
            background-position: right 10px top 50%, 0, 0;
            background-size: 12px auto, 100%;
            background-repeat: no-repeat;
        }

        #mainContent {
            border: 2px solid #008485;
            padding: 15px;
            border-radius: 15px;
        }

        .listing__hero__text h2 {
            color: black;
            border-radius: 15px;
        }


        #titleSection {
            width: 70%;
            margin-left: 15%;
            padding: 15px;
        }

        .listing__details__review form input {
            width: 40%;
            border: 2px solid #008485;
            color: black;
        }

        .listing__details__review form textarea {
            border: 2px solid #008485;
            color: black;

        }

        #inquiryContent {
            color: black;
        }

        #inquiryTitle {
            color: black;
        }

        .inquiryContent {

            border: 3px solid #27b2a5;
            border-radius: 15px;
            padding: 10px;
            color: black;
        }

    </style>

</head>

<body>
<%--<!-- Page Preloder -->--%>
<%--<div id="preloder">--%>
<%--    <div class="loader"></div>--%>
<%--</div>--%>

<c:choose>
    <c:when test="${not empty bankerVO}">
        <jsp:include page="/WEB-INF/jsp/common/pbHeader.jsp"/>
    </c:when>
    <c:otherwise>
        <jsp:include page="/WEB-INF/jsp/common/header.jsp"/>
    </c:otherwise>
</c:choose>


<section class="hero-wrap hero-wrap-2"
         data-stellar-background-ratio="0.5" style="margin-bottom: 100px;">
    <div class="overlay" style="background: #27b2a5;"></div>
    <div class="container">
        <div
                class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
                <p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="index.html">Home <i
                                class="fa fa-chevron-right"></i></a></span> <span>My Page <i
                        class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread" style="color: #fff">상담 내역 조회</h1>
            </div>
        </div>
    </div>
</section>

<!-- Listing Section Begin -->
<%--<section class="listing-hero set-bg" data-setbg="img/listing/details/listing-hero.jpg">--%>
<%--    <div class="container">--%>
<%--        <div class="row" style="border-radius: 10px">--%>
<%--            <div class="col-lg-12">--%>
<%--                <div id="titleSection">--%>
<%--                    <div class="listing__hero__option">--%>
<%--                        <div class="listing__hero__icon">--%>
<%--                            <img src="img/listing/details/ld-icon.png" alt="">--%>
<%--                        </div>--%>
<%--                        <div class="listing__hero__text" style="text-align: center;">--%>
<%--                            <h2>상담 타이틀 : ${historyVO.csltTitle}</h2>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="listing__hero__widget" style="float:right;margin-top: 15px">--%>
<%--                    <div class="listing__hero__widget__rating">--%>
<%--                        <h3>--%>
<%--                            <div>상담 날짜 :${historyVO.csltTime}</div>--%>
<%--                        </h3>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
<!-- Listing Section End -->

<!-- Listing Details Section Begin -->
<section class="listing-details spad">
    <div class="container">
        <div class="row" style="background-color: #f8f9fa;border-radius: 10px">
            <div class="col-lg-12">
                <div id="titleSection">
                    <div class="listing__hero__option">
                        <div class="listing__hero__text" style="text-align: center;margin-top: 15px;">
                            <h2>상담 타이틀 : ${historyVO.csltTitle}</h2>
                        </div>
                    </div>
                </div>
                <div class="listing__hero__widget" style="float:right;margin-top: 15px">
                    <div class="listing__hero__widget__rating">
                        <h3>
                            <div>상담 날짜 : ${historyVO.csltTime}</div>
                        </h3>
                    </div>
                </div>
                <br>
                <br>
                <div class="listing__details__text">
                    <div class="listing__details__about" style="padding: 15px;">
                        <h4>상담 코멘트</h4>
                        <div id="mainContent">
                            ${historyVO.csltComment}
                            <%--                            하나금융그룹은 직원들에게 자아 실현의 기회를 제공하고, 손님의 자산 증대와 사업의 성장을 돕고, 이를 통해 사회가 번영하는데 일조하며 주주가치를 증대시키는 것을--%>
                            <%--                            목적으로 항상 최선을 다하는 금융회사가 되겠습니다.--%>
                        </div>
                    </div>
                </div>
                <div id="inquiryHistory" class="listing__details__comment" style="padding:15px;">
                    <h4>문의 내역</h4>
                    <div class="container">
                        <div id="ajaxInquiry" class="row">
                            <c:forEach items="${inquiryList}" var="inquiry">
                                <c:choose>
                                    <c:when test="${inquiry.inquiryId mod 2 ==  1}">
                                        <div class="col-lg-7 ">
                                            <div class="listing__details__comment__item" style="display: block">
                                                <div class="listing__details__comment__item__text">
                                                    <span>${inquiry.regDate}</span>
                                                    <div><h5>${inquiry.writer} 손님</h5>
                                                            <%--                                                        <div class="listing__details__comment__item__pic">--%>
                                                            <%--                                                            <img src="${pageContext.request.contextPath}/resources/pbImage.png"--%>
                                                            <%--                                                                 alt=""--%>
                                                            <%--                                                                 style="border: 1px solid cadetblue">--%>
                                                            <%--                                                        </div>--%>

                                                    </div>
                                                    <div class="inquiryContent">
                                                        <p style="color: black"><strong>문의 제목
                                                            : </strong> ${inquiry.inquiryTitle}</p>
                                                        <p style="color: black"><strong>문의 내용
                                                            :</strong> ${inquiry.inquiryContent}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-5" style="width: 100%"></div>
                                    </c:when>
                                    <c:when test="${inquiry.inquiryId mod 2 eq 0}">
                                        <div class="col-lg-5" style="width: 100%">
                                        </div>
                                        <div class="col-lg-7">
                                            <div class="listing__details__comment__item" style="float: right;">
                                                    <%--                                                <div class="listing__details__comment__item__pic">--%>
                                                    <%--                                                    <img src="${pageContext.request.contextPath}/resources/pbImage.png"--%>
                                                    <%--                                                         alt=""--%>
                                                    <%--                                                         style="border: 1px solid cadetblue">--%>
                                                    <%--                                                </div>--%>
                                                <div class="listing__details__comment__item__text">
                                                    <span>${inquiry.regDate}</span>
                                                    <h5>${inquiry.writer} PB</h5>
                                                    <div class="inquiryContent" style="border-color: red">
                                                        <p style="color: black"><strong>답변 제목</strong>
                                                            : ${inquiry.inquiryTitle}</p>
                                                        <p style="color: black"><strong>답변 내용
                                                            :</strong> ${inquiry.inquiryContent}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div class="listing__details__review" style="padding: 30px; width: 100%;">
                <c:choose>
                    <c:when test="${not empty userVO}">
                        <h4>문의글을 남겨보세요.</h4>
                        <form id="sendForm">
                            <input id="roomNumber" type="hidden" name="roomNumber" value="${historyVO.roomNumber}">
                            <input id="writer" type="hidden" name="writer" value="${historyVO.username}">
                            문의글 제목 :<br> <input class="inquiryTitle" name="inquiryTitle" type="text"
                                                placeholder="문의글 제목 입력하기">
                            <br>
                            문의글 내용 : <textarea class="inquiryContent" name="inquiryContent"
                                               placeholder="남기실 문의글을 작성해보세요."></textarea>
                            <button type="button" class="btn btn-primary" onclick="sendForm()">문의글 남기기</button>
                        </form>
                    </c:when>
                    <c:otherwise>
                        <h4>손님에게 답변하기</h4>
                        <form id="sendForm">
                            <input class="roomNumber" type="hidden" name="roomNumber" value="${historyVO.roomNumber}">
                            <input class="writer" type="hidden" name="writer" value="${historyVO.username}">
                            답변 제목 :<br> <input class="inquiryTitle" name="inquiryTitle" type="text"
                                               value="안녕하세요? ${bankerVO.pbName} PB 입니다.">
                            <br>
                            답변할 내용 : <textarea class="inquiryContent" name="inquiryContent"
                                               placeholder="남기실 문의글을 작성해보세요."></textarea>
                            <button type="button" class="btn btn-primary" onclick="sendForm()">답변 등록하기</button>
                        </form>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
    </div>
    </div>
</section>
<!-- Listing Details Section End -->


<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>


<!-- Js Plugins -->
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.barfiller.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css2/js/main.js"></script>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>

    function sendForm() {

        const writer = $('input[name=writer]').val();
        const roomNumber = $('input[name=roomNumber]').val();
        const inquiryTitle = $('input[name=inquiryTitle]').val();
        const inquiryContent = $('textarea[name=inquiryContent]').val();

        const sendDate = {
            writer, roomNumber, inquiryTitle, inquiryContent
        }
        console.log(sendDate)

        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/client/register/inquiry",
            data: JSON.stringify(sendDate),
            contentType: "application/json",
            dataType: "text",
            error: function () {
                alert("통신실패!!!!");
            },
            success: function (res) {
                console.log('inquiry ajax 성공')
                $('#ajaxInquiry').empty();
                $('#ajaxInquiry').append(res)
            }
        });


    }
</script>

</html>