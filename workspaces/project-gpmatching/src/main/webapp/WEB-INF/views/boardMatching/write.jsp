<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">



<!-- Favicon icon-->
<link rel="shortcut icon" type="image/x-icon"
	href="/project-gpmatching/resources/assets/images/favicon/favicon.ico">

<!-- Libs CSS -->


<link
	href="/project-gpmatching/resources/assets/libs/bootstrap-icons/font/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="/project-gpmatching/resources/assets/libs/dropzone/dist/dropzone.css"
	rel="stylesheet">
<link
	href="/project-gpmatching/resources/assets/libs/@mdi/font/css/materialdesignicons.min.css"
	rel="stylesheet" />
<link
	href="/project-gpmatching/resources/assets/libs/prismjs/themes/prism-okaidia.css"
	rel="stylesheet">








<!-- Theme CSS -->
<link rel="stylesheet"
	href="/project-gpmatching/resources/assets/css/theme.min.css">
<title>Layout | Dash Ui - Bootstrap 5 Admin Dashboard Template</title>
</head>

<body class="bg-light">
	<div id="db-wrapper">
		<!-- navbar vertical -->
		<!-- Sidebar -->
		<jsp:include page="/WEB-INF/views/modules/sidebar.jsp" />
		<!--  header -->
		<jsp:include page="/WEB-INF/views/modules/header.jsp" />
		<!-- page content -->

		<div id="page-content">
			
			
			<!-- Container fluid -->

			<a href="/project-gpmatching/boardMatching/write">게시글 쓰기</a> <br>
			<br>
			<!-- Input -->
			<form action="write" method="post">
				<div class="mb-3">
					<label class="form-label" for="textInput">제목</label>
					<input name="boardTitle" type="text" id="textInput" class="form-control" 
							placeholder="시간은 꼭 포함해서 작성해주세요">
				</div>
				<!-- Select Option -->
				<div class="mb-3">
					<label class="form-label" for="selectOne">티어<span
						class="text-secondary">(현재 티어)</span></label> <select class="form-select"
						aria-label="Default select example">
						<option selected>티어를 선택하세요</option>
						<option value="1">브론즈</option>
						<option value="2">실버</option>
						<option value="3">골드</option>
					</select>
				</div>
				<!-- Textarea -->
				<div class="mb-3">
					<label for="textarea-input" class="form-label">내용</label>
					<textarea name="boardContent" class="form-control" id="textarea-input" rows="5"></textarea>
				</div>
				<!-- Checks -->
				<div class="form-check">
					<input name="mic" class="form-check-input" type="checkbox" value="checked"
						id="flexCheckDefault"> <label class="form-check-label"
						for="flexCheckDefault"> 마이크 사용 </label>
				</div>
				<!-- radio-->
				<br>
				<div class="form-check">
					<input class="form-check-input" type="radio" value=0
						name="preferGender" id="flexRadioDefault1" checked> <label
						class="form-check-label" for="flexRadioDefault1"> 남자 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" value=1
						name="preferGender" id="flexRadioDefault2"> <label
						class="form-check-label" for="flexRadioDefault2"> 여자 </label>
				</div>
				<br>
				<!-- Primary Button -->
				<button type="submit" class="btn btn-primary mb-2">등록</button>
				<!-- Danger Button -->
				<button type="button" id="btnCancel" class="btn btn-danger mb-2">취소</button>

			</form>
		</div>
		<!-- Scripts -->
		<script>
			window.addEventListener("load", function(event) { // 브라우저가 현재 화면을 모두 처리한 후 호출하는 함수 등록	

				const btnCancel = document.querySelector("#btnCancel"); // id="btnCancel"인 요소 찾기
				btnCancel.addEventListener("click", function(event) {

					location.href = "lol-list"; // 브라우저의 주소 입력기에 주소를 입력하는 것과 같은 효과 ( 이동 )
				});
			});
		</script>


		<!-- Libs JS -->
		<script
			src="/project-gpmatching/resources/assets/libs/jquery/dist/jquery.min.js"></script>
		<script
			src="/project-gpmatching/resources/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
		<script
			src="/project-gpmatching/resources/assets/libs/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		<script
			src="/project-gpmatching/resources/assets/libs/feather-icons/dist/feather.min.js"></script>
		<script
			src="/project-gpmatching/resources/assets/libs/prismjs/prism.js"></script>
		<script
			src="/project-gpmatching/resources/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
		<script
			src="/project-gpmatching/resources/assets/libs/dropzone/dist/min/dropzone.min.js"></script>
		<script
			src="/project-gpmatching/resources/assets/libs/prismjs/plugins/toolbar/prism-toolbar.min.js"></script>
		<script
			src="/project-gpmatching/resources/assets/libs/prismjs/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>




		<!-- Theme JS -->
		<script src="/project-gpmatching/resources/assets/js/theme.min.js"></script>
</body>

</html>