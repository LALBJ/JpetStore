package service;

import domain.Account;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import persistence.AccountDAO;
import persistence.SessionFactoryUtil;

public class AccountService {
    private SqlSessionFactory sqlSessionFactory = null;
    private SqlSession sqlSession = null;
    private AccountDAO accountDAO = null;

    public Account signIn(Account loginAccount){
        Account result = null;
        sqlSessionFactory = SessionFactoryUtil.getSqlSessionFactiory();
        sqlSession = sqlSessionFactory.openSession();
        accountDAO = sqlSession.getMapper(AccountDAO.class);

        result = accountDAO.getAccountByUsernameAndPassword(loginAccount);

        sqlSession.close();

        return result;
    }
}
