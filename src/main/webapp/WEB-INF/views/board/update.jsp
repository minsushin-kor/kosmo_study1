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
					<div class="card shadow p-4">
						<h5 class="font-weight-bold text-primary mb-4">🐾 실종 반려동물 등록</h5>
						<form action="./update" method="post" enctype="multipart/form-data">
							<input type="hidden" name="misspetNum" value="${dto.misspetNum}">
							<div class="row mb-3 align-items-center">
								<div class="col-sm-3 text-muted">반려동물 종류</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="misspetSort"
										value="${dto.misspetSort}">
								</div>
							</div>

							<div class="row mb-3 align-items-center">
								<div class="col-sm-3 text-muted">반려동물 이름</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="misspetName" value="${dto.misspetName}">
								</div>
							</div>

							<hr>

							<div class="row mb-3 align-items-center">
								<div class="col-sm-3 text-muted">제목</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="misspetTitle" value="${dto.misspetTitle}">
								</div>
							</div>
							<div class="bg-light p-3 rounded mt-4">
								<label class="text-muted small mb-1 font-weight-bold">상세특징 (실종 장소, 특징 등)</label>
								<textarea class="form-control" name="misspetContents" rows="5">${dto.misspetContents}</textarea>
							</div>
							
							<div class="row mb-3">
								<div class="col-sm-3 text-muted">반려동물 사진 등록 (최대 3장)</div>
								<div class="col-sm-9">
									<div class="mb-2">
										<input type="file" class="form-control-file" name="attach">
									</div>
									<div class="mb-2">
										<input type="file" class="form-control-file" name="attach">
									</div>
									<div class="mb-2">
										<input type="file" class="form-control-file" name="attach">
									</div>
								</div>
							</div>
							

							<div class="text-center mt-4">
								<button type="submit" class="btn btn-primary px-5">수정하기</button>
								<a href="./list" class="btn btn-danger px-5">취소하기</a>
							</div>
						</form>
					</div>

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