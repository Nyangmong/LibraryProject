<%@page import="Vo.boardVO"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- 이 글을 작성한 유저 혹은 admin만 이 페이지에 접근가능 --%>
<%
request.setCharacterEncoding("UTF-8");
String contextPath = request.getContextPath();

String currentUserId = (String) session.getAttribute("id");
boardVO board = (boardVO) request.getAttribute("board");
String postAuthorId = null;

if (board != null) {
    postAuthorId = board.getUserId();
} else {
    System.err.println("'board' 속성이 request에 존재하지 않습니다. 글을 찾을 수 없거나 잘못된 접근일 수 있습니다.");
}
System.out.println("현재 접속 ID: " + currentUserId);
System.out.println("글 작성자 ID: " + postAuthorId);

if (currentUserId == null || 
    (currentUserId != null && 
     (postAuthorId == null ||
      (!currentUserId.equals(postAuthorId) && !currentUserId.equals("admin"))
     )
    )
   )
{
%>
<script>
   alert("이 글에 접근할 권한이 없습니다.");
   history.back();
</script>
<%
}
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
request.setCharacterEncoding("UTF-8");
%>

<html>
<head>

<title>문의사항 글수정 - questionModifyForm.jsp</title>


<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<style>

	.wri-mod-form {
		width:100%;
		max-width: 800px;
		margin: 20px auto;
		background-color: #fff;
		border-radius: 8px;
	}

	.form-title {
		display: flex;
		justify-content: space-between;
		align-items: center;
		margin-bottom: 20px;
		padding-bottom: 15px;
		border-bottom: 2px solid #003c83;
	}

	.form-title h2 {
		margin: 0;
		color: #003c83;
		font-size: 24px;
		font-weight: bold;
	}

	input[type="text"],
	textarea {
		width: 100%;
		padding: 10px;
		margin-bottom: 15px;
		border: 1px solid #ccc;
		border-radius: 4px;
		font-size: 1rem;
		box-sizing: border-box;
		resize: vertical;
	}

    textarea {
        min-height: 500px;
    }
	input[type="button"],
	input[type="submit"],
	button[type="button"] {
    	padding: 8px 18px;
    	color: #fff;
    	cursor: pointer;
	}

	input[type="submit"] {
		background-color: #003c83;
		color: white;
	}

	input[type="submit"]:hover {
		 background-color: #002c66; 
	}
	input[type="button"] {
		background-color: #f4f4f4;
		color: #424242; 
	}
	input[type="button"]:hover {
		background-color: #f2f2f2; 
	}

	button[type="button"] { 
		background-color: #f4f4f4;
		color: #424242;
		font-size: 0.9rem;
		padding: 8px 18px;
		margin-left: 10px;
		vertical-align: middle;
		border: 1px solid #dedede;
		border-radius: 4px;
	}
    button[type="button"]:hover {
        background-color: #f2f2f2;
    }
	
	.file-group {
		margin-bottom: 15px;
		border: 1px dashed #ccc;
		padding: 15px;
		border-radius: 4px;
		background-color: #f9f9f9;
	}
    .file-group p {
        margin-top: 0;
        margin-bottom: 5px;
        font-size: 0.9rem;
        color: #555;
    }

	.file-upload-label {
		display: inline-block;
		padding: 8px 15px;
		background-color: #003c83;
		color: white;
		border-radius: 4px;
		cursor: pointer;
		transition: background-color 0.3s ease;
		margin-right: 10px;
        vertical-align: middle;
	}

	.file-upload-label:hover {
		background-color: #002c66;
	}

	.file-input {
		display: none;
	}

	.file-name {
		font-weight: bold;
		color: #555;
        vertical-align: middle;
	}

	.checkbox-group {
		margin-top: 15px;
		margin-bottom: 20px;
        padding: 10px;
        background-color: #e9ecef;
        border-radius: 4px;
        display: inline-block;
	}

	.checkbox-label {
		cursor: pointer;
        font-size: 0.95rem;
        color: #495057;
	}

	.checkbox-label input[type="checkbox"] {
		margin-right: 5px;
        vertical-align: middle;
	}

    #bannerPreview img {
        max-width: 100%;
        height: auto;
        display: block;
        margin-top: 10px;
        border: 1px solid #ddd;
        padding: 5px;
        background-color: #fff;
    }

</style>
</head>
<body>
	<section class="wri-mod-form">
		<form name="questionWriteForm" method="post" action="${contextPath}/bbs/questionModify.do" enctype="multipart/form-data">
			<div class="form-title">
				<h2>문의사항 글 수정</h2>
				<div>
					<input type="button" onclick="location.href='${contextPath}/bbs/questionInfo.do?boardId=${board.boardId}'" value="취소"/>
					<input type="submit" value="수정">
				</div>
			</div>
			
			<input type="text" name="title" placeholder="제목을 입력하세요" style="width: 100%;" value="${board.title}" onfocus="this.select()">
			
			<div class="file-group">
				<label for="file" class="file-upload-label">첨부파일 업로드</label>
						<span class="file-name" id="fileName">
							<c:choose>
            					<c:when test="${not empty board.file}">
                					${board.file}
            					</c:when>
            					<c:otherwise>
                					선택된 파일 없음
            					</c:otherwise>
        					</c:choose>
    					</span>
						<!-- 첨부파일 삭제 버튼 (초기에는 숨김) -->
						<button type="button" id="deleteFileBtn" onclick="deleteFile('file', 'fileName', 'deleteFileBtn')" style="<c:if test='${empty board.file}'>display:none;</c:if>">첨부파일 삭제</button>
    					<input type="file" name="file" id="file" class="file-input">	
			</div>
			
			<textarea name="content" rows="10" cols="50" placeholder="내용을 입력하세요" style="width: 100%;">${board.content}</textarea>
			
			<!-- 수정 대상 게시글 ID 전달 -->
			<input type="hidden" name="boardId" value="${board.boardId}">
			
			<div class="checkbox-group">
				<label for="secret" class="checkbox-label">
					<input type="checkbox" name="secret" id="secret" value="on" <c:if test="${board.secret}">checked</c:if> />
					비밀글로 설정
				</label>
			</div>
			
		</form>

	</section>
	<script>
		// 파일 삭제 함수
		function deleteFile(fileInputId, fileNameSpanId, deleteBtnId, previewId) {
			const fileInput = document.getElementById(fileInputId);
			const fileNameSpan = document.getElementById(fileNameSpanId);
			const deleteBtn = document.getElementById(deleteBtnId);
	
			// 파일 초기화
			fileInput.value = '';
			fileNameSpan.textContent = '선택된 파일 없음';
			deleteBtn.style.display = 'none';
	
		}
	
		// 파일 선택시 이름 출력 및 삭제 버튼 표시
		function setupFileNameDisplay(inputId, spanId, buttonId) {
			const input = document.getElementById(inputId);
			const span = document.getElementById(spanId);
			const button = document.getElementById(buttonId);
	
			input.addEventListener('change', function () {
				if (input.files.length > 0) {
					span.textContent = input.files[0].name;
					button.style.display = 'inline-block';
				} else {
					span.textContent = '선택된 파일 없음';
					button.style.display = 'none';
				}
			});
		}
	
		
		setupFileNameDisplay('file', 'fileName', 'deleteFileBtn');
	


	</script>
	
</body>
</html>