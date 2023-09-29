<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	href="/project-gpmatching/resources/assets/css/theme.css">
<link rel="stylesheet" href="/project-gpmatching/resources/assets/css/theme.min.css">

<title>Layout | Dash Ui - Bootstrap 5 Admin Dashboard Template</title>
</head>

<body class="bg-light">
	<div id="db-wrapper" class="toggled" class="toggled">
		<!-- navbar vertical -->
		<!-- Sidebar -->
		<jsp:include page="/WEB-INF/views/modules/sidebar.jsp" />
		
		<!-- page content -->
		<div id="page-content">
			<!--  header -->
			<jsp:include page="/WEB-INF/views/modules/header.jsp" />
			<!-- Container fluid -->

			<!-- Primary Button -->
			<a href="/project-gpmatching/boardMatching/lol-write">
				<button type="button" class="btn btn-primary mb-2">LoL 매칭 게시글 쓰기</button>
			</a>
			<a href="/project-gpmatching/home">
				<button type="button" class="btn btn-primary mb-2">홈으로</button>
			</a>
					
			<div class="row mt-6">
				<div class="col-md-12 col-12">
					<!-- card  -->
					<div class="card">
						<!-- card header  -->
						<div class="card-header bg-white  py-4">
							<h4 class="mb-0">LEAGUE OF LEGENDS</h4>
						</div>
						<!-- table  -->
						<div class="table-responsive">
							<table class="table text-nowrap mb-0">
								<thead class="table-light">
									<tr>
										<th>소환사이름</th>
										<th>제목</th>
										<th>내용</th>
										<th>롤티어</th>
										<th>주포지션</th>
										<th>서렌여부</th>
										<th>선호플레이</th>
										<th>선호성별</th>
										<th>마이크사용</th>
										<th>마감여부</th>
										<th>등록일시</th>
										<th>조회수</th>
										<th>댓글</th>
									</tr>
								</thead>
				 
								<tbody>
<%-- 									<c:forEach var="matchingBoard" items="${ requestScope.matchingBoardList }">
										<tr id="tr-${ matchingBoard.boardNo }" data-title="${ matchingBoard.boardTitle }">
											<td class="align-middle">
												<div class="d-flex align-items-center">
													<div>
														<div class="icon-shape icon-md border p-4 rounded-1">
															<img src="assets/images/brand/dropbox-logo.svg" alt="">
														</div>
													</div>
													<div class="ms-3 lh-1">
														<h5 class=" mb-1">
															<a href="#" class="text-inherit">${ matchingBoard.boardTitle }</a>
														</h5>
			
													</div>
												</div>
											</td>
											<td>
											${ matchingBoard.userNo }
											</td>
											<td class="align-middle">
												<fmt:formatDate value="${ matchingBoard.regDate }" pattern="yyyy-MM-dd " />					         
											</td>
											<td class="align-middle">
												<span class="badge bg-warning">${ matchingBoard.mic }</span>
											</td>
											<td class="align-middle">
												<div class="avatar-group">
													<span class="avatar avatar-sm"> 
														<img alt="avatar" src="assets/images/avatar/avatar-1.jpg" class="rounded-circle">
													</span> 
													<span class="avatar avatar-sm"> 
														<img alt="avatar" src="assets/images/avatar/avatar-2.jpg" class="rounded-circle">
													</span> 
													<span class="avatar avatar-sm"> 
														<img alt="avatar" src="assets/images/avatar/avatar-3.jpg" class="rounded-circle">
													</span> 
													<span class="avatar avatar-sm avatar-primary"> 
														<span class="avatar-initials rounded-circle fs-6">+5</span>
													</span>
													
												</div>
											</td>
											<td class="align-middle text-dark">
												<div class="float-start me-3">${ matchingBoard.boardContent }</div>
			
											</td>
											<td>
												<!-- Varying modal -->
												<button type="button" class="btn btn-primary btn-show-comment-modal" 
														data-boardno="${ matchingBoard.boardNo }">지원하기</button>
												
											</td>
 --%>
									<c:forEach var="matchingBoard" items="${ requestScope.matchingLolList }" varStatus="vs">
										 <tr>

											<th>${ matchingLolList[vs.index].get("nickname") }</th>
											<th>${ matchingLolList[vs.index].get("boardTitle") }</th>
											<th>${ matchingLolList[vs.index].get("boardContent") }</th>
											<th>${ matchingLolList[vs.index].get("lolTier") }</th>
											<th>${ matchingLolList[vs.index].get("lolPosition") }</th>
											<th>${ matchingLolList[vs.index].get("lolSur") }</th>
											<th>${ matchingLolList[vs.index].get("lolPlay") }</th>
											<th>${ matchingLolList[vs.index].get("preferGender") }</th>
											<th>${ matchingLolList[vs.index].get("mic") }</th>
											<th>${ matchingLolList[vs.index].get("matchingClose") }</th>
											<th>${ matchingLolList[vs.index].get('regDate') }</th>
											<th>${ matchingLolList[vs.index].get("readCount") }</th>
											<th>댓글</th>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			
			<div class="modal fade" id="comment-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelOne" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="title-in-modal"></h5>
							<button type="button" class="btn-close"
								data-bs-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<form id="commentform" action="write-comment" method="post">
							<input type="hidden" id="boardno-in-modal" name="boardNo" value="${ matchingBoard.boardNo }" /> 
							<div class="modal-body">
			
								<div class="mb-3">
									<label for="recipient-name" class="col-form-label">닉네임 : ${ loginuser.nickname }</label> 
									<input type="text" class="form-control" id="recipient-name-in-modal" 
									placeholder="게임 아이디를 입력해주세요">
								</div>
								<div class="mb-3">
									<label for="message-text" class="col-form-label">파티장에게 알려줄 내용</label>
									<textarea name="mCommentContent" class="form-control" id="message-text-in-modal"></textarea>
								</div>
			
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">닫기</button>
								<button type="submit" class="btn btn-primary">등록</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!--  댓글 select 기능 임시로 구현함 -->
			<div class="modal fade" id="commentlist-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelOne" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="title-in-modal"></h5>
							<button type="button" class="btn-close"
								data-bs-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Scripts -->
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

	<script>
	
	$(function() {
		$('.btn-show-comment-modal').on("click", function(event) {
			const boardNo = $(this).data('boardno');
			const currentTr = $('#tr-' + boardNo);
			$('#title-in-modal').text(currentTr.data('title'));
			$('#boardno-in-modal').val(boardNo);
			$('#comment-modal').modal('show');
		});
	});
	
	$(function() {
		$('.btn-show-commentlist-modal').on("click", function(event) {
			const boardNo = $(this).data('boardno');
			const currentTr = $('#tr-' + boardNo);
			$('#title-in-modal').text(currentTr.data('title'));
			$('#boardno-in-modal').val(boardNo);
			$('#commentlist-modal').modal('show');
		});
	});
	
	</script>
</body>

</html>