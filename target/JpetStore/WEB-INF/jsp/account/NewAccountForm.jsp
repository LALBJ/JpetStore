<%@ include file="../common/IncludeTop.jsp"%>

<div id="Catalog">
	<form action="regist?codeFromWhere=refresh" method="post" name="NewAccountForm">
	<h3>User Information</h3>

	<table>
		<tr>
			<td>User ID:</td>
			<td>
                <input type="text" name="username" onblur="usernameIsExist()"/>
				<div id="usernameMsg"></div>
			</td>
		</tr>
		<tr>
			<td>New password:</td>
			<td>
				<input type="password" name="password">
			</td>
		</tr>
		<tr>
			<td>Repeat password:</td>
			<td>
				<input type="password" name="repeatedPassword">
			</td>
		</tr>
	</table>

	<%@ include file="IncludeAccountFields.jsp"%>
		Enter the code:<input type="text" name="code" style="width: 80px;"/>
		<a href="regist?codeFromWhere=refreshNewAccountForm" onclick="changeImg()">
			<img id="imgObj" alt="验证码" src="${pageContext.request.contextPath}/getCode">
		</a><br/>
		<c:if test="${sessionScope.showWoringNew != null}" >
			<span style="color: #ff6119; ">${sessionScope.showWoringNew}</span><br/>
		</c:if>
	<input type="submit" name="newAccount" value="Save Account Information">
	</form>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/UsernameIsExist.js"></script>