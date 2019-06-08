<%@ include file="../common/IncludeTop.jsp"%>

<div id="Catalog">
<form action="SignIn" method="post" onsubmit="return signonCheck()">
	<p>Please enter your username and password.</p>
	<p>Username:<input type="text" name="username" value="j2ee"><br/>
		<s:actionmessage cssStyle="color:red" />
		<s:actionerror cssStyle="color:green;" />
		<s:fielderror cssStyle="color:blue;" />
	Password:<input type="password" name="password" value="j2ee"></p>
	</a><br/>
		<span style="color: #ff6119; ">#{requestScope.msg}</span><br/>
	<input type="submit" name="signIn" value="Login">
</form>
Need a user name and password?
	<a href="register">Register Now!</a>
	</div>

<%@ include file="../common/IncludeBottom.jsp"%>
