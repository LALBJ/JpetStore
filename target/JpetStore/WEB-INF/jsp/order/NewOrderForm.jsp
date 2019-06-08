<%--
  Created by IntelliJ IDEA.
  User: TR
  Date: 2018/12/13
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="../common/IncludeTop.jsp"%>

<div id="Catalog"><form action="" >

    <table>
        <tr>
            <th colspan=2>Payment Details</th>
        </tr>
        <tr>
            <td>Card Type:</td>
            <td><input type="text" size="15" name="order.cardType" value="ESA"> </td>
        </tr>
        <tr>
            <td>Card Number:</td>
            <td><input type="text" size="15" name="order.creditCard" value="99999999999"> * Use a fake
                number!</td>
        </tr>
        <tr>
            <td>Expiry Date (MM/YYYY):</td>
            <td><input type="text" size="15" name="order.expiryDate" value="2018/12/14"></td>
        </tr>
        <tr>
            <th colspan="2">Billing Address</th>
        </tr>
        <tr>
            <td>First name:</td>
            <td><input  name="order.billToFirstName" value="${sessionScope.account.firstName}"/></td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td><input  name="order.billToLastName" value="${sessionScope.account.lastName}"/></td>
        </tr>
        <tr>
            <td>Address 1:</td>
            <td><input  size="40" name="order.billAddress1" value="${sessionScope.account.address1}"/></td>
        </tr>
        <tr>
            <td>Address 2:</td>
            <td><input  size="40" name="order.billAddress2" value="${sessionScope.account.address2}"/></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><input  name="order.billCity" value="${sessionScope.account.city}"></td>
        </tr>
        <tr>
            <td>State:</td>
            <td><input  size="4" name="order.billState" value="${sessionScope.account.state}"/></td>
        </tr>
        <tr>
            <td>Zip:</td>
            <td><input  size="10" name="order.billZip" value="${sessionScope.account.zip}"/></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><input  size="15" name="order.billCountry" value="${sessionScope.account.country}"/></td>
        </tr>
        <tr>
            <th colspan=2>Shipping Address</th>
        </tr>

        <tr>
            <td>First name:</td>
            <td><input type="text" name="order.shipToFirstName" value="${sessionScope.account.firstName}"/></td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td><input type="text" name="order.shipToLastName" value="${sessionScope.account.lastName}"/></td>
        </tr>
        <tr>
            <td>Address 1:</td>
            <td><input type="text" size="40" name="order.shipAddress1" value="${sessionScope.account.address1}"/></td>
        </tr>
        <tr>
            <td>Address 2:</td>
            <td><input type="text" size="40" name="order.shipAddress2" value="${sessionScope.account.address2}"/></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><input type="text" name="order.shipCity" value="${sessionScope.account.city}"></td>
        </tr>
        <tr>
            <td>State:</td>
            <td><input type="text" size="4" name="order.shipState" value="${sessionScope.account.state}"/></td>
        </tr>
        <tr>
            <td>Zip:</td>
            <td><input type="text" size="10" name="order.shipZip" value="${sessionScope.account.zip}"/></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><input type="text" size="15" name="order.shipCountry" value="${sessionScope.account.country}"/></td>
        </tr>

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


    </table>

    <a href="/confirmorder"  class="button" >No Problem!</a>

</form>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>
