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

    <%--    <!-- Css Styles -->--%>
    <%--    <link--%>
    <%--            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"--%>
    <%--            rel="stylesheet">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css/animate.css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css/flaticon.css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css/style.css">--%>

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

    <!-- ????????? link -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/calender/bootstrap-datepicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/calender/bootstrap-datepicker.standalone.min.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css"/>


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
            color: black;
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

        .fpmgBt1 {
            background-color: #fff;
            color: #888
        }

        .fpmgBt2 {
            background-color: lightsalmon;
            color: #fff
        }

        #staticBackdrop {
            overflow: hidden;
        }

        #heartBtn, #favoriteBtn {
            float: right;
            font-size: 25px;
            color: red;
        }

        .fa-heart:hover {
            cursor: pointer;
        }

        .fa-heart {
            color: grey;
        }

        .fas, .fa-heart {
            color: red;
        }

        .fa-heart-o {
            color: red;
            cursor: pointer;
        }

        .fa-heart {
            color: red;
            cursor: pointer;
        }

        .back-to-top {
            position: fixed;
            bottom: 25px;
            right: 25px;
            display: none;
        }

        .tagName {
            font-size: 14px !important;
            font-weight: 900;
            color: black !important;
        }

        #searchDate {
            font-size: 26px;
            color: #323232;
            font-weight: 600;
            /* margin-left: 12px; */
            text-align: center
        }

        .btn {
            font-size: 15px !important;
            border: 1px solid #27b2a5 !important;
            border-radius: 5px;
        }

        .blog__item__text {
            border-radius: 10px;
        }

        .profileBtn {
            cursor: pointer;
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
         data-stellar-background-ratio="0.5">
    <div class="overlay" style="background: #27b2a5;"></div>
    <div class="container">
        <div
                class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
                <p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="index.html">Home <i
                                class="fa fa-chevron-right"></i></a></span> <span>PB ?????? <i
                        class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread" style="color: #fff">?????? ????????? PB ??????</h1>
            </div>
        </div>
    </div>
</section>


<div class="container" style="padding-top: 100px; color: black">
    <div class="row">
        <div class="col-lg-12">
            <div class="hero__text">
                <ul class="hero__categories__tags">
                    <li>
                        <button name="sector" id="totalBtn" type="button"
                                class="btn btn-success"
                                style="background-color: #27b2a5; border-color: #27b2a5;">?????? ??????
                        </button>
                    </li>
                    <li>
                        <button name="sector" type="button" class="btn btn-success"
                                style="background-color: #27b2a5;; border-color: #27b2a5;">?????? ??????
                        </button>

                    </li>
                    <li>
                        <button name="sector" type="button" class="btn btn-success"
                                style="background-color: #27b2a5;; border-color: #27b2a5;">?????? ??????
                        </button>

                    </li>
                    <li>
                        <button name="sector" type="button" class="btn btn-success"
                                style="background-color: #27b2a5;; border-color: #27b2a5;">?????? ??????
                        </button>

                    </li>
                    <li>
                        <button name="sector" type="button" class="btn btn-success"
                                style="background-color: #27b2a5;; border-color: #27b2a5;">?????? ??????
                        </button>
                    </li>
                    <li>
                        <button name="sector" type="button" class="btn btn-success"
                                style="background-color: #27b2a5;; border-color: #27b2a5;">??? ????????????
                        </button>

                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>


<!-- Blog Section Begin -->
<section class="blog-section spad">
    <div class="container">
        <div class="row">
            <div id="sectorList" class="col-lg-8">
                <c:forEach items="${favoriteList}" var="favorite" varStatus="loop">
                    <div class="blog__item__large">
                        <div class="blog__item__text" style="border :2px solid #27b2a5">
                            <ul class="blog__item__tags">
                                <li><i class="fa fa-tags"></i> <c:out
                                        value="${favorite.branchName}"/></li>

                                <input class="pbBranchName" type="hidden"
                                       value="<c:out value="${favorite.branchName}"/>"/>
                                <li><c:out value="${favorite.mainField}"/></li>
                                <span><i id="favoriteBtn" class="far fa-heart favorite" style="color: red;"></i></span>
                            </ul>
                                <%--                            <button type="button" id="popbutton" class="btn btn-primary" id="#modalScroll">--%>
                                <%--                            </button>--%>
                                <%--                            <a class="profileBtn"><img class="pb_thumbnail"--%>
                                <%--                                                       src="${pageContext.request.contextPath}/resources/pb/${loop.count}.jpg"/></a>--%>
                            <c:choose>
                                <c:when test="${not empty favorite.fileSq}">
                                    <a class="profileBtn"><img class="pb_thumbnail"
                                                               src="${pageContext.request.contextPath}${favorite.fileSq}"/></a>
                                </c:when>
                                <c:otherwise>
                                    <a class="profileBtn"><img class="pb_thumbnail"
                                                               src="${pageContext.request.contextPath}/resources/images/user2.png"/></a>
                                </c:otherwise>
                            </c:choose>
                            <h3>
                                <span><c:out value="${favorite.pbName}"/></span> ???????????????
                                <input class=" codeNum" type="hidden" value="${favorite.codeNum}">
                                <input
                                        class="pbName" type="hidden"
                                        value="<c:out value="${favorite.pbName}"/>"/>
                            </h3>
                            <p>
                                <c:out value="${favorite.introContent}"/>
                            </p>
                            <ul class="blog__item__widget">
                                <h3>
                                    <p style="color: black">?????? ?????? : <c:out value="${schedulerDate}"/></p>
                                </h3>
                                <c:if test="${fn:contains(favorite.impossible,'1')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter;border-radius: 5px"
                                                value="10:00">10:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(favorite.impossible,'1')}">
                                    <li>
                                        <button id="termsModal" class="btn btn-light btn-sm"
                                                style="margin-bottom: 10px;" value="10:00;border-radius: 5px">10:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${fn:contains(favorite.impossible,'2')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter;border-radius: 5px">
                                            11:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(favorite.impossible,'2')}">
                                    <li>
                                        <button class="btn btn-light btn-sm"
                                                style="margin-bottom: 10px;border-radius: 5px" value="11:00">11:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${fn:contains(favorite.impossible,'3')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter;border-radius: 5px">
                                            13:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(favorite.impossible,'3')}">
                                    <li>
                                        <button value="13:00" class="btn btn-light btn-sm "
                                                style="margin-bottom: 10px;border-radius: 5px">13:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${fn:contains(favorite.impossible,'4')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter;border-radius: 5px">
                                            14:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(favorite.impossible,'4')}">
                                    <li>
                                        <button value="14:00" class="btn btn-light btn-sm "
                                                style="margin-bottom: 10px;border-radius: 5px">14:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${fn:contains(favorite.impossible,'5')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter;border-radius: 5px">
                                            15:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(favorite.impossible,'5')}">
                                    <li>
                                        <button value="15:00" class="btn btn-light btn-sm "
                                                style="margin-bottom: 10px;border-radius: 5px">15:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${fn:contains(favorite.impossible,'6')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter;border-radius: 5px">
                                            16:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(favorite.impossible,'6')}">
                                    <li>
                                        <button value="16:00" class="btn btn-light btn-sm "
                                                style="margin-bottom: 10px;border-radius: 5px">16:00
                                        </button>
                                    </li>
                                </c:if>
                            </ul>
                            <div class="tagNames" id="tagName">
                                <c:out value="${favorite.tagName}"/>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <c:forEach items="${bankerList}" var="banker" varStatus="loop">

                    <div class="blog__item__large">
                        <div class="blog__item__text">
                            <ul class="blog__item__tags">
                                <li><i class="fa fa-tags"></i> <c:out
                                        value="${banker.branchName}"/></li>

                                    <%--                                <input class="introContent" type="hidden"--%>
                                    <%--                                       value="<c:out value="${banker.introContent}"/>"/>--%>
                                    <%--                                <input class="mainContent" type="hidden"--%>
                                    <%--                                       value="<c:out value="${banker.mainContent}"/>"/>--%>
                                <input class="mainField" type="hidden" value="<c:out value="${banker.mainField}"/>"/>
                                <input class="rank" type="hidden" value="<c:out value='${banker.pbRank}'/>"/>

                                <input class="pbBranchName" type="hidden"
                                       value="<c:out value="${banker.branchName}"/>"/>
                                <span><li class="mainField"><c:out value="${banker.mainField}"/></li></span>
                                <span><i id="heartBtn" class="far fa-heart" style="color: red;"></i></span>
                            </ul>
                                <%--                            <button type="button" id="popbutton" class="btn btn-primary" id="#modalScroll">--%>
                                <%--                            </button>--%>
                                <%--                            <a class="profileBtn"><img class="pb_thumbnail"--%>
                                <%--                                                       src="${pageContext.request.contextPath}/resources/pb/${loop.count}.jpg"/></a>--%>
                            <c:choose>
                                <c:when test="${not empty banker.fileSq}">
                                    <a class="profileBtn"><img class="pb_thumbnail"
                                                               src="${pageContext.request.contextPath}${banker.fileSq}"/></a>
                                </c:when>
                                <c:otherwise>
                                    <a class="profileBtn"><img class="pb_thumbnail"
                                                               src="${pageContext.request.contextPath}/resources/images/user2.png"/></a>
                                </c:otherwise>
                            </c:choose>
                            <h3>
                                <span><c:out value="${banker.pbName}"/></span> ???????????????
                                <input class="codeNum" type="hidden" value="${banker.codeNum}">
                                <input
                                        class="pbName" type="hidden"
                                        value="<c:out value="${banker.pbName}"/>"/>
                            </h3>
                            <p>
                                <c:out value="${banker.introContent}"/>
                            </p>
                            <ul class="blog__item__widget">
                                <h3>
                                    <p style="color: black">?????? ?????? : <c:out value="${schedulerDate}"/></p>
                                </h3>
                                <c:if test="${fn:contains(banker.impossible,'1')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter"
                                                value="10:00">10:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'1')}">
                                    <li>
                                        <button id="termsModal" class="btn btn-light btn-sm"
                                                style="margin-bottom: 10px;background-color: #27b2a5;color: #fff;"
                                                value="10:00">10:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${fn:contains(banker.impossible,'2')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter">11:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'2')}">
                                    <li>
                                        <button class="btn btn-light btn-sm"
                                                style="margin-bottom: 10px;background-color: #27b2a5;color: #fff;"
                                                value="11:00">11:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${fn:contains(banker.impossible,'3')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter">13:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'3')}">
                                    <li>
                                        <button value="13:00" class="btn btn-light btn-sm "
                                                style="margin-bottom: 10px;background-color: #27b2a5;color: #fff;">13:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${fn:contains(banker.impossible,'4')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter">14:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'4')}">
                                    <li>
                                        <button value="14:00" class="btn btn-light btn-sm "
                                                style="margin-bottom: 10px;background-color: #27b2a5;color: #fff;">14:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${fn:contains(banker.impossible,'5')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter">15:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'5')}">
                                    <li>
                                        <button value="15:00" class="btn btn-light btn-sm "
                                                style="margin-bottom: 10px;background-color: #27b2a5;color: #fff;">15:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${fn:contains(banker.impossible,'6')}">
                                    <li>
                                        <button class="btn btn-light btn-sm disabled"
                                                style="margin-bottom: 10px; font-weight: lighter">16:00
                                        </button>
                                    </li>
                                </c:if>
                                <c:if test="${not fn:contains(banker.impossible,'6')}">
                                    <li>
                                        <button value="16:00" class="btn btn-light btn-sm "
                                                style="margin-bottom: 10px;background-color: #27b2a5;color: #fff;">16:00
                                        </button>
                                    </li>
                                </c:if>
                            </ul>
                            <div id="tagName">
                                <c:out value="${banker.tagName}"/>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <div class="blog__pagination">
                    <a href="#"><i class="fa fa-long-arrow-left"></i> Pre</a> <a
                        href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">Next
                    <i class="fa fa-long-arrow-right"></i>
                </a>
                </div>
            </div>


            <div class="col-lg-4">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__search">
                        <h5 id="searchDate">?????? ??????</h5>
                        <form action="${pageContext.request.contextPath}/client/searchDate" method="post">
                            <c:choose>
                                <c:when test="${ schedulerDate == '2021-09-19'}">
                                    <input name="schedulerDate" type="text" id="da1" class="form-control"
                                           placeholder="????????? ??????????????????">
                                </c:when>
                                <c:otherwise>
                                    <input name="schedulerDate" type="text" id="da1" class="form-control"
                                           value="${schedulerDate}">
                                </c:otherwise>
                            </c:choose>
                            <c:if test="${empty sector}">
                                <input name="sector" type="hidden" value="?????? ??????">
                            </c:if>
                            <input name="sector" type="hidden" value="${sector}">
                            <button type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </form>
                    </div>
                    <div class="blog__sidebar__tags" style="margin-bottom: 50px">
                        <h5>?????? ?????? ??????</h5>
                        <a class="tagName"
                           href="${pageContext.request.contextPath}/search/tagName?tagName=?????????&schedulerDate=${schedulerDate}">?????????</a>
                        <a class="tagName"
                           href="${pageContext.request.contextPath}/search/tagName?tagName=????????????">????????????</a>
                        <a class="tagName"
                           href="${pageContext.request.contextPath}/search/tagName?tagName=??????????????????&schedulerDate=${schedulerDate}">??????????????????</a>
                        <a class="tagName"
                           href="${pageContext.request.contextPath}/search/tagName?tagName=?????????&schedulerDate=${schedulerDate}">?????????</a>
                        <a class="tagName"
                           href="${pageContext.request.contextPath}/search/tagName?tagName=?????????&schedulerDate=${schedulerDate}">?????????</a>
                        <a class="tagName"
                           href="${pageContext.request.contextPath}/search/tagName?tagName=?????????&schedulerDate=${schedulerDate}">?????????</a>
                        <a class="tagName"
                           href="${pageContext.request.contextPath}/search/tagName?tagName=?????????&schedulerDate=${schedulerDate}">?????????</a>
                        <a class="tagName"
                           href="${pageContext.request.contextPath}/search/tagName?tagName=???????????????">???????????????</a>
                        <a class="tagName"
                           href="${pageContext.request.contextPath}/search/tagName?tagName=?????????&schedulerDate=${schedulerDate}">?????????</a>
                    </div>
                    <%--                    <div class="blog__sidebar__categories">--%>
                    <%--                        <h5>TOP 5 ?????? ??????</h5>--%>
                    <%--                        <ul>--%>
                    <%--                            <li><a href="#">Finance <span>18</span></a></li>--%>
                    <%--                            <li><a href="#">Business <span>20</span></a></li>--%>
                    <%--                            <li><a href="#">Loan <span>07</span></a></li>--%>
                    <%--                            <li><a href="#">Consulting <span>22</span></a></li>--%>
                    <%--                            <li><a href="#">Credit <span>19</span></a></li>--%>
                    <%--                        </ul>--%>
                    <%--                    </div>--%>
                    <div class="blog__sidebar__recent">
                        <h5>?????? ?????? ????????? ????????? PB</h5>
                        <c:forEach items="${recentList}" var="recent" varStatus="loop" end="4">
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/blog/recent-1.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <span style="font-size: 15px"><i class="fa fa-tags"></i><c:out
                                            value="${recent.branchName}"/></span>
                                    <h5>${recent.pbName} ?????????</h5>
                                    <p>
                                        <i class="fa fa-clock-o"></i> <c:out value="${recent.csltTime}"/>
                                    </p>
                                </div>
                            </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->


<!--  acceptTermsModal -->
<div id="staticBackdrop" class="modal fade" id="exampleModalScrollable"
     tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div
            class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg"
            role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">????????? ?????? ????????????</h5>
                <%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
            </div>
            <div class="modal-body">
                <div id="joinForm">
                    <ul class="join_box">

                        <li class="checkBox check02">
                            <ul class="clearfix">
                                <li>???????????? ??????(??????)</li>
                                <li class="checkBtn"><input type="checkbox" name="chk">
                                </li>
                            </ul>
                            <textarea name="" id="">???????????? ???????????????.
???????????? ????????? ??? ??????(?????? ???????????????)??? ????????? ????????? ???????????????. ??? ????????? ????????? ???????????? ???????????? ????????? ???????????? ???????????? ???????????? ???????????? ???????????? ????????????(?????? ??????????????????)??? ?????? ???????????? ???????????? ????????? ??????(?????? ????????????) ?????? ??????????????? ????????? ????????????, ????????? ???????????? ???????????? ????????? ????????? ????????? ??? ??? ?????? ????????? ????????? ???????????? ????????????.
       </textarea>
                        </li>
                        <li class="checkBox check03">
                            <ul class="clearfix">
                                <li>???????????? ?????? ??? ????????? ?????? ??????(??????)</li>
                                <li class="checkBtn"><input type="checkbox" name="chk">
                                </li>
                            </ul>
                            <textarea name="" id="">???????????? ???????????????.
???????????? ????????? ??? ??????(?????? ???????????????)??? ????????? ????????? ???????????????. ??? ????????? ????????? ???????????? ???????????? ????????? ???????????? ???????????? ???????????? ???????????? ???????????? ????????????(?????? ??????????????????)??? ?????? ???????????? ???????????? ????????? ??????(?????? ????????????) ?????? ??????????????? ????????? ????????????, ????????? ???????????? ???????????? ????????? ????????? ????????? ??? ??? ?????? ????????? ????????? ???????????? ????????????.
       </textarea>
                        </li>
                        <li class="checkBox check03">
                            <ul class="clearfix">
                                <li>???????????? ???????????? ??????(??????)</li>
                                <li class="checkBtn"><input type="checkbox" name="chk">
                                </li>
                            </ul>
                            <textarea name="" id="">???????????? ???????????????.
???????????? ????????? ??? ??????(?????? ???????????????)??? ????????? ????????? ???????????????. ??? ????????? ????????? ???????????? ???????????? ????????? ???????????? ???????????? ???????????? ???????????? ?????????????????? ????????????(?????? ??????????????????)??? ?????? ???????????? ???????????? ????????? ??????(?????? ????????????) ?????? ??????????????? ????????? ????????????, ????????? ???????????? ???????????? ????????? ????????? ????????? ??? ??? ?????? ????????? ????????? ???????????? ????????????.
       </textarea>
                        </li>
                        <li class="checkBox check04">
                            <ul class="clearfix">
                                <li>????????? ??? ???????????? ?????? ?????? ??????(??????</li>
                                <li class="checkBtn"><input type="checkbox" name="chk">
                                </li>
                            </ul>

                        </li>
                        <li class="checkBox check01">
                            <ul class="clearfix">
                                <li>????????????, ???????????? ?????? ??? ??????, ???????????? ????????????(??????), ???????????? ?????? ?????? ??????(??????)???
                                    ?????? ???????????????.
                                </li>
                                <li class="checkAllBtn"><input type="checkbox"
                                                               name="chkAll" id="chk" class="chkAll"></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="footBtwrap clearfix">
                    </ul>
                </div>
            </div>
            <div class="modal-footer">
                <button id="termsCloseBtn" type="button" class="btn btn-secondary"
                        data-bs-dismiss="modal">??????
                </button>
                <button id="reservationBtn" type="button" class="btn btn-primary">??????????????????</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="sendModal" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel">????????? ????????????</h4>
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <%--                    <div class="form-group">--%>
                    <%--                        <label for="recipient-name" class="control-label">?????? ??????</label>--%>
                    <%--                        <div id="recipient-name" >?????? : ${userVO.username}</div>--%>
                    <%--                        <div >?????? ?????? : ${}</div>--%>
                    <%--   pb_thumbnail                 </div>--%>
                    <div class="form-group">
                        <label for="message-text" class="control-label">?????? ?????? ??????
                            :</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button id="sendMsg" type="button" class="btn btn-primary">??????</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="sendModal2" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">?????? ????????? ???????????????????</h4>
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        ????????? ?????? : <span id="pb"></span><br> ?????? ?????? : <span id="time"></span>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button id="sendMsg2" type="button" class="btn btn-primary"
                        data-dismiss="modal">?????? ????????????
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>


<!-- ????????? modal -->
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 id="profileTitle" style="margin-left: 50px;padding: 6px;" class="modal-title"
                    id="exampleModalScrollableTitle"></h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <section class="ftco-section ftco-no-pb ftco-no-pt">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 img img-3 d-flex justify-content-center align-items-center"
                                 style="background-image: url(${pageContext.request.contextPath}/resources/pb/1.jpg);">
                            </div>
                            <div class="col-md-6 wrap-about px-md-5 ftco-animate py-5 bg-light">
                                <div class="heading-section py-md-5">
                                    <span class="subheading">(???)??????????????????</span>
                                    <h2 class="mb-41">${bankerVO.pbName}</h2>

                                    <p>????????????????????? ??????????????? ?????? ????????? ????????? ????????????, ????????? ?????? ????????? ????????? ????????? ??????,
                                        ?????? ?????? ????????? ??????????????? ???????????? ??????????????? ??????????????? ?????? ???????????? ?????? ????????? ????????? ??????????????? ???????????????.</p>
                                    <p>????????????????????? ???????????? ????????? ??????????????? ???????????? ????????? ?????? ????????? ????????? ???????????? ??????, ??????, ??????, ?????????,
                                        ?????? ??? ????????? ??? ???????????? ????????? ????????? ???????????? ?????? '???????????? ???????????? ????????? ????????????'??? ????????? ?????? ???????????? ???????????? ????????????.</p>

                                    <a href="#"
                                       class="play-video ">
                                        <button id="showModal" style="border:0; outline: 0">
                                            <div style="width: 100px; width: 150px;height: 50px;border: 2px solid #27b2a5"
                                                 class="icon d-flex align-items-center justify-content-center"><span
                                                    style="color: #27b2a5;font-weight: bolder"
                                                    class="">??????????????????</span></div>
                                        </button>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>

                <section class="ftco-counter ftco-section ftco-no-pt ftco-no-pb img bg-light" id="section-counter">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 py-4 mb-4">
                                    <div class="text align-items-center">
                                        <strong class="number" data-number="3000">0</strong>
                                        <span>Our Satisfied  &amp; Happy Customers</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 py-4 mb-4">
                                    <div class="text align-items-center">
                                        <strong class="number" data-number="30">0</strong>
                                        <span>Years of Experience In Business</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 py-4 mb-4">
                                    <div class="text align-items-center">
                                        <strong class="number" data-number="200">0</strong>
                                        <span>Our Qualified Counselor</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3 justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 py-4 mb-4">
                                    <div class="text align-items-center">
                                        <strong class="number" data-number="40">0</strong>
                                        <span>Services Points</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="ftco-section testimony-section">
                    <div class="img img-bg border" style="background-image: url(images/bg_4.jpg);"></div>
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row justify-content-center mb-5">
                            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                                <span class="subheading"></span>
                                <h2 class="mb-3">?????? ?????? ?????????</h2>
                            </div>
                        </div>
                        <div class="row ftco-animate">
                            <div class="col-md-12">
                                <div class="carousel-testimony owl-carousel ftco-owl">
                                    <div class="item">
                                        <div class="testimony-wrap py-4">
                                            <div class="icon d-flex align-items-center justify-content-center "><span
                                                    class="fa fa-quote-left"></div>
                                            <div class="text">
                                                <p>?????? ???????????? ?????????????????? ???????????????. ?????? ????????? ??????????????????.</p>
                                                <div class="d-flex align-items-center">
                                                    <div class="user-img"
                                                         style="background-image: url(${pageContext.request.contextPath}/resources/images/bussiness-man.png)"></div>
                                                    <div class="pl-3">
                                                        <p class="name">????????? ??????</p>
                                                        <span class="position"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="testimony-wrap py-4">
                                            <div class="icon d-flex align-items-center justify-content-center"><span
                                                    class="fa fa-quote-left"></div>
                                            <div class="text">
                                                <p>??????????????? PB??? ????????? ?????? ???????????? ?????????????????????!!</p>
                                                <div class="d-flex align-items-center">
                                                    <div class="user-img"
                                                         style="background-image: url(${pageContext.request.contextPath}/resources/images/bussiness-man.png)"></div>
                                                    <div class="pl-3">
                                                        <p class="name">????????? ??????</p>
                                                        <span class="position"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="testimony-wrap py-4">
                                            <div class="icon d-flex align-items-center justify-content-center"><span
                                                    class="fa fa-quote-left"></div>
                                            <div class="text">
                                                <p>?????? ????????? PB?????? ?????? ?????? ?????? ????????????. ?????? ?????????????????? !!!</p>
                                                <div class="d-flex align-items-center">
                                                    <div class="user-img"
                                                         style="background-image: url(${pageContext.request.contextPath}/resources/images/bussiness-man.png)"></div>
                                                    <div class="pl-3">
                                                        <p class="name">????????? ??????</p>
                                                        <span class="position"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="testimony-wrap py-4">
                                            <div class="icon d-flex align-items-center justify-content-center"><span
                                                    class="fa fa-quote-left"></div>
                                            <div class="text">
                                                <p>????????? ?????? ?????? ???????????????!! ????????? ?????? ?????? ?????? ??????????????? ?????????????????? ??????</p>
                                                <div class="d-flex align-items-center">
                                                    <div class="user-img"
                                                         style="background-image: url(${pageContext.request.contextPath}/resources/images/bussiness-man.png)"></div>
                                                    <div class="pl-3">
                                                        <p class="name">????????? ??????</p>
                                                        <span class="position"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="modal-footer">
                <%--                <button type="button" class="btn btn-outline-primary" data-dismiss="modal">??????</button>--%>
            </div>
        </div>
    </div>
</div>


<div class="input-group date" data-provide="datepicker">
    <input type="text" class="form-control">
    <div class="input-group-addon">
        <span class="glyphicon glyphicon-th"></span>
    </div>
</div>

<a id="back-to-top" href="#" class="btn btn-light btn-lg back-to-top" role="button"><i
        class="fas fa-chevron-up"></i></a>

<%--<jsp:include page="/WEB-INF/jsp/client/searchBanker/profileModal.jsp"/>--%>


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

<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<scriptsrc="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%> <%--??????????????? ?????? ? --%>

<script src="${pageContext.request.contextPath}/resources/calender/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/calender/bootstrap-datepicker.ko.min.js"></script>

<script>

    $(document).ready(function () {
        $('.favorite').removeClass("far fa-heart")
        $('.favorite').addClass("fas fa-heart");
    })


    var consultTime;
    var username = '${sessionScope.userVO.username}';
    var reserveComment;
    var pbName;
    var sendMessage;
    var pbBranchName;


    $("#profileBtn").click(function () {
        $('#exampleModalScrollable').modal();
    })

    $(document).on("click", ".btn.btn-light.btn-sm", function (event) {
        console.log('???????????????????')
        consultTime = $(this).val()
        var parent = $(this).parents('.blog__item__large')
        pbName = parent.find('.pbName').val();
        pbBranchName = parent.find('.pbBranchName').val();
        console.log("done");
        $('#staticBackdrop').modal('show');
    });

    $("#termsCloseBtn").click(function () {
        $('#staticBackdrop').modal('hide');
    })

    $("#reservationBtn").click(function () {
        $('#staticBackdrop').modal('hide');
        $('#sendModal').modal('show');
    })

    var schedulerDate = '${schedulerDate}';

    $(function () {
        $('#sendMsg')
            .click(
                function () {
                    reserveComment = $('#message-text').val();
                    $('#sendModal').modal('hide');
                    $('#sendModal2').modal('show');
                    $("#time").text(consultTime)
                    $("#pb").text(pbName)
                    console.log(schedulerDate)
                    sendMessage = {
                        "username": username,
                        "rsrvTime": consultTime,
                        "rsrvComment": reserveComment,
                        "pbName": pbName,
                        "pbBranchName": pbBranchName,
                        "startDate": schedulerDate
                    }
                    console.log(sendMessage)
                    console.log(JSON.stringify(sendMessage))
                    $('#sendMsg2').click(function () {
                        // const sendMessage = username + "," + pbName + "," + consultTime + "," + reserveComment;
                        console.log(sendMessage)
                        socket.send(username + ","
                            + pbName + ","
                            + consultTime + ","
                            + reserveComment);
                        // ?????? ?????? DB ?????? ajax
                        $.ajax({
                            type: "POST",
                            url: "${pageContext.request.contextPath}/client/sendReservation",
                            dataType: 'json',
                            contentType: 'application/json',
                            data: JSON
                                .stringify(sendMessage),
                            success: function () {
                            }
                        })
                        window.location.href = "${pageContext.request.contextPath}/client/searchList"

                    })
                })

    })

    // ????????? ??????
    var sector;
    $('button[name=sector]').click(
        function () {
            console.log($(this).text())
            sector = $(this).text()
            location.href = "${pageContext.request.contextPath}/client/searchBySector?sector=" + sector + "&schedulerDate=" + '${schedulerDate}';
        })

    $(document).ready(function () {
        var datep = {
            format: "yyyy-mm-dd", //????????? ?????? ??????(yyyy : ??? mm : ??? dd : ??? )
            startDate: '-10d', //???????????? ?????? ??? ??? ?????? ?????? ?????? ??????. ??????????????? ?????? ????????? ( d : ??? m : ??? y : ??? w : ???)
            endDate: '+10d', //???????????? ?????? ??? ??? ?????? ?????? ?????? ??????. ????????? ?????? ?????? ( d : ??? m : ??? y : ??? w : ???)
            autoclose: true, //???????????? ????????? ???????????? ?????? ???????????? ????????? ??????
            calendarWeeks: false, //????????? ?????? ??? ???????????? ???????????? ?????? ????????? false ??????????????? true
            clearBtn: false, //?????? ????????? ??? ????????? ????????? ?????? ???????????? ?????? ????????? false ??????????????? true
            //datesDisabled : [''],//?????? ???????????? ??? ?????? ?????? ?????? ?????? ?????? format ??? ????????? ????????????.
            daysOfWeekDisabled: [0, 6], //?????? ???????????? ?????? ?????? 0 : ????????? ~ 6 : ?????????
            // daysOfWeekHighlighted : [''], //?????? ????????? ?????? ?????? ??????
            disableTouchKeyboard: false, //??????????????? ???????????? ?????? ?????? ????????? false ??? ?????? true??? ?????? ??????.
            immediateUpdates: false, //???????????? ?????? ???????????? ???????????? ????????? ???????????? ?????? ????????? :false
            multidate: false, //?????? ?????? ????????? ??? ?????? ?????? ?????? ????????? :false
            multidateSeparator: ",", //?????? ????????? ???????????? ??? ????????? ???????????? ?????? 2019-05-01,2019-06-01
            templates: {
                leftArrow: '??',
                rightArrow: '??'
            }, //????????? ???????????? ???????????? ????????? ?????? ????????? ?????????
            showWeekDays: true,// ?????? ?????? ???????????? ?????? ????????? : true
            title: "?????? ?????? ??????", //????????? ????????? ???????????? ?????????
            todayHighlight: true, //?????? ????????? ??????????????? ?????? ????????? :false
            toggleActive: true, //?????? ????????? ?????? ???????????? ????????? : false????????? ????????? ?????? true??? ?????? ?????? ??????
            weekStart: 0,//?????? ?????? ?????? ???????????? ??? ???????????? 0??? ?????????
            language: "ko" //????????? ?????? ??????, ?????? ?????? js??? ?????????????????????.

        }
        $('#da1').datepicker(datep);
        console.log('????????????')
    });//ready end


    // favorite ??????
    const togglingBtns = document.querySelectorAll('.fa-heart');
    togglingBtns.forEach(function (btns) {
        btns.addEventListener("click", function () {
            btns.classList.toggle('fas')
            var parent = $(this).parents('.blog__item__large')
            //          pbName = parent.find('.pbName').val();
            const pbCodeNum = parent.find('.codeNum').val();
            const username = "${sessionScope.userVO.username}"
            const data = {pbCodeNum, username}
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/client/favorite",
                dataType: 'json',
                contentType: 'application/json',
                data: JSON.stringify(data),
                success: function () {
                }
            })
        });
    })

    // ?????????
    $(document).ready(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 50) {
                $('#back-to-top').fadeIn();
            } else {
                $('#back-to-top').fadeOut();
            }
        });
        // scroll body to 0px on click
        $('#back-to-top').click(function () {
            $('body,html').animate({
                scrollTop: 0
            }, 400);
            return false;
        });
    });

    // ?????? ?????? ?????? ????????????
    if ('${requestScope.targetTagName}'.trim()) {
        $("div:contains('${targetTagName}')").css({color: "red"});
        $("div:contains('${targetTagName}')").css({fontsize: "20px"});
    }

    // ?????? ?????? ?????? ????????????
    if ('${requestScope.sector}'.trim()) {
        $("li:contains('${sector.trim().substring(0,1)}')").css({color: "red"});
    }

    // ????????? ?????? ??????
    $(".profileBtn").click(function () {
        const parent = $(this).parents('.blog__item__large');
        const pbName = parent.find('.pbName').val();
        const pbBranchName = parent.find('.pbBranchName').val();
        const introContent = parent.find('.introContent').val();
        const mainContent = parent.find('.mainContent').val();
        const mainField = parent.find('.mainFiled').val();
        const rank = parent.find('.rank').val();

        $('#profileTitle').empty();
        $('#profileTitle').text(pbName + ' ????????? ?????????');

        $('.mb-4').empty();
        $('.mb-41').text("???????????????? ????????? ???????????? ????????? PB?????????.")


        console.log(pbName, pbBranchName, introContent, mainContent, mainField, rank)

        $('#exampleModalScrollable').modal();
    })


    $('#showModal').click(function () {
        $('#exampleModalScrollable').modal('hide');
        $('#staticBackdrop').modal('show');

    })


    $(".chkAll").click(function () {

        if ($(".chkAll").prop("checked")) { //??????????????? ?????? checkbox?????? ???????????????
            $("input[type=checkbox]").prop("checked", true);
        }
    });

</script>


</body>

</html>