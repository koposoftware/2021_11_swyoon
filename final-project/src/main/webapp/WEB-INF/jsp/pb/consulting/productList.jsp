<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<style>--%>

<%--    .thead-light {--%>
<%--        text-align: center;--%>
<%--    }--%>
<%--</style>--%>

<thead class="thead-light">
<tr>
    <th style="width: 9% ; text-align: center ">상품코드</th>
    <th style="width: 12% ; text-align: center ">상품분류</th>
    <th style="width: 25% ; text-align: center ">상품명</th>
    <th style="width: 12% ; text-align: center ">위험등급</th>
    <th style="width: 12% ; text-align: center ">약관안내</th>

</tr>
</thead>
<tbody>
<c:forEach items="${productList }" var="list" varStatus="loop">
    <tr>
        <td><a style="color: #27b2a5; width: 10% ;text-align: center" href="#"><c:out
                value="${list.financialCode}"/></a></td>
        <c:choose>
            <c:when test="${list.productType eq '랩 어카운트'}">
                <td style="width: 12% ; text-align: center"><c:out value="${list.productType}"/></td>
            </c:when>
            <c:otherwise>
                <td style="width: 12% ; text-align: center"><c:out value="${list.productType}"/> 상품</td>
            </c:otherwise>
        </c:choose>
        <td><c:out value="${list.productName}"/></td>
        <c:choose>
            <c:when test="${list.productGrade eq '매우 높은 위험' }">
                <td style="width: 17%; text-align: center"><span id="gradeBtn" class="badge badge-danger"><c:out
                        value="${list.productGrade}"/></span></td>
            </c:when>
            <c:when test="${list.productGrade eq '높은 위험' }">
                <td style="width: 17%; text-align: center"><span id="gradeBtn" class="badge badge-warning"><c:out
                        value="${list.productGrade}"/></span></td>
            </c:when>
            <c:when test="${list.productGrade eq '다소 높은 위험' }">
                <td style="width: 17%; text-align: center"><span id="gradeBtn" class="badge badge-success"><c:out
                        value="${list.productGrade}"/></span></td>
            </c:when>
            <c:when test="${list.productGrade eq '보통 위험' }">
                <td style="width: 17%; text-align: center"><span id="gradeBtn" class="badge badge-info"><c:out
                        value="${list.productGrade}"/></span></td>
            </c:when>
            <c:when test="${list.productGrade eq '낮은 위험' }">
                <td style="width: 17%; text-align: center"><span id="gradeBtn" class="badge badge-primary"><c:out
                        value="${list.productGrade}"/></span></td>
            </c:when>
        </c:choose>
        <td style="width: 17%; text-align: center">
                <%--            <button id="openModal" class="btn btn-sm btn-primary" data-toggle="modal"--%>
                <%--                    data-target=".bs-example-modal-lg" tar>Detail--%>
                <%--            </button>--%>
            <a href="#" class="btn btn-sm btn-primary"
                <%--target="_blank"--%> onclick="openPop()">Detail</a>
        </td>
    </tr>
</c:forEach>
</tbody>