package persistence;

import domain.Account;
import domain.Category;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class Test {
    public static void main(String[] args){
        SqlSessionFactory sqlSessionFactory = SessionFactoryUtil.getSqlSessionFactiory();
        SqlSession session = sqlSessionFactory.openSession();
        try{
            CategoryDAO userDAO = session.getMapper(CategoryDAO.class);
            Category result = userDAO.getCategory("BIRDS");
            System.out.println("用户名：" + result.getName());
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            session.close();
        }
    }
}
