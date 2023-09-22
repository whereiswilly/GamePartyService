<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8" />
	<title>게시판글쓰기</title>
</head>
<body class="bg-light">
<div id="db-wrapper" class="toggled">
<%--     <jsp:include page="/WEB-INF/views/modules/sidebar.jsp" />
    <div id="page-content">
	<jsp:include page="/WEB-INF/views/modules/header.jsp" /> --%>

	<div id="pageContainer">
		
		<div style="padding-top:25px;text-align:center">
		<div id="inputcontent">
		    <div id="inputmain">
		        <div class="inputsubtitle">게시글 정보</div>
		        <table>
		        	<tr>
		                <th>글번호</th>
		                <td>${requestScope.commonBoard.commonNo }</td>
		            </tr>
		            <tr>
		                <th>제목</th>
		                <td>${commonBoard.commonTitle }</td>
		            </tr>
		            <tr>
		                <th>작성자</th>
		                <td>${commonBoard.userNo }</td>
		            </tr>
		            <tr>
		                <th>작성일</th>
		                <td>
		                <fmt:formatDate value="${commonBoard.regDate }" pattern="yyyy-MM-dd" />
		                </td>
		            </tr>
		            <tr>
		                <th>조회수</th>
		                <td>${commonBoard.readCount }</td>
		            </tr>
		            <tr>
		            
<c:set var="enter" value="
" />		
		            <!-- c:set은 변수를 만들어줌. value값에 ""사이에 실제 줄바꿈 엔터를 쳐줘야함 -->
		                <th>본문</th>
		                <td>${fn:replace(commonBoard.commonContent,enter,"<br>") }</td>
		                <!--  -->
		     <!-- c:set에서 var="enter"설정을 줄바꿈으로 설정해줘서 enter칠 때마다 자동으로 <br>들어감 -->
		            </tr>
		        </table>
		        <div class="buttons">
		        	[ <a href="commonList?=pageNo=${pageNo}">목록보기</a> ]
		        	<!-- sessionScope.loginuser != null && loginuser.memberId == board.writer 같은 의미-->
		        	[ <a href="commonEdit?commonNo=${commonBoard.commonNo}&pageNo=${pageNo}">수정</a> ]
		        	[ <a href="javascript:" id="delete-board-lnk">삭제</a> ]
		        
		        </div>
		        
		        <!-- write comment area -->
		<form id="commentform" action="writeComment" method="post">
			<input type="hidden" name="commonNo" value="${ commonBoard.commonNo }" />
			<input type="hidden" name="pageNo" value="${ pageNo }" />
			<input type="hidden" name="userNo" value="${ userNo}" />
			<table style="width:800px;border:solid 1px;margin:0 auto">
				<tr>
					<td style="width:750px">	                	
						<textarea id="commentContent" name="commentContent" style="width:100%;resize: none;" rows="3"></textarea>	                    
					</td>
					<td style="width:50px;vertical-align:middle">
						<a id="write-comment-lnk" href="javascript:" style="text-decoration:none">
							댓글<br />등록
						</a>
					</td>
				</tr>                    
			</table>
		</form>
	
		<!-- end of write comment area -->
		
		<!-- comment list area -->
		<br>
	    <hr style="width:800px;margin:0 auto">
	    <br>
	    <table id="comment-list" style="width:800px;border:solid 1px;margin:0 auto">
		<c:forEach var="comment" items="${ commonBoard.boardCommentList }">				
			<tr>
				<td style="text-align:left;margin:5px;border-bottom: solid 1px;">					
					<div id="comment-view-area-${ boardComment.commentNo }">
					<c:choose>
					<c:when test="${ boardComment.deleted }">
						<br><br>
						<span style='color:gray'>삭제된 글입니다.</span>
						<br><br>
					</c:when>
					<c:otherwise>
						${ boardComment.writer } &nbsp;&nbsp; [<fmt:formatDate value="${ boardComment.regDate }" pattern="yyyy-MM-dd hh:mm:ss"/>]
					    <br /><br />
					    <span>${ fn:replace(comment.content, enter, "<br>") }</span>
						<br /><br />
						<div style='display:${ (not empty loginuser and loginuser.memberId == comment.writer) ? "block" : "none" }'>
					    	<a class="edit-comment" data-comment-no="${ boardComment.commentNo }" href="javascript:">편집</a>
							&nbsp;
							<a class="delete-comment" data-comment-no="${ boardComment.commentNo }" href="javascript:">삭제</a>
						</div>
					</c:otherwise>
					</c:choose>
					</div>	                
					<div id="comment-edit-area-${ boardComment.commentNo }" style="display: none">
						${ boardComment.userNo } &nbsp;&nbsp; [${ boardComment.regDate }]
						<br /><br />
						<form action="editComment" method="post">
						<input type="hidden" name="commentNo" value="${ boardComment.commentNo }" />
						<input type="hidden" name="commonNo" value="${ commonBoard.commonNo }" />
						<input type="hidden" name="pageNo" value="${ pageNo }" />
						<textarea name="content" style="width: 99%; resize: none" rows="3" maxlength="200">${ boardComment.commentContent }</textarea>
						</form>
						<br />
						<div>
							<a class="update-comment" data-comment-no="${boardComment.commentNo}" href="javascript:">수정</a> 
							&nbsp; 
							<a class="cancel-edit-comment" data-comment-no="${ boardComment.commentNo }" href="javascript:">취소</a>
						</div>
					</div>
			
				</td>
			</tr>
		</c:forEach>        	
		</table>
		<!-- end of comment list area -->
		    </div>
		</div>
		<br><br>
		
		
	
	</div>
	</div>
	
	<!-- 자사 웹서버에서 jquery js 파일 배포 -->
	<script src="/project-gpmatching/resources/js/jquery-3.7.1.js"></script>
	
	<!-- CDN 서버에서 jquery js 파일 배포 -->
	<!-- <script src="https://code.jquery.com/jquery-3.7.1.js"></script> -->
	
	
	<script>
	 $(function(event) {
		
		$('#delete-board-lnk').on('click', function(event) {
			const yes = confirm(${ commonBoard.commonNo } + "번 게시물을 삭제할까요?");
			if (yes) {
				location.href = 'deleteCommon/' + ${ commonBoard.commonNo } + "?pageNo=" + ${ pageNo };
			}
		});
		
		// 댓글 쓰기 이벤트 처리
		$("#write-comment-lnk").on("click", function(event) {
			$('#commentform').submit(); // <input type="submit"을 클릭한 것과 같은 효과 --> form을 submit
		});
		
		// 댓글 삭제 이벤트 처리
		$(".delete-comment").on('click', function(event) {
			const commentNo = $(this).attr("data-comment-no");			
			const yn = confirm(commentNo + "번 댓글을 삭제할까요?");
			if (yn) {
				location.href = 'delete-comment?commentNo=' + commentNo + 
											  '&boardNo=' + ${ board.boardNo } + 
											  '&pageNo=' + ${ pageNo };
			}
		});

		
		let currentEditCommentNo = null;
		
		// 편집 링크 클릭 이벤트 처리
		$(".edit-comment").on('click', function(event) {
			const commentNo = $(this).attr("data-comment-no");
			
			$('#comment-edit-area-' + commentNo).css('display', '');
			$('#comment-view-area-' + commentNo).css('display', 'none');
			
			if (currentEditCommentNo) { // 이전에 편집하던 요소의 표시 상태 변경 (복원)
				$('#comment-edit-area-' + currentEditCommentNo).css('display', 'none');
				$('#comment-view-area-' + currentEditCommentNo).css('display', '');
			}
			currentEditCommentNo = commentNo;
			
		}); // end of addEventListener

		
		// 편집 취소 링크 클릭 이벤트 처리
		$(".cancel-edit-comment").on('click', function(event) {
			const commentNo = $(this).attr("data-comment-no");
			
			$('#comment-edit-area-' + commentNo).css('display', 'none');
			$('#comment-view-area-' + commentNo).css('display', '');
			
			currentEditCommentNo = null;
			
		}); // end of addEventListener
		
		// 댓글 수정 이벤트 처리
		$(".update-comment").click(function(event) {

			// const commentNo = $(this).attr("data-comment-no");
			const commentNo = $(this).data('comment-no'); // data-속성이름="값" 으로 표현된 속성의 값 읽기
			$('#comment-edit-area-' + commentNo + ' form').submit();
			
		});

	});
	</script>

</body>
</html>