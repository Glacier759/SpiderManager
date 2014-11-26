package com.glacier.spider.save;

import com.glacier.spider.save.sqlclass.UserConfig;
import com.glacier.spider.save.sqlclass.UserInfo;

/**
 * Created by glacier on 14-11-26.
 */
public interface MysqlOperation {

    public void insertUserInfo(UserInfo obj);

    public int selectUserExist(String uid);

    public void insertUserConfig(UserConfig conf);

    public int selectConfigExist(UserConfig conf);

    public void updateUserConfig(UserConfig conf);

    public String selectUserConfig(UserConfig conf);
}
