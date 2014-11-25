package com.glacier.spider.login;

/**
 * Created by glacier on 14-11-20.
 */
public class AccessTokenJSON {
    private static String accessTokenJson = null;
    private static String userInfoJson = null;
    private static String accessToken, uid, remind_in, expires_in;

    public static void setAccessTokenJson(String json) {    accessTokenJson = json; }
    public static String getAccessTokenJson() {    return accessTokenJson; }

    public static void setUserInfoJson(String json) {   userInfoJson = json;    }
    public static String getUserInfoJson() {    return userInfoJson;    }

    public static void setAccessToken(String token) {   accessToken = token;    }
    public static String getAccessToken() { return accessToken; }

    public static void setUid(String userId) { uid = userId; }
    public static String getUid() { return uid; }

    public static void setRemindIn(String remindIn) {  remind_in = remindIn; }
    public static String getRemindIn() {    return remind_in;   }

    public static void setExpiresIn(String expiresIn) {   expires_in = expiresIn;   }
    public static String getExpiresIn() {   return expires_in;  }
}
