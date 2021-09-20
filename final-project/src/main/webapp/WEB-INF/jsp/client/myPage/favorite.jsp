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

        #profileImage{
            background-size: 70%;
            background-position: bottom;
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
                    <p>Travelocity empowers travelers who are giving back on their trips in ways big and small</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="most__search__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                예금 분야
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                주식 분야
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                채권 분야
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">
                                펀드 분야
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-5" role="tab">
                                 랩 어카운트
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="tab-content">
                    <div class="tab-pane active" id="tabs-1" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div id="profileImage" class="listing__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/resources/images/user2.png">
                                        <div class="listing__item__pic__tag top_rate">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5 style="text-align: center">부천시청지점 윤피비 자산관리사</h5>
                                            <div class="listing__item__text__rating">
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li>10년 경력 채권 투자 전문 PB<br>
                                                    투자자산운용사 등 5개 자격증 보유</li>
                                                <li> 연락처 : (02)-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <span>Restaurant</span>
                                            </div>
                                            <div class="listing__item__text__info__right">상담 예약하기</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-2.jpg">
                                        <img src="img/listing/list_icon-2.png" alt="">
                                        <div class="listing__item__pic__tag top_rate">Top Rate</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Shrimp floured and fried</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 1012 Vesper Dr. Columbus,
                                                    Georgia(GA), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-2.png" alt="">
                                                <span>Food & Drink</span>
                                            </div>
                                            <div class="listing__item__text__info__right closed">Closed</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-3.jpg">
                                        <img src="img/listing/list_icon-3.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Sweet and sour pork ribs</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 251 Wiley St. Forks,
                                                    Washington(WA), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-1.png" alt="">
                                                <span>Restaurant</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-4.jpg">
                                        <img src="img/listing/list_icon-4.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Crab fried with tamarind</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 14320 Keenes Mill Rd.
                                                    Cottondale, Alabama(AL), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-3.png" alt="">
                                                <span>Hotel</span>
                                            </div>
                                            <div class="listing__item__text__info__right closed">Closed</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-5.jpg">
                                        <img src="img/listing/list_icon-5.png" alt="">
                                        <div class="listing__item__pic__tag hot_deal">Hot Deal</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Tortoise grilled on salt</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                    Philadelphia, Ohio, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-4.png" alt="">
                                                <span>Shopping</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-6.jpg">
                                        <img src="img/listing/list_icon-6.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Fish cooked with fishsauce</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 2604 E Drachman St. Tucson,
                                                    Arizona, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-3.png" alt="">
                                                <span>Hotel</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tabs-2" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg">
                                        <img src="img/listing/list_icon-1.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Chinese Sausage Restaurant</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                    Philadelphia, Ohio, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-1.png" alt="">
                                                <span>Restaurant</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-2.jpg">
                                        <img src="img/listing/list_icon-2.png" alt="">
                                        <div class="listing__item__pic__tag top_rate">Top Rate</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Shrimp floured and fried</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 1012 Vesper Dr. Columbus,
                                                    Georgia(GA), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-2.png" alt="">
                                                <span>Food & Drink</span>
                                            </div>
                                            <div class="listing__item__text__info__right closed">Closed</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-3.jpg">
                                        <img src="img/listing/list_icon-3.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Sweet and sour pork ribs</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 251 Wiley St. Forks,
                                                    Washington(WA), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-1.png" alt="">
                                                <span>Restaurant</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-4.jpg">
                                        <img src="img/listing/list_icon-4.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Crab fried with tamarind</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 14320 Keenes Mill Rd.
                                                    Cottondale, Alabama(AL), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-3.png" alt="">
                                                <span>Hotel</span>
                                            </div>
                                            <div class="listing__item__text__info__right closed">Closed</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-5.jpg">
                                        <img src="img/listing/list_icon-5.png" alt="">
                                        <div class="listing__item__pic__tag hot_deal">Hot Deal</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Tortoise grilled on salt</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                    Philadelphia, Ohio, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-4.png" alt="">
                                                <span>Shopping</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tabs-3" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-3.jpg">
                                        <img src="img/listing/list_icon-3.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Sweet and sour pork ribs</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 251 Wiley St. Forks,
                                                    Washington(WA), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-1.png" alt="">
                                                <span>Restaurant</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-4.jpg">
                                        <img src="img/listing/list_icon-4.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Crab fried with tamarind</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 14320 Keenes Mill Rd.
                                                    Cottondale, Alabama(AL), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-3.png" alt="">
                                                <span>Hotel</span>
                                            </div>
                                            <div class="listing__item__text__info__right closed">Closed</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-5.jpg">
                                        <img src="img/listing/list_icon-5.png" alt="">
                                        <div class="listing__item__pic__tag hot_deal">Hot Deal</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Tortoise grilled on salt</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                    Philadelphia, Ohio, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-4.png" alt="">
                                                <span>Shopping</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-6.jpg">
                                        <img src="img/listing/list_icon-6.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Fish cooked with fishsauce</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 2604 E Drachman St. Tucson,
                                                    Arizona, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-3.png" alt="">
                                                <span>Hotel</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tabs-4" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg">
                                        <img src="img/listing/list_icon-1.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Chinese Sausage Restaurant</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                    Philadelphia, Ohio, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-1.png" alt="">
                                                <span>Restaurant</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-2.jpg">
                                        <img src="img/listing/list_icon-2.png" alt="">
                                        <div class="listing__item__pic__tag top_rate">Top Rate</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Shrimp floured and fried</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 1012 Vesper Dr. Columbus,
                                                    Georgia(GA), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-2.png" alt="">
                                                <span>Food & Drink</span>
                                            </div>
                                            <div class="listing__item__text__info__right closed">Closed</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-3.jpg">
                                        <img src="img/listing/list_icon-3.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Sweet and sour pork ribs</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 251 Wiley St. Forks,
                                                    Washington(WA), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-1.png" alt="">
                                                <span>Restaurant</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-6.jpg">
                                        <img src="img/listing/list_icon-6.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Fish cooked with fishsauce</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 2604 E Drachman St. Tucson,
                                                    Arizona, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-3.png" alt="">
                                                <span>Hotel</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tabs-5" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg">
                                        <img src="img/listing/list_icon-1.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Chinese Sausage Restaurant</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                    Philadelphia, Ohio, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-1.png" alt="">
                                                <span>Restaurant</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-2.jpg">
                                        <img src="img/listing/list_icon-2.png" alt="">
                                        <div class="listing__item__pic__tag top_rate">Top Rate</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Shrimp floured and fried</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 1012 Vesper Dr. Columbus,
                                                    Georgia(GA), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-2.png" alt="">
                                                <span>Food & Drink</span>
                                            </div>
                                            <div class="listing__item__text__info__right closed">Closed</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-3.jpg">
                                        <img src="img/listing/list_icon-3.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Sweet and sour pork ribs</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 251 Wiley St. Forks,
                                                    Washington(WA), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-1.png" alt="">
                                                <span>Restaurant</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-4.jpg">
                                        <img src="img/listing/list_icon-4.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Crab fried with tamarind</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 14320 Keenes Mill Rd.
                                                    Cottondale, Alabama(AL), United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-3.png" alt="">
                                                <span>Hotel</span>
                                            </div>
                                            <div class="listing__item__text__info__right closed">Closed</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-6.jpg">
                                        <img src="img/listing/list_icon-6.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Fish cooked with fishsauce</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 2604 E Drachman St. Tucson,
                                                    Arizona, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-3.png" alt="">
                                                <span>Hotel</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="tabs-6" role="tabpanel">
                        <div class="row">
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg">
                                        <img src="img/listing/list_icon-1.png" alt="">
                                        <div class="listing__item__pic__tag">Popular</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Chinese Sausage Restaurant</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                    Philadelphia, Ohio, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-1.png" alt="">
                                                <span>Restaurant</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <div class="listing__item">
                                    <div class="listing__item__pic set-bg" data-setbg="img/listing/list-5.jpg">
                                        <img src="img/listing/list_icon-5.png" alt="">
                                        <div class="listing__item__pic__tag hot_deal">Hot Deal</div>
                                        <div class="listing__item__pic__btns">
                                            <a href="#"><span class="icon_zoom-in_alt"></span></a>
                                            <a href="#"><span class="icon_heart_alt"></span></a>
                                        </div>
                                    </div>
                                    <div class="listing__item__text">
                                        <div class="listing__item__text__inside">
                                            <h5>Tortoise grilled on salt</h5>
                                            <div class="listing__item__text__rating">
                                                <div class="listing__item__rating__star">
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star"></span>
                                                    <span class="icon_star-half_alt"></span>
                                                </div>
                                                <h6>$40 - $70</h6>
                                            </div>
                                            <ul>
                                                <li><span class="icon_pin_alt"></span> 236 Littleton St. New
                                                    Philadelphia, Ohio, United States</li>
                                                <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                                            </ul>
                                        </div>
                                        <div class="listing__item__text__info">
                                            <div class="listing__item__text__info__left">
                                                <img src="img/listing/list_small_icon-4.png" alt="">
                                                <span>Shopping</span>
                                            </div>
                                            <div class="listing__item__text__info__right">Open Now</div>
                                        </div>
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

</script>


</body>

</html>