<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink">
    <a href="main">Return to Main Menu</a>
</div>

<table>
<tr>
    <th><b>User ID</b></th>
    <th><b>Operate</b></th>
    <th><b>Date</b></th>
</tr>

<c:forEach var="Log" items="${sessionScope.logList}">
    <tr>
    <td>${Log.username}</td>
    <td>${Log.operate}</td>
    <td>${Log.date}</td>
    </tr>
    </c:forEach>
</table>
</div>
<%@ include file="../common/IncludeBottom.jsp"%>