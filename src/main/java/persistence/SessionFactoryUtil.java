package persistence;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class SessionFactoryUtil {
    private static String resource = "mybatis-config.xml";

    public static SqlSessionFactory getSqlSessionFactiory(){
        SqlSessionFactory sqlSessionFactory = null;
        try {
            InputStream inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        }catch (IOException e){
            System.out.println("读取异常");
            e.printStackTrace();
        }
        return sqlSessionFactory;
    }
}
