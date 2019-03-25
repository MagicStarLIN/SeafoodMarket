package util;

import java.io.InputStream;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import test.test1;

public class MybatisUtil {
	
	public static SqlSessionFactory getSqlSessionFactory() {
        // mybatis鐨勯厤缃枃浠�
        String resource = "mybatis-config.xml";
        // 浣跨敤绫诲姞杞藉櫒鍔犺浇mybatis鐨勯厤缃枃浠讹紙瀹冧篃鍔犺浇鍏宠仈鐨勬槧灏勬枃浠讹級
        InputStream is = test1.class.getClassLoader().getResourceAsStream(resource);
        // 鏋勫缓sqlSession鐨勫伐鍘�
        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(is);
        return sessionFactory;
    }

    public static SqlSession getSqlSession() {
        return getSqlSessionFactory().openSession();
    }

    public static SqlSession getSqlSession(boolean isAutoCommit) {
        return getSqlSessionFactory().openSession(isAutoCommit);
    }
	
}
