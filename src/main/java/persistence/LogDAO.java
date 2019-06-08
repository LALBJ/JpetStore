package persistence;


import domain.Log;

public interface LogDAO {
    void insertLOG(Log log);
    String insertLogString="INSERT INTO LOG (USERID, OPERATE, DATE) VALUES (?,?,?)";
}