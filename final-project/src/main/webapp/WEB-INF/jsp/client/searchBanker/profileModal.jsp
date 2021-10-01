<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<link href="${pageContext.request.contextPath}/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
      type="text/css">
<link href="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"
      type="text/css">
<link href="${pageContext.request.contextPath}/resources/admin/css/ruang-admin.min.css" rel="stylesheet">
<style>
    .modal3 {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        background-color: rgb(0, 0, 0); /* Fallback color */
        background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
        overflow: hidden; /* 모달 띄웠을 시, 옆에 스크롤 제거 */
    }

    /* Modal Content/Box */
    #modal-content3 {
        background-color: #fefefe;
        padding: 40px;
        border: 1px solid #888;
        width: 70%; /* Could be more or less, depending on screen size */
        margin-top: 10%;
        height: 700px;
        position: fixed;
        margin-left: 15%;
        overflow: scroll;
    }

    .fa-quote-left:before {
        color: #fff;
    }


</style>

<!-- Modal Scrollable -->
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Private Banker Profile</h5>
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
                                    <span class="subheading">(주)하나금융지주</span>
                                    <h2 class="mb-4">${bankerVO.pbName}</h2>
                                    <h3>안녕하세요? 행복 전도사 윤승원 PB 입니다.</h3>
                                    <p>A small river named Duden flows by their place and supplies it with the
                                        necessary
                                        regelialia. It is a paradisematic country, in which roasted parts of
                                        sentences
                                        fly
                                        into
                                        your mouth.</p>
                                    <p>On her way she met a copy. The copy warned the Little Blind Text, that where
                                        it
                                        came
                                        from
                                        it would have been rewritten a thousand times and everything that was left
                                        from
                                        its
                                        origin would be the word "and" and the Little Blind Text should turn around
                                        and
                                        return
                                        to its own, safe country.</p>

                                    <a href="https://vimeo.com/45830194"
                                       class="play-video popup-vimeo d-flex align-items-center mt-4">
                                        <div class="icon d-flex align-items-center justify-content-center"><span
                                                class="fa fa-play"></span></div>
                                        <span class="watch">Watch Our Consultant Video</span>
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
            </div>
            <div class="modal-footer">
                <%--                <button type="button" class="btn btn-outline-primary" data-dismiss="modal">닫기</button>--%>
            </div>
        </div>
    </div>
</div>


<!-- loader -->
<%--<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>--%>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/ruang-admin.min.js"></script>
<script>


    $(document).ready(function () {
        $('#profileBtn').click(function () {
            $('#profileModal').show();

        });
    });

    // 외부영역 클릭 시 팝업 닫기
    $(document).mouseup(function (e) {
        var LayerPopup = $(".modal3");
        if (LayerPopup.has(e.target).length === 0) {
            $('#profileModal').hide();
        }
    });

    $(function () {
        $("#profileBtn").click(function () {
            $('#exampleModalScrollable').modal();
        })
    })

</script>
