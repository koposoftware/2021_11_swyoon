<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="tab-pane active" id="tabs-1" role="tabpanel">
    <div class="row">
        <c:forEach items="${favoriteListBySector}" var="favorite" varStatus="loop">
            <div class="col-lg-4 col-md-6">
                <div class="listing__item">
                    <div id="profileImage" class="listing__item__pic set-bg">
                        <img id="pbImage"
                             src="${pageContext.request.contextPath}${favorite.fileSq}">
                        <div class="listing__item__pic__tag top_rate"><c:out
                                value="${favorite.mainField}"/></div>
                        <div class="listing__item__pic__btns">
                        </div>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="listing__item__text">
                        <div class="listing__item__text__inside">
                            <h5 style="text-align: center"><c:out value="${favorite.branchName}"/>
                                <c:out value="${favorite.pbName}"/> 자산관리사</h5>
                            <div class="listing__item__text__rating">
                            </div>
                            <ul>
                                <li>10년 경력 채권 투자 전문 PB<br>
                                    투자자산운용사 등 5개 자격증 보유
                                </li>
                                <li> 연락처 : (02)-678-910</li>
                            </ul>
                        </div>
                        <div class="listing__item__text__info">
                            <div class="listing__item__text__info__left">
                            </div>
                            <form action="${pageContext.request.contextPath}/client/searchList" method="post">
                                <input name="codeNum" type="hidden" value="${favorite.codeNum}">
                                <button style="background-color: #27b2a5;border-color: #27b2a5;float: right"
                                        class="btn btn-success btn-sm" type="submit">상담 예약하기
                                </button>
                                    <%--                                                <div class="listing__item__text__info__right">--%>
                                    <%--                                                </div>--%>
                            </form>

                                <%--                            <div class="listing__item__text__info__right">상담 예약하기</div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>