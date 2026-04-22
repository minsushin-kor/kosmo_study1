<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
                    <h1 class="h3 mb-4 text-gray-800">로그인 Page</h1>
                    
                    <form action="./login" method="post" enctype="multipart/form-data">
					  <div class="form-group">
					    <label for="memberId">아이디를 입력해주세요.</label>
					    <input type="text" class="form-control" id="memberId" name="memberId">
					  </div>
					  <div class="form-group">
					    <label for="memberPw">Password</label>
					    <input type="password" class="form-control" id="memberPw" name="memberPw">
					  </div>
					  
					  <button type="submit" class="btn btn-primary">로그인</button>
					</form>
             
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