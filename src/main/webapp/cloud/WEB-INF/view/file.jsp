<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/cloud/css/file.css" rel='stylesheet' type='text/css' />
<link href="/cloud/css/buttons.css" rel='stylesheet' type='text/css' />
<title>文件目录</title>
</head>
<body>
	<script>
		var sysMsg = "${sysMsg}";
		if(sysMsg != "")
			alert(sysMsg);
	</script>

	<table>
		<tr>
			<th></th>
			<th>文件名</th>
			<th>文件类型</th>
			<th>大小</th>
			<th>上传时间</th>
			<th>权限</th>
			<th>删除</th>
		</tr>
		<c:if test="${requestScope.fatherFolder.id != null }">
			<tr>
				<td><a
					href="/cloud/main/file?dir=${requestScope.fatherFolder.id }"><img
						src="/cloud/images/folder.png" alt="folder" /></a></td>
				<td>上级文件夹</td>
				<td>文件夹</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</c:if>
		<c:forEach var="list" items="${requestScope.folderList }">
			<tr>
				<td><a href="/cloud/main/file?dir=${list.id}"><img
						src="/cloud/images/folder.png" alt="folder" /></a></td>
				<td>${list.name }</td>
				<td>文件夹</td>
				<td></td>
				<td></td>
				<td></td>
				<td><a
					href="/cloud/main/deleteDir?folder=${list.id}&fatherFolder=${requestScope.fatherFolder.id}">
						<img src="/cloud/images/delete.png" alt="delete" />
				</a></td>
			<tr>
		</c:forEach>
		<c:forEach var="list" items="${requestScope.fileList }">
			<tr>
				<td><a
					href="download?file=${list.id }&folder=${requestScope.folderId}"><img
						src="/cloud/images/download.png" alt="download" /></a></td>
				<td>${list.name}</td>
				<td>${list.fileType }</td>
				<td>${list.size }KB</td>
				<td>${list.uploadTime }</td>
				<c:if test="${list.status == 0}">
					<td><a
						href="setAccess?file=${list.id }&folder=${requestScope.folderId}"><img
							src="/cloud/images/private.png" alt="status" /></a></td>
				</c:if>
				<c:if test="${list.status == 1}">
					<td><a
						href="setAccess?file=${list.id }&folder=${requestScope.folderId}"><img
							src="/cloud/images/public.png" alt="status" /></a></td>
				</c:if>
				<td><a
					href="delete?file=${list.id }&folder=${requestScope.folderId}"><img
						src="/cloud/images/delete.png" alt="delete" /></a></td>
			</tr>
		</c:forEach>
	</table>
	<div id="fileForm">
		<div id="upload">
			<br />
			<h2>文件上传</h2>
			<form class="form-control" action="upload" method="post"
				enctype="multipart/form-data" accept-charset="utf-8">
				选择文件：<input type="file" name="dataList" multiple /><br /> <input
					type="hidden" name="path" value="${requestScope.folderId}" /> <input
					type="submit" value="          上传           "
					class="button button-3d button-primary button-rounded" />
			</form>
		</div>
		<div id="folder">
			<br />
			<h2>新建文件夹</h2>
			<form class="form-control" action="folderAdd" method="POST"
				accept-charset="utf-8">
				文件夹名：<input type="text" name="folderName" /><br /> <input
					type="hidden" name="path" value="${requestScope.folderId}" /> <input
					type="submit" value="          新建           "
					class="button button-3d button-primary button-rounded" />
			</form>
		</div>
	</div>
</body>
</html>