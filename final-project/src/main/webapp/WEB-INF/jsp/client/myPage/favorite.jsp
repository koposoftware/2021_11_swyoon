<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    <%--    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">--%>

    <!-- Css Styles -->
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css2/bootstrap.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css2/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css2/elegant-icons.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css2/flaticon.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css2/nice-select.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css2/barfiller.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css2/magnific-popup.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css2/jquery-ui.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css2/owl.carousel.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css2/slicknav.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css2/style.css"
          type="text/css">

    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/animate.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">

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

        #profileImage {
            background-size: 70%;
            background-position: bottom;
        }

        #pbImage {
            margin-left: 20%;
            margin-top: 50px;
            width: 60%;
            height: 80%;
            position: initial;
        }

        .listing__item__pic img {
            bottom: -30px;
            border-radius: 50%;
        }


    </style>

</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>


<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>

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
                <h1 class="mb-0 bread" style="color: #fff">즐겨찾기 목록</h1>
            </div>
        </div>
    </div>
</section>

<!-- Most Search Section Begin -->
<section class="most-search spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>즐겨찾기한 PB 목록 리스트</h2>
                    <p>PB 찾기 목록에서 하트 버튼을 누른 PB 리스트를 분아별로 조회할 수 있습니다.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="most__search__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <div class="sector">
                                <a class="nav-link" data-toggle="tab" href="#tabs-1" role="tab">
                                    전체 분야
                                </a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                예금 분야
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                주식 분야
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">
                                채권 분야
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-5" role="tab">
                                펀드 분야
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-6" role="tab">
                                랩 어카운트
                            </a>
                        </li>
                    </ul>
                </div>
                <div id="favoritePage" class="tab-content">
                    <div class="tab-pane active" id="tabs-1" role="tabpanel">
                        <div class="row">
                            <c:forEach items="${favoriteList}" var="favorite" varStatus="loop">
                                <div class="col-lg-4 col-md-6">
                                    <div class="listing__item">
                                        <div id="profileImage" class="listing__item__pic set-bg">
                                                <%--                                            <img id="pbImage"--%>
                                                <%--                                                 src="${pageContext.request.contextPath}/resources/pbImage.png">--%>
                                            <img id="pbImage"
                                                 src="${pageContext.request.contextPath}${favorite.fileSq}">
                                            <div class="listing__item__pic__tag top_rate"><c:out
                                                    value="${favorite.mainField}"/></div>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5 style="text-align: center"><c:out value="${favorite.branchName}"/>
                                                    <c:out value="${favorite.pbName}"/> 자산관리사</h5>
                                                <div class="listing__item__text__rating">
                                                        <%--                                                    <h6>$40 - $70</h6>--%>
                                                </div>
                                                <ul>
                                                    <li>10년 경력 ${favorite.mainField} 투자 전문 PB<br>
                                                        투자자산운용사 등 5개 자격증 보유
                                                    </li>
                                                    <li> 연락처 : (02)-678-910</li>
                                                </ul>
                                            </div>
                                            <div class="listing__item__text__info">
                                                <div class="listing__item__text__info__left">
                                                </div>
                                                <form action="${pageContext.request.contextPath}/client/searchList"
                                                      method="post">
                                                    <input class="codeNum" name="codeNum" type="hidden"
                                                           value="${favorite.codeNum}">
                                                    <input class="sector" name="sector" type="hidden"
                                                           value="${favorite.mainField}">
                                                    <button style="background-color: #27b2a5;border-color: #27b2a5;float: right"
                                                            class="btn btn-success btn-sm" type="submit">상담 예약하기
                                                    </button>
                                                        <%--                                                <div class="listing__item__text__info__right">--%>
                                                        <%--                                                </div>--%>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Most Search Section End -->


<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>
<!-- Js Plugins -->
<script
        src="${pageContext.request.contextPath}/resources/css2/js/jquery.nice-select.min.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/css2/js/jquery-ui.min.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/css2/js/jquery.nicescroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/css2/js/jquery.barfiller.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/css2/js/jquery.magnific-popup.min.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/css2/js/jquery.slicknav.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/css2/js/owl.carousel.min.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/css2/js/main.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/css2/js/bootstrap.min.js"></script>


<script>


    $('.nav-link').click(function () {
        const mainField = $(this).text().trim();
        console.log(mainField)
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/myPage/favoriteList/sector",
            data: mainField,
            contentType: "application/json; charset=utf-8;",
            dataType: "text",
            success: function (res) {
                $("#favoritePage").empty();
                $('#favoritePage').append(res)

            }
        });
    })

    $('.close').click(function () {
        var parent = $(this).parents('.listing__item');
        let codeNum = parent.find('.codeNum').val();
        let mainField = parent.find('.sector').val()
        console.log(codeNum)
        console.log(mainField)

        var banker = {codeNum, mainField}
        // var deleteTag = $(this).parents('.listing__item');
        // deleteTag.remove();
        alert('즐겨찾기 제거 완료')
        location.reload();
        location.reload();

        var send = JSON.stringify(banker);

        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/myPage/favorite/delete",
            data: send,
            contentType: "application/json; charset=utf-8;",
            dataType: "json",
            success: function (res) {
                alert('즐겨찾기 제거 완료')
            }
        });
    })


</script>


</body>

</html>