<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>

        /* 페이지 이동 jsp*/
        $(document).ready(function(){
            console.log(${roomVO.roomNumber})
            console.log("${roomVO.clientName}")
            location.href='${pageContext.request.contextPath}/moveChatting?roomMaster=' + '${roomVO.clientName}' + '&'+'roomNumber='+${roomVO.roomNumber};
        })

    </script>
