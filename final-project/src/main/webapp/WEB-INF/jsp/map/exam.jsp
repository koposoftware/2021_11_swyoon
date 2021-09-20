<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
    .map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
    .map_wrap {position:relative;width:100%;height:500px;}
    #menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
    .bg_white {background:#fff;}
    #menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
    #menu_wrap .option{text-align: center;}
    #menu_wrap .option p {margin:10px 0;}
    #menu_wrap .option button {margin-left:5px;}
    #placesList li {list-style: none;}
    #placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
    #placesList .item span {display: block;margin-top:4px;}
    #placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
    #placesList .item .info{padding:10px 0 10px 55px;}
    #placesList .info .gray {color:#8a8a8a;}
    #placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
    #placesList .info .tel {color:#009900;}
    #placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
    #placesList .item .marker_1 {background-position: 0 -10px;}
    #placesList .item .marker_2 {background-position: 0 -56px;}
    #placesList .item .marker_3 {background-position: 0 -102px}
    #placesList .item .marker_4 {background-position: 0 -148px;}
    #placesList .item .marker_5 {background-position: 0 -194px;}
    #placesList .item .marker_6 {background-position: 0 -240px;}
    #placesList .item .marker_7 {background-position: 0 -286px;}
    #placesList .item .marker_8 {background-position: 0 -332px;}
    #placesList .item .marker_9 {background-position: 0 -378px;}
    #placesList .item .marker_10 {background-position: 0 -423px;}
    #placesList .item .marker_11 {background-position: 0 -470px;}
    #placesList .item .marker_12 {background-position: 0 -516px;}
    #placesList .item .marker_13 {background-position: 0 -562px;}
    #placesList .item .marker_14 {background-position: 0 -608px;}
    #placesList .item .marker_15 {background-position: 0 -654px;}
    #pagination {margin:10px auto;text-align: center;}
    #pagination a {display:inline-block;margin-right:10px;}
    #pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>

<style>
</style>
<body>

    <jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>

    <!-- 	<div class="main-wrapper "> -->
    <section class="page-title bg-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="block text-center">
                        <h1 class="text-capitalize mb-4 text-lg" style="font-size: 3rem;
                    margin:0px!important;padding: 30px;
                    ">내 지점 등록하기 </h1>
                        <ul class="list-inline">
                            <li class="list-inline-item"></li>
                            <li class="list-inline-item"><a href="#" class="text-white-50">
                                지도를 움직여서 브랜치를 등록해보세요.

                            </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="contact" class="contact">

    <main class="page-content margin-top-80" style="margin-top: 70px;">
        <div class="map_wrap" style="width:100%;margin-left: 25%;">
            <div id="map" style="width:50%;height:100%;position:relative;"></div>
        </div>
    </main>

    <jsp:include page="/WEB-INF/jsp/common/footer.jsp"></jsp:include>

</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c68f95dd575cfcf0f41226a101951816"></script>
<script>
   /* $(function() { // 실시간 현재 위치 정보 얻어오기
        // Geolocation API에 액세스할 수 있는지를 확인
        if (navigator.geolocation) {
            //위치 정보를 정기적으로 얻기
            var id = navigator.geolocation.watchPosition(
                function(pos) {
                    $('#latitude').html(pos.coords.latitude);     // 위도
                    $('#longitude').html(pos.coords.longitude); // 경도
                });

        } else {
            alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
        }

    });*/

    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new kakao.maps.LatLng(36.633535, 127.425882), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

   let lat ;
   let log ;

   // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
   if (navigator.geolocation) {

       // GeoLocation을 이용해서 접속 위치를 얻어옵니다
       navigator.geolocation.getCurrentPosition(function(position) {

            lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도

           var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
               message = '<div style="padding:5px;">고객님의 실시간 위치입니다.</div>'; // 인포윈도우에 표시될 내용입니다

           // 마커와 인포윈도우를 표시합니다
           displayMarker(locPosition, message);

       });

   } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

       var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),
           message = 'geolocation을 사용할수 없어요..'

       displayMarker(locPosition, message);
   }

   // 지도에 마커와 인포윈도우를 표시하는 함수입니다
   function displayMarker(locPosition, message) {

       // 마커를 생성합니다
       var marker = new kakao.maps.Marker({
           map: map,
           position: locPosition
       })
       // 마커가 드래그 가능하도록 설정합니다
       marker.setDraggable(true);

       // 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
       var iwContent = '<div style="padding:5px;">Hello World!</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

       var iwContent = message, // 인포윈도우에 표시할 내용
           iwRemoveable = true;

       // 인포윈도우를 생성합니다
       var infowindow = new kakao.maps.InfoWindow({
           content: iwContent,
           removable: iwRemoveable
       });
       // 마커에 마우스오버 이벤트를 등록합니다
       kakao.maps.event.addListener(marker, 'mouseover', function() {
           // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
           infowindow.open(map, marker);
       });

       // 마커에 마우스아웃 이벤트를 등록합니다
       kakao.maps.event.addListener(marker, 'mouseout', function() {
           // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
           infowindow.close();
       });

       // 인포윈도우를 마커위에 표시합니다
       infowindow.open(map, marker);

       // 지도 중심좌표를 접속위치로 변경합니다
       map.setCenter(locPosition);

       // 지도에 표시할 원을 생성합니다
       var circle = new kakao.maps.Circle({
           center : new kakao.maps.LatLng(lat, lon),  // 원의 중심좌표 입니다
           radius: 1000, // 미터 단위의 원의 반지름입니다
           strokeWeight: 5, // 선의 두께입니다
           strokeColor: '#27b2a5', // 선의 색깔입니다
           strokeOpacity: 0, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
           strokeStyle: 'dashed', // 선의 스타일 입니다
           fillColor: '#27b2a5', // 채우기 색깔입니다
           fillOpacity: 0.3  // 채우기 불투명도 입니다
       });
        // 지도에 원을 표시합니다
        circle.setMap(map);
   }
</script>
</html>
