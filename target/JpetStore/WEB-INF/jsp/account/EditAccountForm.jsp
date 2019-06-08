'<%@ include file="../common/IncludeTop.jsp"%>
<div id="Catalog">
	<h3>User Information</h3>
	<form action="register" method="post" name="NewAccountForm">
	<table>
		<tr>
			<td>User ID:</td>
			<td>
				<input type="text" name="username" onblur="usernameIsExist()"/>
				<div id="usernameMsg"></div>
			</td>
			<td>${sessionScope.username}</td>
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

	<input type="submit" value="Save Account Information"><br/>
	<a href="listorder">My Orders</a>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="../../../js/UsernameIsExist.js"></script>
