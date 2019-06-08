<%--
  Created by IntelliJ IDEA.
  User: TR
  Date: 2018/12/13
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="../common/IncludeTop.jsp"%>

<h2>My Orders</h2>

<table>

    <tr>
        <td><b>Item ID</b></td>
        <td><b>Product ID</b></td>
        <td><b>Quantity</b></td>
        <td><b>List Price</b></td>
        <td><b>Total Cost</b></td>
    </tr>

    <c:forEach var="cartItem" items="${sessionScope.cart.cartItemList}">
        <tr>
            <td>
                    ${cartItem.item.itemId}
            </td>
            <td>${cartItem.item.product.productId}</td>
            <td>${cartItem.quantity}</td>
            <td><fmt:formatNumber value="${cartItem.item.listPrice}"
                                  pattern="$#,##0.00" /></td>
            <td><fmt:formatNumber value="${cartItem.total}"
                                  pattern="$#,##0.00" /></td>
        </tr>
    </c:forEach>
</table>

<%@ include file="../common/IncludeBottom.jsp"%>
