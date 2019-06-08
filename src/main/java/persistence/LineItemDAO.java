package persistence;



import domain.LineItem;

import java.util.List;

public interface LineItemDAO {
    List<LineItem> getLineItemsByOrderId(int orderId);
    String getLineItemsByOrderIdString = "SELECT ORDERID,LINENUM AS lineNumber,ITEMID,QUANTITY, "
            + "UNITPRICE FROM LINEITEM WHERE ORDERID = ?";
    void insertLineItem(LineItem lineItem);
    String insertLineItemString = "INSERT INTO LINEITEM (ORDERID, LINENUM, ITEMID, QUANTITY, "
            + "UNITPRICE) VALUES (?, ?, ?, ?, ?)";;
}
