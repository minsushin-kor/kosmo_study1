<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/head_css.jsp"></c:import>
</head>
<body id="page-top">

	<!-- Begin Wrapper -->
	<div id="wrapper">
		<c:import url="/WEB-INF/views/temp/sidebar.jsp"></c:import>

		<!-- Begin Content-Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Begin Page Content -->
			<div id="content">
				<c:import url="/WEB-INF/views/temp/topbar.jsp"></c:import>

				<!-- Begin Page container-fluid -->
				<div class="container-fluid">

					<!-- 수정 부분 -->
					<h1 class="h3 mb-4 text-gray-800">실종 반려동물 상세정보</h1>


					<div id="carouselExampleCaptions" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carouselExampleCaptions" data-slide-to="0"
								class="active"></li>
							<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
							<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="..." class="d-block w-100" alt="...">
								<div class="carousel-caption d-none d-md-block">
									<h5>First slide label</h5>
									<p>Some representative placeholder content for the first
										slide.</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="..." class="d-block w-100" alt="...">
								<div class="carousel-caption d-none d-md-block">
									<h5>Second slide label</h5>
									<p>Some representative placeholder content for the second
										slide.</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="..." class="d-block w-100" alt="...">
								<div class="carousel-caption d-none d-md-block">
									<h5>Third slide label</h5>
									<p>Some representative placeholder content for the third
										slide.</p>
								</div>
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-target="#carouselExampleCaptions" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-target="#carouselExampleCaptions" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</button>
					</div>

					<div class="card shadow p-4">
						<h5 class="font-weight-bold text-primary mb-4">🐾 반려동물 정보</h5>

						<div class="row mb-3">
							<div class="col-sm-3 text-muted">반려동물 종류</div>
							<div class="col-sm-9 font-weight-bold">${dto.misspetSort}</div>
						</div>

						<div class="row mb-3">
							<div class="col-sm-3 text-muted">반려동물 이름</div>
							<div class="col-sm-9 font-weight-bold">${dto.misspetName}</div>
						</div>

						<hr>
						<div class="row mb-3">
							<div class="col-sm-3 text-muted">연락처</div>
							<div class="col-sm-9 text-primary">${dto.misspetPn}</div>
						</div>

						<div class="row mb-3">
							<div class="col-sm-3 text-muted">이메일</div>
							<div class="col-sm-9">${dto.misspetEmail}</div>
						</div>

						<div class="bg-light p-3 rounded mt-4">
							<p class="text-muted small mb-1">상세 내용</p>
							<div>${dto.misspetContents}</div>
						</div>
					</div>

					<c:if test="${member.memberNum == dto.memberNum}">
					<div class="row mb-3">
						<a href="./update?misspetNum=${dto.misspetNum}"
							class="btn btn-primary">수정하기</a>
						<form action="./delete" method="post" style="display: inline;">
							<input type="hidden" name="misspetNum" value="${dto.misspetNum}">
							<button type="submit" class="btn btn-danger"
								onclick="return confirm('정말 삭제하시겠습니까?')">삭제하기</button>
						</form>
					</div>
					</c:if>


				</div>
				<!-- End Page container-fluid -->
			</div>
			<!-- End Page Content -->
			<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>
		</div>
		<!-- End Content-Wrapper -->
	</div>
	<!-- End Wrapper -->

	<c:import url="/WEB-INF/views/temp/footer_script.jsp"></c:import>
</body>
</html>