<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
     aria-labelledby="myLargeModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <iframe style="width: 100%; height:100% "
                    src="${pageContext.request.contextPath}/resources/HANAInvestment.pdf">
            </iframe>
        </div>
    </div>
</div>

</body>
</html>
