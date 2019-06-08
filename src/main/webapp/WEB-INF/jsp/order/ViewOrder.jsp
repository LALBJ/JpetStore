<%--
  Created by IntelliJ IDEA.
  User: TR
  Date: 2018/12/13
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="../common/IncludeTop.jsp"%>

<div id="BackLink">
    <a href="viewCategory?categoryId=${sessionScope.product.categoryId}">Return to ${sessionScope.product.categoryId}</a>
</div>

<div id="Catalog"><form action="" >

    <table>
        <tr>
            <th align="center" colspan="2">Order #${sessionScope.order.orderId}
                <fmt:formatDate value="${sessionScope.order.orderDate}"
                                pattern="yyyy/MM/dd hh:mm:ss" /></th>
        </tr>
        <tr>
            <th colspan="2">Payment Details</th>
        </tr>
        <tr>
            <td>Card Type:</td>
            <td><input  name="order.shipToCardType" value="ESA"/></td>
        </tr>
        <tr>
            <td>Card Number:</td>
            <td><input  name="order.shipToCardNumber" value="99999999999"/> * Fake
                number!</td>
        </tr>
        <tr>
            <td>Expiry Date (MM/YYYY):</td>
            <td><input  name="order.shipToFirstName" value="12/14"/></td>
        </tr>
        <tr>
            <th colspan="2">Billing Address</th>
        </tr>
        <tr>
            <td>First name:</td>
            <td><input  name="order.shipToFirstName" readonly="readonly"value="${sessionScope.account.firstName}"/></td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td><input  name="order.shipToLastName" readonly="readonly" value="${sessionScope.account.lastName}"/></td>
        </tr>
        <tr>
            <td>Address 1:</td>
            <td><input  size="40" name="order.shipAddress1" value="${sessionScope.account.address1}"/></td>
        </tr>
        <tr>
            <td>Address 2:</td>
            <td><input  size="40" name="order.shipAddress2" value="${sessionScope.account.address2}"/></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><input  name="order.shipCity" value="${sessionScope.account.city}"></td>
        </tr>
        <tr>
            <td>State:</td>
            <td><input  size="4" name="order.shipState" value="${sessionScope.account.state}"/></td>
        </tr>
        <tr>
            <td>Zip:</td>
            <td><input  size="10" name="order.shipZip" value="${sessionScope.account.zip}"/></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><input  size="15" name="order.shipCountry" value="${sessionScope.account.country}"/></td>
        </tr>
        <tr>
            <th colspan="2">Shipping Address</th>
        </tr>
        <tr>
            <td>First name:</td>
            <td><input  name="order.shipToFirstName" value="${sessionScope.account.firstName}"/></td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td><input  name="order.shipToLastName" value="${sessionScope.account.lastName}"/></td>
        </tr>
        <tr>
            <td>Address 1:</td>
            <td><input  size="40" name="order.shipAddress1" value="${sessionScope.account.address1}"/></td>
        </tr>
        <tr>
            <td>Address 2:</td>
            <td><input  size="40" name="order.shipAddress2" value="${sessionScope.account.address2}"/></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><input  name="order.shipCity" value="${sessionScope.account.city}"></td>
        </tr>
        <tr>
            <td>State:</td>
            <td><input  size="4" name="order.shipState" value="${sessionScope.account.state}"/></td>
        </tr>
        <tr>
            <td>Zip:</td>
            <td><input  size="10" name="order.shipZip" value="${sessionScope.account.zip}"/></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><input type="text" size="15" name="order.shipCountry" value="${sessionScope.account.country}"/></td>
        </tr>
        <tr>
            <td colspan="2">Status: <c:out value="${sessionScope.order.status}" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <table>

                    <tr>
                        <td><b>Item ID</b></td>
                        <td><b>Product ID</b></td>
                        <td><b>Description</b></td>
                        <td><b>In Stock?</b></td>
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
                            <td>${cartItem.item.attribute1} ${cartItem.item.attribute2}
                                    ${cartItem.item.attribute3} ${cartItem.item.attribute4}
                                    ${cartItem.item.attribute5} ${cartItem.item.product.name}</td>
                            <td>${cartItem.inStock}</td>
                            <td>${cartItem.quantity}</td>
                            <td><fmt:formatNumber value="${cartItem.item.listPrice}"
                                                  pattern="$#,##0.00" /></td>
                            <td><fmt:formatNumber value="${cartItem.total}"
                                                  pattern="$#,##0.00" /></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="7">Sub Total: <fmt:formatNumber
                                value="${sessionScope.cart.subTotal}" pattern="$#,##0.00" /></td>
                    </tr>
                </table>
            </td>
        </tr>

    </table>
    <a href="listorder" class="button">Continue</a>

</div>

<%@ include file="../common/IncludeBottom.jsp"%>