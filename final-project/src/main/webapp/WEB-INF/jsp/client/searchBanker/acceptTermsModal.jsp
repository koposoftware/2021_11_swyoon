<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style>
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
        width: 460px;
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

    #staticBackdrop{
        overflow: hidden;
    }
    .modal-dialog,
    .modal-content {
        /* 80% of window height */
        height: 80%;
    }


</style>

<%--<!-- Button trigger modal -->--%>
<%--<button id="termsModal" type="button" class="btn btn-primary" >--%>
<%--    Launch static backdrop modal--%>
<%--</button>--%>


<!--  acceptTermsModal -->
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">서비스 이용 약관동의</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div id="joinForm">
                    <ul class="join_box">
                        <li class="checkBox check01">
                            <ul class="clearfix">
                                <li>이용약관, 개인정보 수집 및 이용,
                                    위치정보 이용약관(선택), 프로모션 안내
                                    메일 수신(선택)에 모두 동의합니다.
                                </li>
                                <li class="checkAllBtn">
                                    <input type="checkbox" name="chkAll" id="chk" class="chkAll">
                                </li>
                            </ul>
                        </li>
                        <li class="checkBox check02">
                            <ul class="clearfix">
                                <li>이용약관 동의(필수)</li>
                                <li class="checkBtn">
                                    <input type="checkbox" name="chk">
                                </li>
                            </ul>
                            <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                        </li>
                        <li class="checkBox check03">
                            <ul class="clearfix">
                                <li>개인정보 수집 및 이용에 대한 안내(필수)</li>
                                <li class="checkBtn">
                                    <input type="checkbox" name="chk">
                                </li>
                            </ul>

                            <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                        </li>
                        <li class="checkBox check03">
                            <ul class="clearfix">
                                <li>위치정보 이용약관 동의(선택)</li>
                                <li class="checkBtn">
                                    <input type="checkbox" name="chk">
                                </li>
                            </ul>

                            <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
                        </li>
                        <li class="checkBox check04">
                            <ul class="clearfix">
                                <li>이벤트 등 프로모션 알림 메일 수신(선택</li>
                                <li class="checkBtn">
                                    <input type="checkbox" name="chk">
                                </li>
                            </ul>

                        </li>
                    </ul>
                    <ul class="footBtwrap clearfix">
                    </ul>
                </div>
            </div>
            <div class="modal-footer">
                <button id="termsCloseBtn" type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary">상담예약하기</button>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(function () {
        $("#termsModal").click(function () {
            $('#staticBackdrop').modal();
        })
    })

    $(function (){
        $("#termsCloseBtn").click(function (){
            $('#staticBackdrop').modal('hide');
        })

    })
</script>





