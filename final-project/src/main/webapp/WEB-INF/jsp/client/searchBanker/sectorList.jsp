<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

	<c:forEach items="${bankerList}" var="banker" varStatus="loop">
						<div class="blog__item__large">
							<div class="blog__item__text">
								<ul class="blog__item__tags">
									<li><i class="fa fa-tags"></i>
									<c:out value="${banker.branchName}" /></li>
									<input class="pbBranchName" type="hidden" value="<c:out value="${banker.branchName}"/>" />
									<li><c:out value="${banker.mainField}" /></li>
								</ul>
								<%--                            <button type="button" id="popbutton" class="btn btn-primary" id="#modalScroll">--%>
								<%--                            </button>--%>
								<a id="profileBtn"><img class="pb_thumbnail"
									src="${pageContext.request.contextPath}/resources/images/user2.png" /></a>
								<h3>
									<span><c:out value="${banker.pbName}" /></span> 자산관리사 <input
										class="pbName" type="hidden"
										value="<c:out value="${banker.pbName}"/>" />
								</h3>
								<p>
									<c:out value="${banker.introContent}" />
								</p>
								<ul class="blog__item__widget">
									<h3>
										<p style="color: black">상담 가능 시간</p>
									</h3>
									<c:if test="${fn:contains(banker.impossible,'1')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter"
												value="10:00">10:00</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'1')}">
										<li>
											<button id="termsModal" class="btn btn-light btn-sm"
												style="margin-bottom: 10px;" value="10:00">10:00</button>
										</li>
									</c:if>
									<c:if test="${fn:contains(banker.impossible,'2')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter">11:00
											</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'2')}">
										<li>
											<button class="btn btn-light btn-sm"
												style="margin-bottom: 10px;" value="11:00">11:00</button>
										</li>
									</c:if>
									<c:if test="${fn:contains(banker.impossible,'3')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter">13:00
											</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'3')}">
										<li>
											<button value="13:00" class="btn btn-light btn-sm "
												style="margin-bottom: 10px;">13:00</button>
										</li>
									</c:if>
									<c:if test="${fn:contains(banker.impossible,'4')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter">14:00
											</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'4')}">
										<li>
											<button value="14:00" class="btn btn-light btn-sm "
												style="margin-bottom: 10px;">14:00</button>
										</li>
									</c:if>
									<c:if test="${fn:contains(banker.impossible,'5')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter">15:00
											</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'5')}">
										<li>
											<button value="15:00" class="btn btn-light btn-sm "
												style="margin-bottom: 10px;">15:00</button>
										</li>
									</c:if>
									<c:if test="${fn:contains(banker.impossible,'6')}">
										<li>
											<button class="btn btn-light btn-sm disabled"
												style="margin-bottom: 10px; font-weight: lighter">16:00
											</button>
										</li>
									</c:if>
									<c:if test="${not fn:contains(banker.impossible,'6')}">
										<li>
											<button value="16:00" class="btn btn-light btn-sm "
												style="margin-bottom: 10px;">16:00</button>
										</li>
									</c:if>
								</ul>
								<div id="tagName">
									<c:out value="${banker.tagName}" />
								</div>
							</div>
						</div>
					</c:forEach>
<!--  acceptTermsModal -->
	<div id="staticBackdrop" class="modal fade" id="exampleModalScrollable"
		tabindex="-1" role="dialog"
		aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">서비스 이용 약관동의</h5>
					<%--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
				</div>
				<div class="modal-body">
					<div id="joinForm">
						<ul class="join_box">

							<li class="checkBox check02">
								<ul class="clearfix">
									<li>이용약관 동의(필수)</li>
									<li class="checkBtn"><input type="checkbox" name="chk">
									</li>
								</ul> <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
							</li>
							<li class="checkBox check03">
								<ul class="clearfix">
									<li>개인정보 수집 및 이용에 대한 안내(필수)</li>
									<li class="checkBtn"><input type="checkbox" name="chk">
									</li>
								</ul> <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
							</li>
							<li class="checkBox check03">
								<ul class="clearfix">
									<li>위치정보 이용약관 동의(선택)</li>
									<li class="checkBtn"><input type="checkbox" name="chk">
									</li>
								</ul> <textarea name="" id="">여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
							</li>
							<li class="checkBox check04">
								<ul class="clearfix">
									<li>이벤트 등 프로모션 알림 메일 수신(선택</li>
									<li class="checkBtn"><input type="checkbox" name="chk">
									</li>
								</ul>

							</li>
							<li class="checkBox check01">
								<ul class="clearfix">
									<li>이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), 프로모션 안내 메일 수신(선택)에
										모두 동의합니다.</li>
									<li class="checkAllBtn"><input type="checkbox"
										name="chkAll" id="chk" class="chkAll"></li>
								</ul>
							</li>
						</ul>
						<ul class="footBtwrap clearfix">
						</ul>
					</div>
				</div>
				<div class="modal-footer">
					<button id="termsCloseBtn" type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button id="reservationBtn" type="button" class="btn btn-primary">상담예약하기</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="sendModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="exampleModalLabel">온라인 상담신청</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<%--                    <div class="form-group">--%>
						<%--                        <label for="recipient-name" class="control-label">상담 정보</label>--%>
						<%--                        <div id="recipient-name" >성함 : ${userVO.username}</div>--%>
						<%--                        <div >상담 시간 : ${}</div>--%>
						<%--                    </div>--%>
						<div class="form-group">
							<label for="message-text" class="control-label">상담 요청 내용
								:</label>
							<textarea class="form-control" id="message-text"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button id="sendMsg" type="button" class="btn btn-primary">확인</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="sendModal2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">상담 신청을 하시겠습니까?</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							상담사 이름 : <span id="pb"></span><br> 상담 시간 : <span id="time"></span>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button id="sendMsg2" type="button" class="btn btn-primary"
						data-dismiss="modal">상담 신청하기</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

					
					
					
					
					
					
					
					
					
					
					
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>


	$("#profileBtn").click(function() {
		$('#exampleModalScrollable').modal();
	})
	
	$(".btn.btn-light.btn-sm").click(function() {
		consultTime = $(this).val()
		var parent = $(this).parents('.blog__item__large')
		pbName = parent.find('.pbName').val();
		pbBranchName = parent.find('.pbBranchName').val();
	
		$('#staticBackdrop').modal('show');
	
	})
	
	$("#termsCloseBtn").click(function() {
		$('#staticBackdrop').modal('hide');
	})
	
	$("#reservationBtn").click(function() {
		$('#staticBackdrop').modal('hide');
		$('#sendModal').modal('show');
	})


</script>
