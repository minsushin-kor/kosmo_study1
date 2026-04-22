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
					<h1 class="h3 mb-4 text-gray-800">회원가입 Page</h1>

					<div>
					<form action="./join" method="post" enctype="multipart/form-data">
						
						<div class="form-group col-md-6">
							<label for="memberId">아이디를 입력해주세요.</label> 
							<input type="text" name="memberId" class="form-control" id="memberId">
						</div>
						
						<div class="form-group col-md-6">
							<label for="password">Password</label> 
							<input type="password" name="memberPw" class="form-control" id="memberPw">
						</div>
						
						<div class="form-group col-md-12">
							<label for="memberName">이름을 입력해주세요.</label> 
							<input type="text" class="form-control" id="memberName" name="memberName">
						</div>
						
						<div class="form-group col-md-12">
							<label for="memberPn">연락처를 입력해주세요.</label> 
							<input type="text" class="form-control" id="memberPn" name ="memberPn">
						</div>
						
						<div class="form-group col-md-12">
							<label for="email">이메일을 입력해주세요.</label> 
							<input type="email" class="form-control" id="memberEmail" name ="memberEmail">
						</div>					
							
 						<div class="form-group col-md-12">
   							<label>프로필 사진 등록</label>
   							<input type="file" class="form-control-file" name="attach">
 						</div>
							
						</div>
						<div class="col-md">
							<button type="submit" class="btn btn-primary">회원 가입</button>
							<a href="/" class="btn btn-danger">등록 취소</a>
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