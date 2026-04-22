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
					<div class="container-fluid px-lg-5">
					<h1 class="h3 mb-4 text-gray-800">실종 반려동물 상세정보</h1>


					<c:if test="${not empty dto.misspetFileDTO}">
						<div id="carouselExampleCaptions" class="carousel slide mb-4"
							data-ride="carousel" data-interval="false">

							<ol class="carousel-indicators">
								<c:forEach items="${dto.misspetFileDTO}" varStatus="status">
									<li data-target="#carouselExampleCaptions"
										data-slide-to="${status.index}"
										class="${status.first ? 'active' : ''}"></li>
								</c:forEach>
							</ol>

							<div class="carousel-inner">
								<c:forEach items="${dto.misspetFileDTO}" var="file"
									varStatus="status">
									<div class="carousel-item ${status.first ? 'active' : ''}">
										<img src="/files/misspet/${file.fileName}"
											class="d-block w-100" alt="${dto.misspetName}"
											style="height: 500px; object-fit: contain; background-color: #f8f9fc;">
									</div>
								</c:forEach>
								
							</div>

							<button class="carousel-control-prev" type="button"
								data-target="#carouselExampleCaptions" data-slide="prev" hidden>
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-target="#carouselExampleCaptions" data-slide="next" hidden>
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</button>
						</div>
					</c:if>

					<button class="carousel-control-prev" type="button"
						data-target="#carouselExampleCaptions" data-slide="prev" hidden>
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-target="#carouselExampleCaptions" data-slide="next" hidden>
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
					<div class="d-flex justify-content-end mt-4 mb-5">
						<a href="./update?misspetNum=${dto.misspetNum}"
							class="btn btn-primary mr-2"> <i class="fas fa-edit"></i>
							수정하기
						</a>

						<form action="./delete" method="post" style="display: inline;">
							<input type="hidden" name="misspetNum" value="${dto.misspetNum}">
							<button type="submit" class="btn btn-danger"
								onclick="return confirm('정말 삭제하시겠습니까?')">
								<i class="fas fa-trash"></i> 삭제하기
							</button>
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