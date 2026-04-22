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
					<h1 class="h3 mb-4 text-gray-800">실종 반려동물 정보</h1>
					<c:forEach items="${list}" var="d">
						<div class="card" style="width: 18rem;">
							<img src="..." class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">${d.misspetTitle}</h5>
								<p class="card-text">종류 : ${d.misspetSort}</p>
								<p class="card-text">이름 : ${d.misspetName}</p>
								<a href="./detail?misspetNum=${d.misspetNum}" class="btn btn-primary">자세히 보기</a>
							</div>

						</div>
					</c:forEach>
					
					<div class="mt-4 mb-5">
       					<a href="./create" class="btn btn-warning">글 작성하기</a>
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