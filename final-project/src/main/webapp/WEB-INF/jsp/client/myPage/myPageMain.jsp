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

  <!-- 캘린더 link -->
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

    .fpmgBt1 {
      background-color: #fff;
      color: #888
    }


    #touchImage , #historyImage, #myPBimage{
      width: 100px;
      height: 100px;
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
        <h1 class="mb-0 bread" style="color: #fff">MY PAGE</h1>
      </div>
    </div>
  </div>
</section>



<!-- Work Section Begin -->
<section class="work spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title">
          <h2>업무 선택하기</h2>
          <p>Travelocity empowers travelers who are giving back on their trips in ways big and small</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-4 col-md-6">
        <div class="work__item">
          <div class="work__item__number">01.</div>
          <a href="${pageContext.request.contextPath}/client/myPage/favoriteList" >
          <img id="touchImage" src="${pageContext.request.contextPath}/resources/images/touch.png" alt="">
          </a>
          <h5>즐겨찾기 PB 목록</h5>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
            labore.</p>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="work__item">
          <div class="work__item__number">02.</div>
          <img id="myPBimage" src="${pageContext.request.contextPath}/resources/images/myPB.png">
          <h5>나의 PB 정보 보기</h5>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
            labore.</p>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="work__item">
          <div class="work__item__number">03.</div>
          <a href="${pageContext.request.contextPath}/client/myPage/history">
          <img id="historyImage" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiIGNsYXNzPSIiPjxnPjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGc+PGc+PGc+PGc+PGc+PGc+PGc+PGc+PGc+PGc+PHBhdGggZD0ibTQxNS41NTEgMzUuMzI2aC0zMTkuMTAyYy0xMy44MDIgMC0yNC45OTEgMTEuMTg5LTI0Ljk5MSAyNC45OTF2NDE5LjE5MmMwIDEzLjgwMiAxMS4xODkgMjQuOTkxIDI0Ljk5MSAyNC45OTFoMzE5LjEwMmMxMy44MDIgMCAyNC45OTEtMTEuMTg5IDI0Ljk5MS0yNC45OTF2LTQxOS4xOTJjMC0xMy44MDItMTEuMTg5LTI0Ljk5MS0yNC45OTEtMjQuOTkxeiIgZmlsbD0iI2MzZjVlZSIgZGF0YS1vcmlnaW5hbD0iI2Y4ZThiYiIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPjxwYXRoIGQ9Im00MTUuNTUxIDM1LjMyNmgtMjcuNzA0djQ2OS4xNzRoMjcuNzA0YzEzLjgwMiAwIDI0Ljk5MS0xMS4xODkgMjQuOTkxLTI0Ljk5MXYtNDE5LjE5MmMwLTEzLjgwMi0xMS4xODktMjQuOTkxLTI0Ljk5MS0yNC45OTF6IiBmaWxsPSIjYzNmNWVlIiBkYXRhLW9yaWdpbmFsPSIjZWNkMzkzIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PHBhdGggZD0ibTMyMC44NTEgNjMuMTUyaC0xMjkuNzAyYy04LjIwNiAwLTE0Ljg1OC02LjY1Mi0xNC44NTgtMTQuODU4di0yNS45MzZjMC04LjIwNiA2LjY1Mi0xNC44NTggMTQuODU4LTE0Ljg1OGgxMjkuNzAzYzguMjA2IDAgMTQuODU4IDYuNjUyIDE0Ljg1OCAxNC44NTh2MjUuOTM2Yy0uMDAxIDguMjA2LTYuNjUzIDE0Ljg1OC0xNC44NTkgMTQuODU4eiIgZmlsbD0iIzU2Y2FjYiIgZGF0YS1vcmlnaW5hbD0iIzY3NmU4NCIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPjxwYXRoIGQ9Im0zMjAuODUxIDcuNWgtMzcuODM3djU1LjY1MmgzNy44MzdjOC4yMDYgMCAxNC44NTgtNi42NTIgMTQuODU4LTE0Ljg1OHYtMjUuOTM2YzAtOC4yMDYtNi42NTItMTQuODU4LTE0Ljg1OC0xNC44NTh6IiBmaWxsPSIjMDAwMDAwIiBkYXRhLW9yaWdpbmFsPSIjNGE0ZTY3IiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PC9nPjwvZz48L2c+PC9nPjwvZz48L2c+PC9nPjwvZz48Zz48ZyBmaWxsPSIjNzU5Y2U3Ij48cGF0aCBkPSJtMTYyLjkxNyAxNzMuNTI4aC0zMy4zMzNjLTYuOTc5IDAtMTIuNjM2LTUuNjU3LTEyLjYzNi0xMi42MzZ2LTMzLjMzMmMwLTYuOTc5IDUuNjU3LTEyLjYzNiAxMi42MzYtMTIuNjM2aDMzLjMzM2M2Ljk3OSAwIDEyLjYzNiA1LjY1NyAxMi42MzYgMTIuNjM2djMzLjMzM2MwIDYuOTc4LTUuNjU3IDEyLjYzNS0xMi42MzYgMTIuNjM1eiIgZmlsbD0iIzI3YjJhNSIgZGF0YS1vcmlnaW5hbD0iIzc1OWNlNyIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPjxwYXRoIGQ9Im0xNjIuOTE3IDI5OS4yMTVoLTMzLjMzM2MtNi45NzkgMC0xMi42MzYtNS42NTctMTIuNjM2LTEyLjYzNnYtMzMuMzMzYzAtNi45NzkgNS42NTctMTIuNjM2IDEyLjYzNi0xMi42MzZoMzMuMzMzYzYuOTc5IDAgMTIuNjM2IDUuNjU3IDEyLjYzNiAxMi42MzZ2MzMuMzMzYzAgNi45NzktNS42NTcgMTIuNjM2LTEyLjYzNiAxMi42MzZ6IiBmaWxsPSIjMjdiMmE1IiBkYXRhLW9yaWdpbmFsPSIjNzU5Y2U3IiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PHBhdGggZD0ibTE2Mi45MTcgNDI0LjkwMmgtMzMuMzMzYy02Ljk3OSAwLTEyLjYzNi01LjY1Ny0xMi42MzYtMTIuNjM2di0zMy4zMzNjMC02Ljk3OSA1LjY1Ny0xMi42MzYgMTIuNjM2LTEyLjYzNmgzMy4zMzNjNi45NzkgMCAxMi42MzYgNS42NTcgMTIuNjM2IDEyLjYzNnYzMy4zMzNjMCA2Ljk3OS01LjY1NyAxMi42MzYtMTIuNjM2IDEyLjYzNnoiIGZpbGw9IiMyN2IyYTUiIGRhdGEtb3JpZ2luYWw9IiM3NTljZTciIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48L2c+PC9nPjwvZz48L2c+PGc+PGc+PGc+PGc+PGc+PHBhdGggZD0ibTMxMy42MDQgMTcwLjk3NWgtODEuNDQ3Yy00LjE0MiAwLTcuNS0zLjM1Ny03LjUtNy41czMuMzU4LTcuNSA3LjUtNy41aDgxLjQ0N2M0LjE0MiAwIDcuNSAzLjM1NyA3LjUgNy41cy0zLjM1NyA3LjUtNy41IDcuNXoiIGZpbGw9IiMwMDAwMDAiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48L2c+PGc+PHBhdGggZD0ibTM5NS4wNTIgMTMyLjQ3OGgtMTYyLjg5NWMtNC4xNDIgMC03LjUtMy4zNTctNy41LTcuNXMzLjM1OC03LjUgNy41LTcuNWgxNjIuODk1YzQuMTQyIDAgNy41IDMuMzU3IDcuNSA3LjVzLTMuMzU4IDcuNS03LjUgNy41eiIgZmlsbD0iIzAwMDAwMCIgZGF0YS1vcmlnaW5hbD0iIzAwMDAwMCIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPjwvZz48L2c+PGc+PGc+PHBhdGggZD0ibTMxMy42MDQgMjk2LjY2MmgtODEuNDQ3Yy00LjE0MiAwLTcuNS0zLjM1Ny03LjUtNy41czMuMzU4LTcuNSA3LjUtNy41aDgxLjQ0N2M0LjE0MiAwIDcuNSAzLjM1NyA3LjUgNy41cy0zLjM1NyA3LjUtNy41IDcuNXoiIGZpbGw9IiMwMDAwMDAiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48L2c+PGc+PHBhdGggZD0ibTM5NS4wNTIgMjU4LjE2NGgtMTYyLjg5NWMtNC4xNDIgMC03LjUtMy4zNTctNy41LTcuNXMzLjM1OC03LjUgNy41LTcuNWgxNjIuODk1YzQuMTQyIDAgNy41IDMuMzU3IDcuNSA3LjVzLTMuMzU4IDcuNS03LjUgNy41eiIgZmlsbD0iIzAwMDAwMCIgZGF0YS1vcmlnaW5hbD0iIzAwMDAwMCIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPjwvZz48L2c+PGc+PGc+PHBhdGggZD0ibTMxMy42MDQgNDIyLjM0OWgtODEuNDQ3Yy00LjE0MiAwLTcuNS0zLjM1Ny03LjUtNy41czMuMzU4LTcuNSA3LjUtNy41aDgxLjQ0N2M0LjE0MiAwIDcuNSAzLjM1NyA3LjUgNy41cy0zLjM1NyA3LjUtNy41IDcuNXoiIGZpbGw9IiMwMDAwMDAiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48L2c+PGc+PHBhdGggZD0ibTM5NS4wNTIgMzgzLjg1MWgtMTYyLjg5NWMtNC4xNDIgMC03LjUtMy4zNTctNy41LTcuNXMzLjM1OC03LjUgNy41LTcuNWgxNjIuODk1YzQuMTQyIDAgNy41IDMuMzU3IDcuNSA3LjVzLTMuMzU4IDcuNS03LjUgNy41eiIgZmlsbD0iIzAwMDAwMCIgZGF0YS1vcmlnaW5hbD0iIzAwMDAwMCIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPjwvZz48L2c+PC9nPjwvZz48Zz48cGF0aCBkPSJtMzIwLjg1MiA3MC42NTFoLTEyOS43MDRjLTEyLjMyOCAwLTIyLjM1OC0xMC4wMjktMjIuMzU4LTIyLjM1N3YtMjUuOTM2Yy4wMDEtMTIuMzI4IDEwLjAzLTIyLjM1OCAyMi4zNTgtMjIuMzU4aDEyOS43MDNjMTIuMzI4IDAgMjIuMzU4IDEwLjAzIDIyLjM1OCAyMi4zNTh2MjUuOTM2YzAgMTIuMzI4LTEwLjAyOSAyMi4zNTctMjIuMzU3IDIyLjM1N3ptLTEyOS43MDQtNTUuNjUxYy00LjA1NyAwLTcuMzU4IDMuMzAxLTcuMzU4IDcuMzU4djI1LjkzNmMwIDQuMDU3IDMuMzAxIDcuMzU3IDcuMzU4IDcuMzU3aDEyOS43MDNjNC4wNTcgMCA3LjM1OC0zLjMwMSA3LjM1OC03LjM1N3YtMjUuOTM2YzAtNC4wNTgtMy4zMDEtNy4zNTgtNy4zNTgtNy4zNTh6IiBmaWxsPSIjMDAwMDAwIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PC9nPjxnPjxnPjxwYXRoIGQ9Im0xNjIuOTE3IDE4MS4wMjhoLTMzLjMzM2MtMTEuMTAzIDAtMjAuMTM2LTkuMDMzLTIwLjEzNi0yMC4xMzZ2LTMzLjMzMmMwLTExLjEwMyA5LjAzMy0yMC4xMzYgMjAuMTM2LTIwLjEzNmgzMy4zMzNjMTEuMTAzIDAgMjAuMTM2IDkuMDMzIDIwLjEzNiAyMC4xMzZ2MzMuMzMzYzAgMTEuMTAyLTkuMDMzIDIwLjEzNS0yMC4xMzYgMjAuMTM1em0tMzMuMzMzLTU4LjYwNGMtMi44MzIgMC01LjEzNiAyLjMwNC01LjEzNiA1LjEzNnYzMy4zMzNjMCAyLjgzMiAyLjMwNCA1LjEzNiA1LjEzNiA1LjEzNmgzMy4zMzNjMi44MzIgMCA1LjEzNi0yLjMwNCA1LjEzNi01LjEzNnYtMzMuMzMzYzAtMi44MzItMi4zMDQtNS4xMzYtNS4xMzYtNS4xMzZ6IiBmaWxsPSIjMDAwMDAwIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PC9nPjxnPjxwYXRoIGQ9Im0xNjIuOTE3IDMwNi43MTVoLTMzLjMzM2MtMTEuMTAzIDAtMjAuMTM2LTkuMDMzLTIwLjEzNi0yMC4xMzZ2LTMzLjMzM2MwLTExLjEwMyA5LjAzMy0yMC4xMzYgMjAuMTM2LTIwLjEzNmgzMy4zMzNjMTEuMTAzIDAgMjAuMTM2IDkuMDMzIDIwLjEzNiAyMC4xMzZ2MzMuMzMzYzAgMTEuMTAzLTkuMDMzIDIwLjEzNi0yMC4xMzYgMjAuMTM2em0tMzMuMzMzLTU4LjYwNWMtMi44MzIgMC01LjEzNiAyLjMwNC01LjEzNiA1LjEzNnYzMy4zMzNjMCAyLjgzMiAyLjMwNCA1LjEzNiA1LjEzNiA1LjEzNmgzMy4zMzNjMi44MzIgMCA1LjEzNi0yLjMwNCA1LjEzNi01LjEzNnYtMzMuMzMzYzAtMi44MzItMi4zMDQtNS4xMzYtNS4xMzYtNS4xMzZ6IiBmaWxsPSIjMDAwMDAwIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PC9nPjxnPjxwYXRoIGQ9Im0xNjIuOTE3IDQzMi40MDJoLTMzLjMzM2MtMTEuMTAzIDAtMjAuMTM2LTkuMDMzLTIwLjEzNi0yMC4xMzd2LTMzLjMzMmMwLTExLjEwNCA5LjAzMy0yMC4xMzcgMjAuMTM2LTIwLjEzN2gzMy4zMzNjMTEuMTAzIDAgMjAuMTM2IDkuMDMzIDIwLjEzNiAyMC4xMzd2MzMuMzMyYzAgMTEuMTA0LTkuMDMzIDIwLjEzNy0yMC4xMzYgMjAuMTM3em0tMzMuMzMzLTU4LjYwNWMtMi44MzIgMC01LjEzNiAyLjMwNS01LjEzNiA1LjEzN3YzMy4zMzJjMCAyLjgzMiAyLjMwNCA1LjEzNyA1LjEzNiA1LjEzN2gzMy4zMzNjMi44MzIgMCA1LjEzNi0yLjMwNSA1LjEzNi01LjEzN3YtMzMuMzMyYzAtMi44MzItMi4zMDQtNS4xMzctNS4xMzYtNS4xMzd6IiBmaWxsPSIjMDAwMDAwIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PC9nPjwvZz48Zz48cGF0aCBkPSJtNDE1LjU1MSA1MTJoLTMxOS4xMDJjLTE3LjkxNiAwLTMyLjQ5MS0xNC41NzUtMzIuNDkxLTMyLjQ5MXYtNDE5LjE5M2MwLTE3LjkxNSAxNC41NzYtMzIuNDkgMzIuNDkxLTMyLjQ5aDQ0Ljk0NWM0LjE0MiAwIDcuNSAzLjM1NyA3LjUgNy41cy0zLjM1OCA3LjUtNy41IDcuNWgtNDQuOTQ1Yy05LjY0NSAwLTE3LjQ5MSA3Ljg0Ni0xNy40OTEgMTcuNDl2NDE5LjE5MmMwIDkuNjQ1IDcuODQ3IDE3LjQ5MSAxNy40OTEgMTcuNDkxaDMxOS4xMDJjOS42NDUgMCAxNy40OTEtNy44NDcgMTcuNDkxLTE3LjQ5MXYtNDE5LjE5MmMwLTkuNjQ1LTcuODQ3LTE3LjQ5LTE3LjQ5MS0xNy40OWgtNDQuOTQ1Yy00LjE0MiAwLTcuNS0zLjM1Ny03LjUtNy41czMuMzU4LTcuNSA3LjUtNy41aDQ0Ljk0NWMxNy45MTYgMCAzMi40OTEgMTQuNTc1IDMyLjQ5MSAzMi40OXY0MTkuMTkyYzAgMTcuOTE3LTE0LjU3NiAzMi40OTItMzIuNDkxIDMyLjQ5MnoiIGZpbGw9IiMwMDAwMDAiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48L2c+PC9nPjwvZz48L2c+PC9zdmc+" />
          </a>
          <h5>상담 내역 조회</h5>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
            labore.</p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Work Section End -->



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