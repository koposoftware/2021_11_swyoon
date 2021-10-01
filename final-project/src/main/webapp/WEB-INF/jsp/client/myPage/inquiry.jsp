<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${inquiryList}" var="inquiry">
    <c:choose>
        <c:when test="${inquiry.inquiryId mod 2 ==  1}">
            <div class="col-lg-7 ">
                <div class="listing__details__comment__item" style="display: block">
                    <div class="listing__details__comment__item__text">
                        <span>${inquiry.regDate}</span>
                        <div><h5>${inquiry.writer} 손님</h5>
                                <%--                                                        <div class="listing__details__comment__item__pic">--%>
                                <%--                                                            <img src="${pageContext.request.contextPath}/resources/pbImage.png"--%>
                                <%--                                                                 alt=""--%>
                                <%--                                                                 style="border: 1px solid cadetblue">--%>
                                <%--                                                        </div>--%>

                        </div>
                        <div class="inquiryContent">
                            <p style="color: black">문의 제목 : ${inquiry.inquiryTitle}</p>
                            <p style="color: black">문의 내용 : ${inquiry.inquiryContent}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5" style="width: 100%"></div>
        </c:when>
        <c:when test="${inquiry.inquiryId mod 2 eq 0}">
            <div class="col-lg-5" style="width: 100%">
            </div>
            <div class="col-lg-7">
                <div class="listing__details__comment__item" style="float: right;">
                        <%--                                                <div class="listing__details__comment__item__pic">--%>
                        <%--                                                    <img src="${pageContext.request.contextPath}/resources/pbImage.png"--%>
                        <%--                                                         alt=""--%>
                        <%--                                                         style="border: 1px solid cadetblue">--%>
                        <%--                                                </div>--%>
                    <div class="listing__details__comment__item__text">
                        <span>${inquiry.regDate}</span>
                        <h5>${inquiry.writer} PB</h5>
                        <div class="inquiryContent">
                            <p style="color: black">문의 제목 : ${inquiry.inquiryTitle}</p>
                            <p style="color: black">문의 내용 : ${inquiry.inquiryContent}</p>
                        </div>
                    </div>
                </div>
            </div>
        </c:when>
    </c:choose>
</c:forEach>