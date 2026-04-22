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
						<form action="./create" method="post">
							<div class="row mb-3 align-items-center">
								<div class="col-sm-3 text-muted">반려동물 종류</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="misspetSort"
										placeholder="강아지(진돗개) / 고양이(코숏)">
								</div>
							</div>

							<div class="row mb-3 align-items-center">
								<div class="col-sm-3 text-muted">반려동물 이름</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="misspetName"
										placeholder="아이의 이름을 입력해주세요.">
								</div>
							</div>

							<hr>

							<div class="row mb-3 align-items-center">
								<div class="col-sm-3 text-muted">제목</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="misspetTitle"
										placeholder="글 제목을 입력해주세요">
								</div>
							</div>
							<div class="bg-light p-3 rounded mt-4">
								<label class="text-muted small mb-1 font-weight-bold">상세
									특징 (실종 장소, 특징 등)</label>
								<textarea class="form-control" name="misspetContents" rows="5"
									placeholder="실종 당시의 옷차림이나 특징을 자세히 적어주세요."></textarea>
							</div>
							
							<c:if test="${empty member}">
							<div class="row mb-3 align-items-center">
								<div class="col-sm-3 text-muted">연락처</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="misspetPn"
										placeholder="연락받으실 전화번호, 휴대폰번호를 입력해주세요.">
								</div>
							</div>
							
							
							<div class="row mb-3 align-items-center">
								<div class="col-sm-3 text-muted">이메일</div>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="misspetEmail"
										placeholder="연락받으실 이메일을 입력해주세요.">
								</div>
							</div>
							</c:if>
							

							<div class="text-center mt-4">
								<button type="submit" class="btn btn-primary px-5">등록하기</button>
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