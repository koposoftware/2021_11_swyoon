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
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css2/bootstrap.min.css"--%>
    <%--          type="text/css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css2/font-awesome.min.css"--%>
    <%--          type="text/css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css2/elegant-icons.css"--%>
    <%--          type="text/css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css2/flaticon.css"--%>
    <%--          type="text/css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css2/nice-select.css"--%>
    <%--          type="text/css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css2/barfiller.css"--%>
    <%--          type="text/css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css2/magnific-popup.css"--%>
    <%--          type="text/css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css2/jquery-ui.min.css"--%>
    <%--          type="text/css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css2/owl.carousel.min.css"--%>
    <%--          type="text/css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css2/slicknav.min.css"--%>
    <%--          type="text/css">--%>
    <%--    <link rel="stylesheet"--%>
    <%--          href="${pageContext.request.contextPath}/resources/css2/style.css"--%>
    <%--          type="text/css">--%>


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

        td {
            text-align: center;
            color: black;
        }

        .badge {
            font-size: 18px !important;

        }


    </style>


    <script>
        function selChange() {
            var sel = document.getElementById('cntPerPage').value;
            location.href = "/pb/history?nowPage=" + ${paging.nowPage} +"&cntPerPage=" + sel;
        }
    </script>

    </script>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>


<jsp:include page="/WEB-INF/jsp/common/pbHeader.jsp"/>

<section class="hero-wrap hero-wrap-2"
         data-stellar-background-ratio="0.5" style="margin-bottom: 100px;">
    <div class="overlay" style="background: #27b2a5;"></div>
    <div class="container">
        <div
                class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate mb-5 text-center">
                <p class="breadcrumbs mb-0">
						<span class="mr-2"><a href="index.html">Home <i
                                class="fa fa-chevron-right"></i></a></span> <span>PB 상담내역 조회 <i
                        class="fa fa-chevron-right"></i></span>
                </p>
                <h1 class="mb-0 bread" style="color: #fff">PB 상담 내역 조회</h1>
            </div>
        </div>
    </div>
</section>


<div class="row" style="width: 70%; margin-left: 15%">
    <div class="col-lg-12 mb-4">
        <!-- Simple Tables -->
        <div class="card">
            <div style="background-color:transparent;margin-left: 66px" class="card-
             py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary" style="font-size: 30px;color: #008485 !important;">상담
                    내역</h6>
                <div class="select__option" style="float: right">
                    <select id="cntPerPage" class="product-classification" name="sel" onchange="selChange()"
                            style="display: inline">
                        <option value="5" <c:if test="${paging.cntPerPage == 5}">selected</c:if>>5개 보기</option>
                        <option value="10"
                                <c:if test="${paging.cntPerPage == 10}">selected</c:if>>10개 보기
                        </option>
                        <option value="15"
                                <c:if test="${paging.cntPerPage == 15}">selected</c:if>>15개 보기
                        </option>
                        <option value="20"
                                <c:if test="${paging.cntPerPage == 20}">selected</c:if>>20개 보기
                        </option>
                    </select>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table align-items-center table-flush">
                    <thead class="thead-light">
                    <tr style="text-align: center">
                        <th>상담 날짜</th>
                        <th>담당 손님 이름</th>
                        <th>상담 제목</th>
                        <th>Status</th>
                        <th>상담코드</th>
                        <th>더보기</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${historyList}" var="history" varStatus="loop">
                        <tr class="selectRoomNumber">
                            <input class="roomNumber" type="hidden"
                                   value="${history.roomNumber}"/>
                            <input class="statusToggle" type="hidden" value="${history.statusToggle}"/>
                            <td><a style="color: black" href="#"><c:out value="${history.csltTime}"/></a></td>
                            <td><c:out value="${history.username} 손님"/></td>
                            <td>${history.csltTitle}</td>
                            <c:choose>
                                <c:when test="${history.statusToggle eq 0}">
                                    <td><span class="badge badge-success">상담완료</span></td>
                                </c:when>
                                <c:when test="${history.statusToggle eq 1}">
                                    <td><span class="badge badge-warning">답변대기</span></td>
                                </c:when>
                                <c:otherwise>
                                    <td><span class="badge badge-info">답변완료</span></td>
                                </c:otherwise>

                            </c:choose>
                            <td>${history.roomNumber}</td>
                            <td>
                                <button type="button" class="btn btn-primary">
                                    Detail
                                </button>
                            </td>
                                <%--                            <td><a href="#" class="btn btn-sm btn-primary">Detail</a></td>--%>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div style="display: block; text-align: center;">
                    <c:if test="${paging.startPage != 1 }">
                        <a href="${pageContext.request.contextPath}/pb/history?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
                    </c:if>
                    <c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
                        <c:choose>
                            <c:when test="${p == paging.nowPage }">
                                <b>${p }</b>
                            </c:when>
                            <c:when test="${p != paging.nowPage }">
                                <a href="${pageContext.request.contextPath}/pb/history?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
                            </c:when>
                        </c:choose>
                    </c:forEach>
                    <c:if test="${paging.endPage != paging.lastPage}">
                        <a href="${pageContext.request.contextPath}/pb/history?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
                    </c:if>
                </div>
            </div>
            <div class="card-footer"></div>
        </div>
    </div>
</div>
<!--Row-->

<%--<!-- Modal -->--%>
<%--<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"--%>
<%--     aria-hidden="true">--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                    <span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--            <div class="modal-body">--%>
<%--                <p>You Content</p>--%>
<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Close</button>--%>
<%--                &lt;%&ndash;                <button type="button" class="btn btn-primary">Save changes</button>&ndash;%&gt;--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


<jsp:include page="/WEB-INF/jsp/common/footer.jsp"/>
<!-- Js Plugins !-->
<script
        src="${pageContext.request.contextPath}/resources/css2/js/jquery-ui.min.js"></script>
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
    $(document).on("click", ".btn.btn-primary", function () {
        const parent = $(this).parents('.selectRoomNumber')
        const roomNumber = parent.find($('.roomNumber')).val();
        location.href = "${pageContext.request.contextPath}/client/historyDetail?roomNumber=" + roomNumber
    })

</script>

</body>

</html>