<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>일정 추가</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- datepicker -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <!-- custom -->
    <link href="${pageContext.request.contextPath}/resources/css/schedule.css" rel="stylesheet"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui-timepicker-addon.css"/>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>

    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    <link href="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.css?version=1.3" rel="stylesheet"
          type="text/css" media="screen">
    <script src="${pageContext.servletContext.contextPath}/resources/js//jquery-1.8.3.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.js?version=1.3"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
    <style>
        .group {
            color: #008485;
            font-weight: 1000;
            border-color: #27b2a5;
        }


        .ok-button {
            background-color: #0f6848;
        }

        .memo, .subject, .date {
            border-color: #27b2a5;
        }

        .memo, .subject, .date :focus {
            outline: none !important;
        }

        textarea:focus, input:focus {
            outline: none;
        }

        .subject {
            padding: 5px;
        }
    </style>
</head>
<body>
<div class="group" id="popupGroup">
    <div class="group-head">
        <strong><h1 class="zTree-h1" style="text-align: center;margin-top: 30px;"> 일정 추가 </h1></strong>
    </div>
    <div class="group-body">
        <form id="scheduleData">
            <div class="top">
                <input class="subject" id="subject" type="text" name="title" placeholder="제목을 입력해주세요">
            </div>
            <div class="domain">
                <h3 class="zTree-h3"> 시작 </h3>
            </div>
            <div class="domain">
                <input class="date" id="startDate" type="text" name="startDate" id="startDate">
                <input class="date" type="text" name="startTime" id="timepicker">
            </div>
            <div class="domain">
                <h3 class="zTree-h3"> 종료 </h3>
            </div>
            <div class="domain">
                <input class="date" id="endDate" type="text" name="endDate" id="endDate">
                <input class="date" type="text" name="endTime" id="timepicker2">
            </div>
            <div class="domain">
                <h3 class="zTree-h3"> 메모 </h3>
            </div>
            <div class="domain">
                <textarea class="memo" id="memo" name="memo" rows="5" cols="20"
                          placeholder="100글자까지 입력 가능합니다" style="padding:10px"></textarea>
            </div>
        </form>
        <button class="ok-button" type="button" onclick="click_ok();">확인</button>
    </div>


</div>
</body>
<script>

    // add schedule popup open
    function click_add() {
        var url = "/pb/addSchedule";
        var name = "schedulePopup";
        var option = "width = 600, height = 600 left = 100, top=50,location=no";
        window.open(url, name, option)
    };

    //datepicker
    $(function () {
        $.datepicker.setDefaults({
            dateFormat: 'yy-mm-dd',
            showOtherMonths: true,
            showMonthAfterYear: true,
            changeYear: true,
            changeMonth: true,
            yearSuffix: "년",
            monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
            monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
            dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],

            //timepicker 설정
            timeFormat: 'HH:mm',
            controlType: 'select',
            oneLine: true
        });
        $("#startDate").datepicker();
        $("#endDate").datepicker();

        $("#startDate").datepicker('setDate', 'today');
        $("#endDate").datepicker('setDate', 'today');
    });

    //add schedule
    $.fn.serializeObject = function () {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function () {
            var name = $.trim(this.name),
                value = $.trim(this.value);

            if (o[name]) {
                if (!o[name].push) {
                    o[name] = [o[name]];
                }
                o[name].push(value || '');
            } else {
                o[name] = value || '';
            }
        });
        return o;
    };

    function click_ok() {

        var scheduleData = JSON.stringify($('form#scheduleData').serializeObject());
        $.ajax({
            data: scheduleData,
            url: "/pb/addSchedule",
            type: "POST",
            dataType: "json",
            contentType: "application/json; charset=UTF-8",
            success: function (data) {
                opener.parent.location.reload();
                window.close();
            }
        });
    };
    $('#timepicker').timepicker({
        timeFormat: 'p HH:mm',
        interval: 60,
        minTime: '10:00am',
        maxTime: '17:00pm',
        defaultTime: '10',
        // startTime: '00:00',
        dynamic: false,
        dropdown: true,
        scrollbar: true
    });
    $('#timepicker2').timepicker({
        timeFormat: 'p HH:mm',
        interval: 60,
        minTime: '10:00am',
        maxTime: '17:00pm',
        defaultTime: '11',
        dynamic: false,
        dropdown: true,
        scrollbar: true
    });


</script>


</html>

