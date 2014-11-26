package com.glacier.spider.save;

import com.glacier.spider.save.sqlclass.UserConfig;
import com.glacier.spider.save.sqlclass.UserInfo;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;

import java.io.Reader;

/**
 * Created by glacier on 14-11-26.
 */
public class SaveData {
    static Logger log = Logger.getLogger(SaveData.class.getName());
    Reader reader = null;
    SqlSessionFactory sessionFactory = null;
    SqlSession session = null;
    MysqlOperation mapper = null;
    {
        try {
            reader = Resources.getResourceAsReader("mybatis.xml");
            sessionFactory = new SqlSessionFactoryBuilder().build(reader);
            session = sessionFactory.openSession();
            mapper = session.getMapper(MysqlOperation.class);
        }catch (Exception e) {
            log.debug(e.toString());
            e.printStackTrace();
        }
    }


    public void insertUserInfo(UserInfo info) {
        try {
            mapper.insertUserInfo(info);
            session.commit();
        }catch (Exception e) {
            log.debug(e.toString());
            e.printStackTrace();
        }
    }

    public int selectUserExist(String uid) {
        try {
            int count = mapper.selectUserExist(uid);
            session.commit();
            return count;
        }catch (Exception e) {
            log.debug(e.toString());
            e.printStackTrace();
        }
        return 0;
    }

    public void insertUserConfig(UserConfig config) {
        try {
            mapper.insertUserConfig(config);
            session.commit();
        }catch (Exception e) {
            log.debug(e.toString());
            e.printStackTrace();
        }
    }

    public int selectConfigExist(UserConfig config) {
        try {
            int count = mapper.selectConfigExist(config);
            session.commit();
            return count;
        }catch (Exception e) {
            log.debug(e.toString());
            e.printStackTrace();
        }
        return 0;
    }

    public void updateUserConfig(UserConfig config) {
        try {
            mapper.updateUserConfig(config);
            session.commit();
        }catch (Exception e) {
            log.debug(e.toString());
            e.printStackTrace();
        }
    }

    public String selectUserConfig(UserConfig config) {
        try {
            String conf = mapper.selectUserConfig(config);
            session.commit();
            return conf;
        }catch (Exception e) {
            log.debug(e.toString());
            e.printStackTrace();
        }
        return null;
    }

}
