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
					<h1 class="h3 mb-4 text-gray-800">실종 반려동물 정보</h1>

					<div class="row">
						<c:forEach items="${list}" var="d">
							<div class="col-xl-4 col-md-6 mb-4">
								<div class="card shadow h-100">
									<img src="/files/misspet/${d.misspetFileDTO[0].fileName}"
										class="card-img-top" style="height: 200px; object-fit: cover;"
										onerror="this.onerror=null; this.src='/images/no-image.png';">
									<div class="card-body">
										<h5 class="card-title font-weight-bold text-primary">${d.misspetTitle}</h5>
										<p class="card-text mb-1 small text-muted">종류 :
											${d.misspetSort}</p>
										<p class="card-text mb-3 small text-muted">이름 :
											${d.misspetName}</p>
										<a href="./detail?misspetNum=${d.misspetNum}"
											class="btn btn-outline-primary btn-block">자세히 보기</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center mt-4">
							<li class="page-item"><a class="page-link"
								href="./list?page=1">1</a></li>
							<li class="page-item"><a class="page-link"
								href="./list?page=2">2</a></li>
							<li class="page-item"><a class="page-link"
								href="./list?page=3">3</a></li>
						</ul>
					</nav>

					<div class="d-flex justify-content-end mt-4 mb-5">
						<a href="./create" class="btn btn-warning px-4">글 작성하기</a>
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