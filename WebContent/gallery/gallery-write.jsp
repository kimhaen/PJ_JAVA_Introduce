<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

   
<div class="contain">
	<div class="sub-topcontent">
		<h2 class="sub-title">maron's photo</h2>
	</div>
	<div class="write-form">

		<table summery="갤러리 글쓰기 테이블 입니다">
			<caption class="readonly">갤러리 입력폼</caption>
			<colspan>
				<col width="20%">
				<col width="80%">
			</colspan>
			<tbody>
				<form name="my" method="post" action="" enctype="multipart/form-data" onsubmit="return formcheck();">
						<tr>
						<th>일시</th>
						<td><label for ="years"> </label>
						<select id="years" name="years" size="1">
						<option value="2019"> 2019 ~  </option>
						<option value="2018"> 2018 </option>
						<option value="2017"> 2017 </option>
						<option value="2016"> 2016 </option>
						<option value="before2016"> ~ 2016 </option>
						</select>
						</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="subject"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="contents"></textarea></td>
					</tr>
				 	<tr>
						<th>작성자</th>
						<td><input type="text" name="name" value="ADMIN"></td>
					</tr> 
					<tr>
						<th>첨부</th>
						<td><input type="file" name="filename"></td>
					</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="전송" class="btn-write" onclick="onSubmit()">&nbsp;&nbsp;&nbsp;
						<input type="button" value="목록" class="btn-reset" onclick="javascript:location.href='gallery.do'">
					</td>
					</tr>
				</form>
			</tbody>
			
		</table>	
	</div>
</div>
<script>

	function onSubmit(){
		if(my.subject.value==""){
			alert("제목을 입력해주세요");
			my.subject.focus();
			return;
		}else {
			my.subject.focus();
		}
		if(my.contents.value==""){
			alert("내용을 입력해주세요");
			my.contents.focus();
			return;
		}else {
			my.filename.focus();
		}
		if(my.name.value==""){
			alert("작성자를 입력해주세요");
			my.name.focus();
			return;
		}else {
			my.name.focus();
		}
		if(my.filename.value==""){
			alert("파일을 첨부해주세요");
			my.filename.focus();
			return;
		}else {
			my.filename.focus();
		}
		my.action= "gallerywrite.do";
		my.submit();
	}

</script>
<%@ include file="../footer.jsp"%>