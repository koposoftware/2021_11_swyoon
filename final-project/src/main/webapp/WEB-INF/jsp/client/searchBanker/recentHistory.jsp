<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="recentList" var="recent" varStatus="loop">
    <h5>최근 다른 손님과 상담한 PB</h5>
    <a href="#" class="blog__sidebar__recent__item">
        <div class="blog__sidebar__recent__item__pic">
            <img src="img/blog/recent-1.jpg" alt="">
        </div>
        <div class="blog__sidebar__recent__item__text">
            <span><i class="fa fa-tags"></i><c:out value="${recent.branchName}"/></span>
            <h6>Tortoise grilled on salt</h6>
            <p>
                <i class="fa fa-clock-o"></i> 방금
            </p>
        </div>
    </a>
</c:forEach>