package com.glacier.spider.login;

import com.glacier.spider.weibo4j.Oauth;

/**
 * Created by glacier on 14-11-20.
 */
public class MyOauth {
    public Oauth getOauth() {
        Oauth oauth = null;
        try {
            oauth = new Oauth();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return oauth;
    }
}
