<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="utf-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>온라인 상담</title>
<link
	href="${pageContext.request.contextPath}/resources/admin/img/logo/logo.png"
	rel="icon">
<link
	href="${pageContext.request.contextPath}/resources/admin/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/admin/css/ruang-admin.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css2/nice-select.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<!--chartjs -->
</head>

<style>
#chatScreen {
	background-color: #e6efef;
	height: 310px;
}

* {
	margin: 0;
	padding: 0;
}

.container {
	width: 500px;
	margin: 0 auto;
	padding: 25px
}

.container h1 {
	text-align: left;
	padding: 5px 5px 5px 15px;
	color: #27b2a5;
	/*border-left: 3px solid #008485;*/
}

.chatting {
	background-color: #e6efef;
	height: 300px;
	overflow: auto;
	padding-bottom: 50px;
	margin-bottom: 5px;
}

.chatting .me {
	color: #3c3c3c;
	text-align: right;
	word-break: keep-all;
	border-top-left-radius: 10px;
	border-bottom-left-radius: 10px;
	position: relative;
	padding: 9px 0 6px;
	margin: 5px 5px 15px 50px;
	background: #fff;
	top: 0;
	z-index: 5;
}

.chatting .others {
	color: #008485;
	text-align: left;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
	position: relative;
	padding: 9px 0 6px;
	margin: 5px 50px 15px 5px;
	background: #fff;
	top: 0;
	z-index: 5;
}

input {
	width: 180px;
	height: 25px;
}

#yourMsg {
	display: none;
}

#bubble {
	color: #27b2a5;
}

.spinner-border {
	color: #27b2a5;
	width: 100%;
	text-align: center;
}

#loader {
	margin-top: 30px;
	width: 70px;
	height: 70px;
}

.waitMent {
	text-align: center;
	margin-top: 250px;
}

.checkNum {
	margin-left: 10px;
	width: 200px;
}

#startBtn {
	margin-left: 30px;
}

#sendBtn {
	margin-left: 40px;
}

#webrtc {
	display: block;
	height: 410px; /* mac 320px*/
	width: 100%;
	box-sizing: border-box;
}

.btn-primary {
	background-color: #27b2a5;
}

.bg-primary {
	background-color: #27b2a5 !important;
}

.text-warning {
	color: #FFFFFF !important;
}

.card-body {
	padding-top: 0px;
}

#productList {
	table-layout: fixed;
}

#productList th {
	position: sticky;
	top: 0px;
}

.table-responsive {
	height: 350px;
}

.table th {
	border-top: 0px;
}
</style>
<script type="text/javascript">
	var ws;

	function wsOpen() {
		//웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
		ws = new WebSocket("ws://" + location.host + "/chatting/"
				+ $("#roomNumber").val());
		wsEvt();
	}

	function wsEvt() {
		ws.onopen = function(data) {
			//소켓이 열리면 동작
		}

		ws.onmessage = function(data) {
			//메시지를 받으면 동작
			var msg = data.data;
			if (msg != null && msg.trim() != '') {
				var d = JSON.parse(msg);
				if (d.type == "getId") {
					var si = d.sessionId != null ? d.sessionId : "";
					if (si != '') {
						$("#sessionId").val(si);
					}
				} else if (d.type == "message") {
					if (d.sessionId == $("#sessionId").val()) {
						$("#chatWindow").append(
								"<p class='me'>나 :" + d.msg + "</p>");
					} else {
						$("#chatWindow").append(
								"<p class='others'>" + d.userName + " :"
										+ d.msg + "</p>");
					}

				} else {
					console.warn("unknown type!")
				}
			}
		}

		document.addEventListener("keypress", function(e) {
			if (e.keyCode == 13) { //enter press
				send();
			}
		});
	}

	function chatName() {
		var userName = $("#userName").val();
		console.log("현재 로그인 값" + userName)
		if (userName == null || userName.trim() == "") {
			alert("사용자 이름을 입력해주세요.");
			$("#userName").focus();
		} else {
			wsOpen();
			$("#yourName").hide();
			$("#yourMsg").show();
		}
	}

	// 메세지 보내는 처리
	function send() {
		var option = {
			type : "message",
			roomNumber : $("#roomNumber").val(),
			sessionId : $("#sessionId").val(),
			userName : $("#userName").val(),
			msg : $("#chatting").val(),
		}
		ws.send(JSON.stringify(option))
		$('#chatting').val("");
	}
</script>
<%--<jsp:include page="/WEB-INF/jsp/common/header.jsp"/>--%>

<body id="page-top">
	<div id="wrapper">
		<%--    <!-- Sidebar -->--%>
		<%--    <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">--%>
		<%--        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">--%>
		<%--            <div class="sidebar-brand-icon">--%>
		<%--                <img src="${pageContext.request.contextPath}/resources/admin/img/logo/logo2.png">--%>
		<%--            </div>--%>
		<%--            <div class="sidebar-brand-text mx-3">RuangAdmin</div>--%>
		<%--        </a>--%>
		<%--        <hr class="sidebar-divider my-0">--%>
		<%--        <li class="nav-item active">--%>
		<%--            <a class="nav-link" href="index.html">--%>
		<%--                <i class="fas fa-fw fa-tachometer-alt"></i>--%>
		<%--                <span>Dashboard</span></a>--%>
		<%--        </li>--%>
		<%--        <hr class="sidebar-divider">--%>
		<%--        <div class="sidebar-heading">--%>
		<%--            Features--%>
		<%--        </div>--%>
		<%--        <li class="nav-item">--%>
		<%--            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap"--%>
		<%--               aria-expanded="true" aria-controls="collapseBootstrap">--%>
		<%--                <i class="far fa-fw fa-window-maximize"></i>--%>
		<%--                <span>Bootstrap UI</span>--%>
		<%--            </a>--%>
		<%--            <div id="collapseBootstrap" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">--%>
		<%--                <div class="bg-white py-2 collapse-inner rounded">--%>
		<%--                    <h6 class="collapse-header">Bootstrap UI</h6>--%>
		<%--                    <a class="collapse-item" href="alerts.html">Alerts</a>--%>
		<%--                    <a class="collapse-item" href="buttons.html">Buttons</a>--%>
		<%--                    <a class="collapse-item" href="dropdowns.html">Dropdowns</a>--%>
		<%--                    <a class="collapse-item" href="modals.html">Modals</a>--%>
		<%--                    <a class="collapse-item" href="popovers.html">Popovers</a>--%>
		<%--                    <a class="collapse-item" href="progress-bar.html">Progress Bars</a>--%>
		<%--                </div>--%>
		<%--            </div>--%>
		<%--        </li>--%>
		<%--        <li class="nav-item">--%>
		<%--            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseForm" aria-expanded="true"--%>
		<%--               aria-controls="collapseForm">--%>
		<%--                <i class="fab fa-fw fa-wpforms"></i>--%>
		<%--                <span>Forms</span>--%>
		<%--            </a>--%>
		<%--            <div id="collapseForm" class="collapse" aria-labelledby="headingForm" data-parent="#accordionSidebar">--%>
		<%--                <div class="bg-white py-2 collapse-inner rounded">--%>
		<%--                    <h6 class="collapse-header">Forms</h6>--%>
		<%--                    <a class="collapse-item" href="form_basics.html">Form Basics</a>--%>
		<%--                    <a class="collapse-item" href="form_advanceds.html">Form Advanceds</a>--%>
		<%--                </div>--%>
		<%--            </div>--%>
		<%--        </li>--%>
		<%--        <li class="nav-item">--%>
		<%--            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTable" aria-expanded="true"--%>
		<%--               aria-controls="collapseTable">--%>
		<%--                <i class="fas fa-fw fa-table"></i>--%>
		<%--                <span>Tables</span>--%>
		<%--            </a>--%>
		<%--            <div id="collapseTable" class="collapse" aria-labelledby="headingTable" data-parent="#accordionSidebar">--%>
		<%--                <div class="bg-white py-2 collapse-inner rounded">--%>
		<%--                    <h6 class="collapse-header">Tables</h6>--%>
		<%--                    <a class="collapse-item" href="simple-tables.html">Simple Tables</a>--%>
		<%--                    <a class="collapse-item" href="datatables.html">DataTables</a>--%>
		<%--                </div>--%>
		<%--            </div>--%>
		<%--        </li>--%>
		<%--        <li class="nav-item">--%>
		<%--            <a class="nav-link" href="ui-colors.html">--%>
		<%--                <i class="fas fa-fw fa-palette"></i>--%>
		<%--                <span>UI Colors</span>--%>
		<%--            </a>--%>
		<%--        </li>--%>
		<%--        <hr class="sidebar-divider">--%>
		<%--        <div class="sidebar-heading">--%>
		<%--            Examples--%>
		<%--        </div>--%>
		<%--        <li class="nav-item">--%>
		<%--            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePage" aria-expanded="true"--%>
		<%--               aria-controls="collapsePage">--%>
		<%--                <i class="fas fa-fw fa-columns"></i>--%>
		<%--                <span>Pages</span>--%>
		<%--            </a>--%>
		<%--            <div id="collapsePage" class="collapse" aria-labelledby="headingPage" data-parent="#accordionSidebar">--%>
		<%--                <div class="bg-white py-2 collapse-inner rounded">--%>
		<%--                    <h6 class="collapse-header">Example Pages</h6>--%>
		<%--                    <a class="collapse-item" href="login.html">Login</a>--%>
		<%--                    <a class="collapse-item" href="register.html">Register</a>--%>
		<%--                    <a class="collapse-item" href="404.html">404 Page</a>--%>
		<%--                    <a class="collapse-item" href="blank.html">Blank Page</a>--%>
		<%--                </div>--%>
		<%--            </div>--%>
		<%--        </li>--%>
		<%--        <li class="nav-item">--%>
		<%--            <a class="nav-link" href="charts.html">--%>
		<%--                <i class="fas fa-fw fa-chart-area"></i>--%>
		<%--                <span>Charts</span>--%>
		<%--            </a>--%>
		<%--        </li>--%>
		<%--        <hr class="sidebar-divider">--%>
		<%--        <div class="version" id="version-ruangadmin"></div>--%>
		<%--    </ul>--%>
		<%--    <!-- Sidebar -->--%>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<!-- TopBar -->
				<nav
					class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top">
					<button id="sidebarToggleTop"
						class="btn btn-link rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
					<ul class="navbar-nav ml-auto">
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-1 small"
											placeholder="What do you want to look for?"
											aria-label="Search" aria-describedby="basic-addon2"
											style="border-color: #3f51b5;">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <span
								class="badge badge-danger badge-counter">3+</span>
						</a>
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
								<span class="badge badge-warning badge-counter">2</span>
						</a>
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Message Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/man.png"
											style="max-width: 60px" alt="">
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">Hi there! I am wondering if
											you can help me with a problem I've been having.</div>
										<div class="small text-gray-500">Udin Cilok · 58m</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/girl.png"
											style="max-width: 60px" alt="">
										<div class="status-indicator bg-default"></div>
									</div>
									<div>
										<div class="text-truncate">Am I a good boy? The reason I
											ask is because someone told me that people say this to all
											dogs, even if they aren't good...</div>
										<div class="small text-gray-500">Jaenab · 2w</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Read More Messages</a>
							</div></li>
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-tasks fa-fw"></i> <span
								class="badge badge-success badge-counter">3</span>
						</a>
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Task</h6>
								<a class="dropdown-item align-items-center" href="#">
									<div class="mb-3">
										<div class="small text-gray-500">
											Design Button
											<div class="small float-right">
												<b>50%</b>
											</div>
										</div>
										<div class="progress" style="height: 12px;">
											<div class="progress-bar bg-success" role="progressbar"
												style="width: 50%" aria-valuenow="50" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
								</a> <a class="dropdown-item align-items-center" href="#">
									<div class="mb-3">
										<div class="small text-gray-500">
											Make Beautiful Transitions
											<div class="small float-right">
												<b>30%</b>
											</div>
										</div>
										<div class="progress" style="height: 12px;">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 30%" aria-valuenow="30" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
								</a> <a class="dropdown-item align-items-center" href="#">
									<div class="mb-3">
										<div class="small text-gray-500">
											Create Pie Chart
											<div class="small float-right">
												<b>75%</b>
											</div>
										</div>
										<div class="progress" style="height: 12px;">
											<div class="progress-bar bg-danger" role="progressbar"
												style="width: 75%" aria-valuenow="75" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">View All Taks</a>
							</div></li>
						<div class="topbar-divider d-none d-sm-block"></div>
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <img
								class="img-profile rounded-circle" src="img/boy.png"
								style="max-width: 60px"> <span
								class="ml-2 d-none d-lg-inline text-white small">Maman
									Ketoprak</span>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0);"
									data-toggle="modal" data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>
					</ul>
				</nav>
				<!-- Topbar -->

				<!-- Container Fluid-->
				<div class="container-fluid" id="container-wrapper">
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<%--                    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>--%>
						<%--                    <ol class="breadcrumb">--%>
						<%--                        <li class="breadcrumb-item"><a href="./">Home</a></li>--%>
						<%--                        <li class="breadcrumb-item active" aria-current="page">Dashboard</li>--%>
						<%--                    </ol>--%>
					</div>

					<div id="chatView" class="row mb-3">
						<%--                    <!-- Earnings (Monthly) Card Example -->--%>
						<%--                    <div class="col-xl-3 col-md-6 mb-4">--%>
						<%--                        <div class="card h-100">--%>
						<%--                            <div class="card-body">--%>
						<%--                                <div class="row align-items-center">--%>
						<%--                                    <div class="col mr-2">--%>
						<%--                                        <div class="text-xs font-weight-bold text-uppercase mb-1">Earnings (Monthly)</div>--%>
						<%--                                        <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>--%>
						<%--                                        <div class="mt-2 mb-0 text-muted text-xs">--%>
						<%--                                            <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>--%>
						<%--                                            <span>Since last month</span>--%>
						<%--                                        </div>--%>
						<%--                                    </div>--%>
						<%--                                    <div class="col-auto">--%>
						<%--                                        <i class="fas fa-calendar fa-2x text-primary"></i>--%>
						<%--                                    </div>--%>
						<%--                                </div>--%>
						<%--                            </div>--%>
						<%--                        </div>--%>
						<%--                    </div>--%>
						<%--                    <!-- Earnings (Annual) Card Example -->--%>
						<%--                    <div class="col-xl-3 col-md-6 mb-4">--%>
						<%--                        <div class="card h-100">--%>
						<%--                            <div class="card-body">--%>
						<%--                                <div class="row no-gutters align-items-center">--%>
						<%--                                    <div class="col mr-2">--%>
						<%--                                        <div class="text-xs font-weight-bold text-uppercase mb-1">Sales</div>--%>
						<%--                                        <div class="h5 mb-0 font-weight-bold text-gray-800">650</div>--%>
						<%--                                        <div class="mt-2 mb-0 text-muted text-xs">--%>
						<%--                                            <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>--%>
						<%--                                            <span>Since last years</span>--%>
						<%--                                        </div>--%>
						<%--                                    </div>--%>
						<%--                                    <div class="col-auto">--%>
						<%--                                        <i class="fas fa-shopping-cart fa-2x text-success"></i>--%>
						<%--                                    </div>--%>
						<%--                                </div>--%>
						<%--                            </div>--%>
						<%--                        </div>--%>
						<%--                    </div>--%>
						<%--                    <!-- New User Card Example -->--%>
						<%--                    <div class="col-xl-3 col-md-6 mb-4">--%>
						<%--                        <div class="card h-100">--%>
						<%--                            <div class="card-body">--%>
						<%--                                <div class="row no-gutters align-items-center">--%>
						<%--                                    <div class="col mr-2">--%>
						<%--                                        <div class="text-xs font-weight-bold text-uppercase mb-1">New User</div>--%>
						<%--                                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">366</div>--%>
						<%--                                        <div class="mt-2 mb-0 text-muted text-xs">--%>
						<%--                                            <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 20.4%</span>--%>
						<%--                                            <span>Since last month</span>--%>
						<%--                                        </div>--%>
						<%--                                    </div>--%>
						<%--                                    <div class="col-auto">--%>
						<%--                                        <i class="fas fa-users fa-2x text-info"></i>--%>
						<%--                                    </div>--%>
						<%--                                </div>--%>
						<%--                            </div>--%>
						<%--                        </div>--%>
						<%--                    </div>--%>
						<%--                    <!-- Pending Requests Card Example -->--%>
						<%--                    <div class="col-xl-3 col-md-6 mb-4">--%>
						<%--                        <div class="card h-100">--%>
						<%--                            <div class="card-body">--%>
						<%--                                <div class="row no-gutters align-items-center">--%>
						<%--                                    <div class="col mr-2">--%>
						<%--                                        <div class="text-xs font-weight-bold text-uppercase mb-1">Pending Requests</div>--%>
						<%--                                        <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>--%>
						<%--                                        <div class="mt-2 mb-0 text-muted text-xs">--%>
						<%--                                            <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>--%>
						<%--                                            <span>Since yesterday</span>--%>
						<%--                                        </div>--%>
						<%--                                    </div>--%>
						<%--                                    <div class="col-auto">--%>
						<%--                                        <i class="fas fa-comments fa-2x text-warning"></i>--%>
						<%--                                    </div>--%>
						<%--                                </div>--%>
						<%--                            </div>--%>
						<%--                        </div>--%>
						<%--                    </div>--%>

						<!-- Area Chart -->
						<div class="col-xl-8 col-lg-7">
							<div class="card mb-4">

								<%--                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">--%>
								<%--                            <h6 class="m-0 font-weight-bold text-primary">Monthly Recap Report</h6>--%>
								<div>
									<iframe id="webrtc" src="https://localhost:8000/"
								allow="camera;microphone" style="border: 2px solid black">
									</iframe>
								</div>
								<%--                            <div class="dropdown no-arrow">--%>
								<%--                                <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown"--%>
								<%--                                   aria-haspopup="true" aria-expanded="false">--%>
								<%--                                    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>--%>
								<%--                                </a>--%>
								<%--                                <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"--%>
								<%--                                     aria-labelledby="dropdownMenuLink">--%>
								<%--                                    <div class="dropdown-header">Dropdown Header:</div>--%>
								<%--                                    <a class="dropdown-item" href="#">Action</a>--%>
								<%--                                    <a class="dropdown-item" href="#">Another action</a>--%>
								<%--                                    <div class="dropdown-divider"></div>--%>
								<%--                                    <a class="dropdown-item" href="#">Something else here</a>--%>
								<%--                                </div>--%>
								<%--                            </div>--%>
								<%--                        </div>--%>
								<%--                        <div class="card-body">--%>
								<%--                            <div class="chart-area">--%>
								<%--                                <canvas id="myAreaChart"></canvas>--%>
								<%--                            </div>--%>
								<%--                        </div>--%>
							</div>
						</div>
						<!-- Pie Chart -->
						<!--Row-->


						<div class="col-xl-4 col-lg-5">

							<!-- Donut Chart -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">고객 자산 현황</h6>
								</div>
								<div class="card-body">
									<canvas id="clientChart"></canvas>
									<!--      <div class="chart-pie pt-4">
                                </div> -->
								</div>
							</div>
							<%--                    <div class="card mb-4">--%>
							<%--                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">--%>
							<%--                            <h6 class="m-0 font-weight-bold text-primary">고객 자산 현황</h6>--%>
							<%--                            <div class="dropdown no-arrow">--%>
							<%--                                <a class="dropdown-toggle btn btn-primary btn-sm" href="#" role="button"--%>
							<%--                                   id="dropdownMenuLink"--%>
							<%--                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
							<%--                                    Month <i class="fas fa-chevron-down"></i>--%>
							<%--                                </a>--%>
							<%--                                <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"--%>
							<%--                                     aria-labelledby="dropdownMenuLink">--%>
							<%--                                    <div class="dropdown-header">Select Periode</div>--%>
							<%--                                    <a class="dropdown-item" href="#">Today</a>--%>
							<%--                                    <a class="dropdown-item" href="#">Week</a>--%>
							<%--                                    <a class="dropdown-item active" href="#">Month</a>--%>
							<%--                                    <a class="dropdown-item" href="#">This Year</a>--%>
							<%--                                </div>--%>
							<%--                            </div>--%>
							<%--                        </div>--%>
							<%--                        <div class="card-body">--%>
							<%--                            <div class="mb-3">--%>
							<%--                                <div class="small text-gray-500">Oblong T-Shirt--%>
							<%--                                    <div class="small float-right"><b>600 of 800 Items</b></div>--%>
							<%--                                </div>--%>
							<%--                                <div class="progress" style="height: 12px;">--%>
							<%--                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 80%"--%>
							<%--                                         aria-valuenow="80"--%>
							<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
							<%--                                </div>--%>
							<%--                            </div>--%>
							<%--                            <div class="mb-3">--%>
							<%--                                <div class="small text-gray-500">Gundam 90'Editions--%>
							<%--                                    <div class="small float-right"><b>500 of 800 Items</b></div>--%>
							<%--                                </div>--%>
							<%--                                <div class="progress" style="height: 12px;">--%>
							<%--                                    <div class="progress-bar bg-success" role="progressbar" style="width: 70%"--%>
							<%--                                         aria-valuenow="70"--%>
							<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
							<%--                                </div>--%>
							<%--                            </div>--%>
							<%--                            <div class="mb-3">--%>
							<%--                                <div class="small text-gray-500">Rounded Hat--%>
							<%--                                    <div class="small float-right"><b>455 of 800 Items</b></div>--%>
							<%--                                </div>--%>
							<%--                                <div class="progress" style="height: 12px;">--%>
							<%--                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 55%"--%>
							<%--                                         aria-valuenow="55"--%>
							<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
							<%--                                </div>--%>
							<%--                            </div>--%>
							<%--                            <div class="mb-3">--%>
							<%--                                <div class="small text-gray-500">Indomie Goreng--%>
							<%--                                    <div class="small float-right"><b>400 of 800 Items</b></div>--%>
							<%--                                </div>--%>
							<%--                                <div class="progress" style="height: 12px;">--%>
							<%--                                    <div class="progress-bar bg-info" role="progressbar" style="width: 50%"--%>
							<%--                                         aria-valuenow="50"--%>
							<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
							<%--                                </div>--%>
							<%--                            </div>--%>
							<%--                            <div class="mb-3">--%>
							<%--                                <div class="small text-gray-500">Remote Control Car Racing--%>
							<%--                                    <div class="small float-right"><b>200 of 800 Items</b></div>--%>
							<%--                                </div>--%>
							<%--                                <div class="progress" style="height: 12px;">--%>
							<%--                                    <div class="progress-bar bg-success" role="progressbar" style="width: 30%"--%>
							<%--                                         aria-valuenow="30"--%>
							<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
							<%--                                </div>--%>
							<%--                            </div>--%>
							<%--                        </div>--%>
							<%--                        <div class="card-footer text-center">--%>
							<%--                            <a class="m-0 small text-primary card-link" href="#">View More <i--%>
							<%--                                    class="fas fa-chevron-right"></i></a>--%>
							<%--                        </div>--%>
							<%--                    </div>--%>
						</div>
						<!-- Invoice Example -->
						<div class="col-xl-8 col-lg-7 mb-4">
							<div class="card">
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">Invoice</h6>
									<div class="select__option" style="float: right">
										<select name="products">
											<option value="">상품 분류</option>
											<option value="">예금 상품</option>
											<option value="">채권 상품</option>
											<option value="">펀드 상품</option>
											<option value="">파생 상품</option>
											<option value="">랩 어카운트</option>
										</select>
									</div>
									<!-- <a class="m-0 float-right btn btn-danger btn-sm" href="#">View More <i
                                    class="fas fa-chevron-right"></i></a> -->
								</div>
								<div class="table-responsive">
									<table id="productList"
										class="table align-items-center table-flush">

									</table>
								</div>
								<div class="card-footer"></div>
							</div>
						</div>
						<!-- chatroom-->
							<%-- <div class="col-xl-4 col-lg-5 ">
								<div class="card">
									<div
										class="card-header py-4 bg-primary d-flex flex-row align-items-center justify-content-between">
										<i id="bubble" class="fas fa-comments fa-2x text-warning"></i>

										<h6 class="m-0 font-weight-bold text-light">${roomMaster}
											PB의 채팅 상담</h6>
									</div>
									<div>
										<input type="hidden" id="sessionId" value=""> <input
											type="hidden" id="roomNumber" value="${roomNumber}">

										<div id="chatWindow" class="chatting"></div>
										<div class="card-footer text-center">
											<div id="yourName">
												<table class="inputTable">
													<tr>
														<c:if test="${empty userVO}">
															<th>사번을 입력하세요 :</th>
														</c:if>
														<c:if test="${not empty userVO}">
															<th>계좌 비밀번호 입력 :</th>
														</c:if>
														<th><input class="checkNum" type="password"
															name="userName" id="userName"></th>
														<th>
															<button class="btn btn-sm btn-primary"
																onclick="chatName()" id="startBtn">인증하기</button>
														</th>
													</tr>
												</table>
											</div>
											<div id="yourMsg">
												<table class="inputTable">
													<tr>
														<th>메시지</th>
														<th><input style="margin-left: 15px" id="chatting"
															placeholder="  메시지를 입력하세요."></th>
														<th>
															<button class="btn btn-sm btn-primary" onclick="send()"
																id="sendBtn">보내기</button>
														</th>
													</tr>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div> --%>
					</div>
					<!--Row-->


					<!-- Modal Logout -->
					<div class="modal fade" id="logoutModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabelLogout"
						aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabelLogout">Ohh
										No!</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<p>Are you sure you want to logout?</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline-primary"
										data-dismiss="modal">Cancel</button>
									<a href="login.html" class="btn btn-primary">Logout</a>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!---Container Fluid-->
			</div>
			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto"></div>
				</div>

				<div class="container my-auto py-2">
					<div class="copyright text-center my-auto"></div>
				</div>
			</footer>
			<!-- Footer -->
		</div>
	</div>
	<script>
		var userId = {
			userId : "${userVO.userId}"
		}
		console.log(userId)

		var clientAssets;
		var deposit;
		var fund;
		var bond;
		var wrap;
		var stock;

		/* 고객 자산 정보 가져오기  */
		$
				.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/client/assets",
					data : JSON.stringify(userId),
					contentType : "application/json; charset=utf-8;",
					dataType : "json",
					success : function(res) {
						console.log(res);
						deposit = res.deposit
						fund = res.fund
						bond = res.bond
						wrapAccount = res.wrapAccount
						stock = res.stock

						var ctx = document.getElementById("clientChart")
								.getContext("2d");
						var myPie = new Chart(
								ctx,
								{
									type : 'pie',
									data : {
										labels : [ "예금", "펀드", "랩어카운트", "주식",
												"채권" ],
										datasets : [ {
											backgroundColor : [ "#00b638",
													"#efaa30", "#50c8ea",
													"#3cba9f", "#e8c3b9" ],
											data : [ deposit, fund,
													wrapAccount, stock, bond ]
										} ],
									},
									options : {
										title : {
											display : true,
											text : '${userVO.username} 고객님의 자산 보유 현황',
											fontStyle : 'bold',
											fontSize : 20
										},
										tooltips : {
											callbacks : {
												// this callback is used to create the tooltip label
												label : function(tooltipItem,
														data) {
													// get the data label and data value to display
													// convert the data value to local string so it uses a comma seperated number
													var dataLabel = data.labels[tooltipItem.index];
													var value = ': '
															+ data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index]
																	.toLocaleString();

													// make this isn't a multi-line label (e.g. [["label 1 - line 1, "line 2, ], [etc...]])
													if (Chart.helpers
															.isArray(dataLabel)) {
														// show value on first line of multiline label
														// need to clone because we are changing the value
														dataLabel = dataLabel
																.slice();
														dataLabel[0] += value;
													} else {
														dataLabel += value;
													}

													// return the text to display on the tooltip
													return dataLabel;
												}
											}
										}
									}
								});
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
					}
				});

		/* 금융상품 list 가져오기  */
		var productType = '펀드';

		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/products",
			data : productType,
			contentType : "application/json; charset=utf-8;",
			dataType : "text",
			success : function(res) {
				$("#productList").empty();
				$('#productList').append(res)
			}
		});

		var productsector

		$("select[name=products]").change(function() {
			productsector = $("select[name=products] option:selected").text();

			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/products/change",
				data : productsector,
				contentType : "application/json; charset=utf-8;",
				dataType : "text",
				success : function(res) {
					$("#productList").empty();
					$('#productList').append(res)

				}
			});

			console.log($(this).val()); //value값 가져오기
			console.log($("select[name=products] option:selected").text()); //text값 가져오기
		});
		
		
		
		var roomVO

		/* 채팅 상담 화면 불러오기 */
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/moveChatting",
			data : productsector,
			contentType : "application/json; charset=utf-8;",
			dataType : "text",
			success : function(res) {
				console.log('ajax통신 성공')
				$('#chatView').append(res)

			}
		});
	</script>


	<%--<!-- Scroll to top -->--%>
	<%--<a class="scroll-to-top rounded" href="#page-top">--%>
	<%--    <i class="fas fa-angle-up"></i>--%>
	<%--</a>--%>

	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/ruang-admin.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/vendor/chart.js/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/demo/chart-area-demo.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/demo/chart-pie-demo.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/admin/js/demo/chart-bar-demo.js"></script>
</body>

</html>