package com.glacier.spider.login;

import com.glacier.spider.weibo4j.org.json.JSONObject;

/**
 * Created by glacier on 14-11-20.
 */
public class AccessTokenJSON {
    private static String accessTokenJson = null;
    private static String accessToken = null, expireIn = null, remindIn = null, uid = null;
    public static void setAccessTokenJSON(String json) {
        accessTokenJson = json;
        try {
//            JSONObject jsonObj = new JSONObject(json);
//            accessToken = jsonObj.getString("access_token");
//            expireIn = jsonObj.getString("expires_in");
//            remindIn = jsonObj.getString("remind_in");
//            uid = jsonObj.getString("uid");
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static String getAccessTokenJSON() {    return accessTokenJson; }
    public static String getAccessToken() { return accessToken;  }
    public static String getExpireIn() {    return expireIn;    }
    public static String getRemindIn() {    return remindIn;    }
    public static String getuid() { return uid; }
}
