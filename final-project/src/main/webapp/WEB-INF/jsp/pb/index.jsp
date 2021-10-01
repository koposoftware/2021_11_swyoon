<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        #value {
            vertical-align: middle;
            border-style: none;
            margin-bottom: 70px;
            width: 400px;
            float: right;
            margin-left: 100px;
        }

    </style>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/pbHeader.jsp"/>


<div class="hero-wrap" data-stellar-background-ratio="0.1">
    <%--    <img src="${pageContext.request.contextPath}/resources/images/consultant.png">--%>
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center">
            <div class="col-md-6 ftco-animate d-flex align-items-end">
                <div class="text w-100">
                    <h1 style="color: black" class="mb-4">하나My PB 직원 전용 페이지입니다.</h1>
                    <p class="mb-4">하나금융그룹은 직원들에게 자아 실현의 기회를 제공하고, 손님의 자산 증대와 사업의 성장을 돕고, 이를 통해 사회가 번영하는데 일조하고 있습니다.</p>
                    <p><a href="#" class="btn btn-primary py-3 px-4" style="float: left">서비스 바로가기</a>
                </div>
            </div>
            <%--            <a href="https://vimeo.com/45830194"--%>
            <%--               class="img-video popup-vimeo d-flex align-items-center justify-content-center">--%>
            <%--                &lt;%&ndash;                <span class="fa fa-play"></span>&ndash;%&gt;--%>
            <%--            </a>--%>
            <img id="value"
                 src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiIGNsYXNzPSIiPjxnPjxwYXRoIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgZD0ibTMwNCAzMjhoODh2NzJoLTg4eiIgZmlsbD0iI2Y1Yzk5ZCIgZGF0YS1vcmlnaW5hbD0iI2Y1Yzk5ZCIgc3R5bGU9IiI+PC9wYXRoPjxwYXRoIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgZD0ibTEyMCAzMjhoODh2NzJoLTg4eiIgZmlsbD0iI2Y1Yzk5ZCIgZGF0YS1vcmlnaW5hbD0iI2Y1Yzk5ZCIgc3R5bGU9IiI+PC9wYXRoPjxwYXRoIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgZD0ibTIyNCAxNzZoOTZ2MzJoLTk2eiIgZmlsbD0iIzFiY2ZiZSIgdHJhbnNmb3JtPSJtYXRyaXgoMCAtMSAxIDAgODAgNDY0KSIgZGF0YS1vcmlnaW5hbD0iI2VkYTYwMCIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPjxwYXRoIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgZD0ibTIwOCAxOTJoNjR2MzJoLTY0eiIgZmlsbD0iIzIxYmRhZiIgdHJhbnNmb3JtPSJtYXRyaXgoMCAtMSAxIDAgMzIgNDQ4KSIgZGF0YS1vcmlnaW5hbD0iI2RlOTQwMCIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPjxwYXRoIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgZD0ibTE4OCAyMDRoNDB2MzJoLTQweiIgZmlsbD0iIzI3YjJhNSIgdHJhbnNmb3JtPSJtYXRyaXgoMCAtMSAxIDAgLTEyIDQyOCkiIGRhdGEtb3JpZ2luYWw9IiNjZjgzMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48cGF0aCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGQ9Im0yNDQgMTY0aDEyMHYzMmgtMTIweiIgZmlsbD0iIzEwZTVkMSIgdHJhbnNmb3JtPSJtYXRyaXgoMCAtMSAxIDAgMTI0IDQ4NCkiIGRhdGEtb3JpZ2luYWw9IiNmNmJiMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48cGF0aCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGQ9Im0zNjggMjAwYTExMiAxMTIgMCAxIDEgLTExMi0xMTJ2LTY0YTE3NiAxNzYgMCAxIDAgMTc2IDE3NnoiIGZpbGw9IiMxMGU1ZDEiIGRhdGEtb3JpZ2luYWw9IiNmNmJiMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48cGF0aCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGQ9Im0xNTIgNDAwdi0zNS4xNDk0MWE1My45MDIwOSA1My45MDIwOSAwIDAgMCAtMjQuMDA2NTUtNDQuODUxOWwuMDA2NTUtMzEuOTk2MDhhMTYgMTYgMCAwIDAgLTE2LTE2LjAwMjYxIDE2IDE2IDAgMCAwIC0xNiAxNS45OTczNnYuMDAyNjRsLS4wMDA1OC00Ny45OTk3MmExNS45OTk3IDE1Ljk5OTcgMCAwIDAgLTE1Ljk5OTctMTYuMDAwMjggMTUuOTk5NyAxNS45OTk3IDAgMCAwIC0xNS45OTk3MiAxNS45OTk2OXY4MC45MDQxNGE4OCA4OCAwIDAgMCAzOS4xODYzOCA3My4yMjA0M2w4LjgxMzYyIDUuODc1NzR6IiBmaWxsPSIjZjVjOTlkIiBkYXRhLW9yaWdpbmFsPSIjZjVjOTlkIiBzdHlsZT0iIj48L3BhdGg+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMTEyIDQwMGg5NnY4MGgtOTZ6IiBmaWxsPSIjMmZhYmEwIiBkYXRhLW9yaWdpbmFsPSIjNTQ4YWZmIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMzYwIDQwMHYtMzUuMTQ5NDFhNTMuOTAyMDkgNTMuOTAyMDkgMCAwIDEgMjQuMDA2NTUtNDQuODUxOWwtLjAwNjU1LTMxLjk5NjA4YTE2IDE2IDAgMCAxIDE2LTE2LjAwMjYxIDE2IDE2IDAgMCAxIDE2IDE1Ljk5NzM2di4wMDI2NGwuMDAwNTgtNDcuOTk5NzJhMTUuOTk5NyAxNS45OTk3IDAgMCAxIDE1Ljk5OTctMTYuMDAwMjggMTUuOTk5NyAxNS45OTk3IDAgMCAxIDE1Ljk5OTcyIDE1Ljk5OTY5djgwLjkwNDE0YTg4IDg4IDAgMCAxIC0zOS4xODYzOCA3My4yMjA0M2wtOC44MTM2MiA1Ljg3NTc0eiIgZmlsbD0iI2Y1Yzk5ZCIgZGF0YS1vcmlnaW5hbD0iI2Y1Yzk5ZCIgc3R5bGU9IiI+PC9wYXRoPjxwYXRoIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgZD0ibTMwNCA0MDBoOTZ2ODBoLTk2eiIgZmlsbD0iIzJmYWJhMCIgZGF0YS1vcmlnaW5hbD0iIzU0OGFmZiIgc3R5bGU9IiIgY2xhc3M9IiI+PC9wYXRoPjxwYXRoIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgZD0ibTI4MCAxMjB2MTZoLTI0YTguMDAwMDggOC4wMDAwOCAwIDAgMCAtOCA4djI0aC0yNGE4LjAwMDA4IDguMDAwMDggMCAwIDAgLTggOHYxNmgtMjRhOC4wMDAwOCA4LjAwMDA4IDAgMCAwIC04IDh2NDBhOC4wMDAwOCA4LjAwMDA4IDAgMCAwIDggOGgxMjhhOC4wMDAwOCA4LjAwMDA4IDAgMCAwIDgtOHYtMTIwYTguMDAwMDggOC4wMDAwOCAwIDAgMCAtOC04aC0zMmE4LjAwMDA4IDguMDAwMDggMCAwIDAgLTggOHptLTgwIDg4aDE2djI0aC0xNnptMzItMjRoMTZ2NDhoLTE2em0zMi0zMmgxNnY4MGgtMTZ6bTMyLTI0aDE2djEwNGgtMTZ6IiBmaWxsPSIjMDAwMDAwIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMjMyIDI1NmgxNnYxNmgtMTZ6IiBmaWxsPSIjMDAwMDAwIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMjAwIDI1NmgxNnYxNmgtMTZ6IiBmaWxsPSIjMDAwMDAwIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMjY0IDI1NmgxNnYxNmgtMTZ6IiBmaWxsPSIjMDAwMDAwIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMjk2IDI1NmgxNnYxNmgtMTZ6IiBmaWxsPSIjMDAwMDAwIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtNTYgMjM5Ljk5OTUxdjgwLjkwNDNhOTUuODA1NzUgOTUuODA1NzUgMCAwIDAgNDIuNzQ5IDc5Ljg3NjQ2bDUuMjUxIDMuNTAwODZ2NzUuNzE4ODdhOC4wMDAwOCA4LjAwMDA4IDAgMCAwIDggOGg5NmE4LjAwMDA4IDguMDAwMDggMCAwIDAgOC04di0xMDAuNDA3NDdhMTgzLjY3OSAxODMuNjc5IDAgMCAwIDgwLS4wMDE3MXYxMDAuNDA5MThhOC4wMDAwOCA4LjAwMDA4IDAgMCAwIDggOGg5NmE4LjAwMDA4IDguMDAwMDggMCAwIDAgOC04di03NS43MTg4N2w1LjI1MS0zLjUwMDg2YTk1LjgwNTc1IDk1LjgwNTc1IDAgMCAwIDQyLjc0OS03OS44NzY0NnYtODAuOTA0M2EyNC4wNDE3OSAyNC4wNDE3OSAwIDAgMCAtMTYuODA3NjItMjIuODk3MTVjLjUyMjk1LTUuNjc1NTQuODA3NjItMTEuMzk4MzYuODA3NjItMTcuMTAyMzZhOC4wMDAwOCA4LjAwMDA4IDAgMCAwIC04LThoLTY0YTguMDAwMDggOC4wMDAwOCAwIDAgMCAtOCA4IDEwNCAxMDQgMCAxIDEgLTEwNC0xMDQgOC4wMDAwOCA4LjAwMDA4IDAgMCAwIDgtOHYtNjRhOC4wMDAwOCA4LjAwMDA4IDAgMCAwIC04LThjLTEwMS40NTggMC0xODQgODIuNTQyLTE4NCAxODQgMCA1LjcwNC4yODQ5MSAxMS40MjY4Mi44MDc2MiAxNy4xMDIzNmEyNC4wNDE3OSAyNC4wNDE3OSAwIDAgMCAtMTYuODA3NjIgMjIuODk3MTV6bTE0NCAyMzIuMDAwNDloLTgwdi02NGg4MHptMTkyIDBoLTgwdi02NGg4MHptNDgtMTUxLjA5NjE5YTc5LjgzOTcgNzkuODM5NyAwIDAgMSAtMzUuNjI0IDY2LjU2NGwtNi43OTc4OCA0LjUzMjE5aC04NS41NzgxMnYtMTYuNzQ0MTRhMTg0LjIwNzUzIDE4NC4yMDc1MyAwIDAgMCA0MC41NjczOC0xOC42Mzg5MiA2Mi4yNDAzMyA2Mi4yNDAzMyAwIDAgMCAtLjU2NzM4IDguMjMzNjV2MTEuMTQ5NDFoMTZ2LTExLjE0OTQxYTQ1LjgxMDExIDQ1LjgxMDExIDAgMCAxIDIwLjQ0MzM2LTM4LjE5NTMyIDcuOTk5IDcuOTk5IDAgMCAwIDMuNTYzNDgtNi42NTgybC0uMDA2ODQtMzEuOTk1NjFhOCA4IDAgMCAxIDE2LS4wMDM5djQwLjAwMjQ0aDE2bC4wMDEtODguMDAwNDlhNy45OTk1MSA3Ljk5OTUxIDAgMSAxIDE1Ljk5OSAwem0tMTkyLTI4OC43MTU4MXY0OC4wNzU2N2ExMjAuMDAxNyAxMjAuMDAxNyAwIDEgMCAxMjcuNzM2MzMgMTI3LjczNjMzaDQ4LjA3NTE5Yy0uMTUyODMgMy4yNTA2Ny0uNDA4MiA2LjQ5MzQxLS43NDUxMSA5LjcxNjM3YTI0LjAzMDIxIDI0LjAzMDIxIDAgMCAwIC0xNS4wNjU0MSAyMi4yODQ2M2wuMDAxIDI1LjM3NTczYTIzLjk5Njc3IDIzLjk5Njc3IDAgMCAwIC0zMi4wMDIgMjIuNjI3NjZsLjAwNTg2IDI3Ljg5Nzk1YTYxLjgzOTM5IDYxLjgzOTM5IDAgMCAwIC0xMi44MTA1NSAxMy40NDk4MyAxNjcuOTgxODMgMTY3Ljk4MTgzIDAgMCAxIC0yMTQuMzkzNTUtLjAwNDE1IDYxLjgyMDA4IDYxLjgyMDA4IDAgMCAwIC0xMi44MDc2Mi0xMy40NDU2OGwuMDA1ODYtMjcuODk4OTJhMjMuOTkxNDIgMjMuOTkxNDIgMCAwIDAgLTMyLjAwMTk1LTIyLjYyNjU5bC4wMDEtMjUuMzc1MzdhMjQuMDMwMDcgMjQuMDMwMDcgMCAwIDAgLTE1LjA2ODExLTIyLjI4NjEzIDE3MC42MjUzNiAxNzAuNjI1MzYgMCAwIDEgLS45MzA5NC0xNy43MTUzM2MwLTg5Ljk1NTU3IDcxLjA2MjUtMTYzLjYyNDUxIDE2MC0xNjcuODEyem0tMTc2IDIwNy44MTE1MWE3Ljk5OTUxIDcuOTk5NTEgMCAxIDEgMTUuOTk5LjAwMDQ5bC4wMDEgODhoMTZ2LTQwLjAwMTQ2YTggOCAwIDEgMSAxNiAuMDAyNDRsLS4wMDY4NCAzMS45OTYwOWE3Ljk5OSA3Ljk5OSAwIDAgMCAzLjU2MzQ4IDYuNjU4MiA0NS44MTAxMSA0NS44MTAxMSAwIDAgMSAyMC40NDMzNiAzOC4xOTUzMnYxMS4xNDk0MWgxNnYtMTEuMTQ5NDFhNjIuMjE5NDEgNjIuMjE5NDEgMCAwIDAgLS41NjcxNC04LjIzMjE4IDE4NC4xNzY2NCAxODQuMTc2NjQgMCAwIDAgNDAuNTY3MTQgMTguNjQwMzh2MTYuNzQxMjFoLTg1LjU3ODEybC02Ljc5Nzg2LTQuNTMyMjNhNzkuODM5NyA3OS44Mzk3IDAgMCAxIC0zNS42MjQwMi02Ni41NjM5NnoiIGZpbGw9IiMwMDAwMDAiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48cGF0aCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGQ9Im0zODQgMTUyaDMydjE2aC0zMnoiIGZpbGw9IiMwMDAwMDAiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48cGF0aCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGQ9Im0zMDQgMzJ2MTZoLTE2djE2aDE2djE2aDE2di0xNmgxNnYtMTZoLTE2di0xNnoiIGZpbGw9IiMwMDAwMDAiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD48L2c+PC9zdmc+"/>
        </div>
    </div>
</div>

<section class="ftco-intro" style="margin-top : -150px">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-4 d-flex">
                <div class="intro aside-stretch d-lg-flex w-100">
                    <div class="icon">
                        <span class="flaticon-calendar"></span>

                    </div>
                    <div class="text">
                        <h2>스케줄 관리하기</h2>
                        <p>PB 직원은 온라인 / 오프라인으로 나누어 스케줄을 관리할 수 있습니다.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex">
                <div class="intro color-1 d-lg-flex w-100">
                    <div class="icon">
                        <span class="flaticon-qa"></span>
                    </div>
                    <div class="text">
                        <h2>온라인 상담하기</h2>
                        <p>예약이 완료된 손님과 온라인 투자상담을 진행할 수 있습니다.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex">
                <div class="intro color-2 d-lg-flex w-100">
                    <div class="icon">
                        <span class="flaticon-checklist"></span>
                    </div>
                    <div class="text">
                        <h2>상담 기록 확인</h2>
                        <p>상담 기록을 확인할 수 있습니다. 또한, 손님이 남긴 문의 사항에 대해 답변을 남길 수 있습니다. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>

<script>


</script>

</body>
</html>
