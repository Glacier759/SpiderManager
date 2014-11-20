package com.glacier.spider.login;

/**
 * Created by glacier on 14-11-20.
 */
public class AccessTokenJSON {
    private static String accessTokenJson = null;
    public static void setAccessTokenJSON(String json) {
        accessTokenJson = json;
    }
    public static String getAccessTokenJSON() {    return accessTokenJson; }
    public static String getAccessToken() {        return accessTokenJson;}
}
