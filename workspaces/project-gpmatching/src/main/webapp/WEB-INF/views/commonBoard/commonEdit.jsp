<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Favicon icon-->
<link rel="shortcut icon" type="image/x-icon" href="/project-gpmatching/resources/assets/images/favicon/gps-ico.ico">
<!-- Theme CSS -->
<link rel="stylesheet" href="/project-gpmatching/resources/assets/css/theme.min.css">
<link rel="stylesheet" href="/project-gpmatching/resources/assets/css/theme.css">

<!-- Libs CSS -->
<link href="/project-gpmatching/resources/assets/libs/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<link href="/project-gpmatching/resources/assets/libs/dropzone/dist/dropzone.css" rel="stylesheet">
<link href="/project-gpmatching/resources/assets/libs/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet" />
<link href="/project-gpmatching/resources/assets/libs/prismjs/themes/prism-okaidia.css" rel="stylesheet">
	
<title>게시글 수정</title>

</head>

<body class="bg-dark">

	<div id="db-wrapper" class="toggled">
		<!-- navbar vertical -->
		<!-- Sidebar -->
		<jsp:include page="/WEB-INF/views/modules/sidebar.jsp" />
		<!-- page content -->
		<div id="page-content">
		<!--  header -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp" />

		
<form action="commonEdit" method="post" enctype="multipart/form-data">
	<input type="hidden" name="commonNo" value="${commonBoard.commonNo }">
	<input type="hidden" name="pageNo" value="${pageNo }">

	<!-- title -->
	<div class="mb-3 txt-box">
	  <label class="form-label" for="textInput">제목</label>
	  <input type="text" name="commonTitle" id="commonTitle" class="form-control" value="${commonBoard.commonTitle }">
	
	</div>
	
	<!-- attach -->
	<div>
		<c:forEach var="attach" items="${ commonBoard.boardAttachList }">
        	${ attach.userFilename } [<a href="delete-attach?boardAttachNo=${attach.boardAttachNo}">삭제</a>]<br>
		</c:forEach>
		
		<!-- attach file -->
	  <div class="mb-3 txt-box">
		 <input type="file" name="attach" id="attach" class="form-control">
	  </div>
	</div>
	
	<!-- content -->
	 <div class="mb-3 txt-box">
	   <label for="textarea-input" class="form-label">본문</label>
	   <textarea class="form-control" name="commonContent" id="commonContent" rows="5">${commonBoard.commonContent }</textarea>
	 </div>
	 
	<!-- submit&reset -->
    <div class="btn-center">
			<button type="submit" class="btn btn-primary mb-2">확인</button>
		<a href="commonDetail?commonNo=${commonBoard.commonNo}&pageNo=${pageNo}">
			<button type="button" id="btnCancel" class="btn btn-secondary mb-2">취소</button>
		</a>
	</div>
</form>
</div>

<!-- Scripts -->
<script>
		window.addEventListener("load", function(event) { // 브라우저가 현재 화면을 모두 처리한 후 호출하는 함수 등록	

			const btnCancel = document.querySelector("#btnCancel"); // id="btnCancel"인 요소 찾기
			btnCancel.addEventListener("click", function(event) {

				location.href = "commonList"; // 브라우저의 주소 입력기에 주소를 입력하는 것과 같은 효과 ( 이동 )
			});
		});
	</script>
<!-- Libs JS -->
<script src="/project-gpmatching/resources/assets/libs/jquery/dist/jquery.min.js"></script>
<script src="/project-gpmatching/resources/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="/project-gpmatching/resources/assets/libs/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="/project-gpmatching/resources/assets/libs/feather-icons/dist/feather.min.js"></script>
<script src="/project-gpmatching/resources/assets/libs/prismjs/prism.js"></script>
<script src="/project-gpmatching/resources/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
<script src="/project-gpmatching/resources/assets/libs/dropzone/dist/min/dropzone.min.js"></script>
<script src="/project-gpmatching/resources/assets/libs/prismjs/plugins/toolbar/prism-toolbar.min.js"></script>
<script src="/project-gpmatching/resources/assets/libs/prismjs/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>


<!-- Theme JS -->
<script src="/project-gpmatching/resources/assets/js/theme.min.js"></script>
<script src="/project-gpmatching/resources/assets/js/common.js"></script>

</body>
</html>