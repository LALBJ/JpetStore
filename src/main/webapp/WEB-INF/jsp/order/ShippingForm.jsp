<%--
  Created by IntelliJ IDEA.
  User: TR
  Date: 2018/12/13
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<div id="Catalog"><stripes:form
        beanclass="org.mybatis.jpetstore.web.actions.OrderActionBean">

    <table>
        <tr>
            <th colspan=2>Shipping Address</th>
        </tr>

        <tr>
            <td>First name:</td>
            <td><stripes:text name="order.shipToFirstName" /></td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td><stripes:text name="order.shipToLastName" /></td>
        </tr>
        <tr>
            <td>Address 1:</td>
            <td><stripes:text size="40" name="order.shipAddress1" /></td>
        </tr>
        <tr>
            <td>Address 2:</td>
            <td><stripes:text size="40" name="order.shipAddress2" /></td>
        </tr>
        <tr>
            <td>City:</td>
            <td><stripes:text name="order.shipCity" /></td>
        </tr>
        <tr>
            <td>State:</td>
            <td><stripes:text size="4" name="order.shipState" /></td>
        </tr>
        <tr>
            <td>Zip:</td>
            <td><stripes:text size="10" name="order.shipZip" /></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><stripes:text size="15" name="order.shipCountry" /></td>
        </tr>


    </table>

    <stripes:submit name="newOrder" value="Continue" />

</stripes:form></div>

<%@ include file="../common/IncludeBottom.jsp"%>
