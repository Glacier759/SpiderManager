package com.glacier.spider.config;

import java.util.List;

/**
 * Created by glacier on 14-11-29.
 */
public interface MysqlOperation {
    public String selectUserConfig(UserConfig config);

    public List<ConfigBatis> getAllConfig();
}
