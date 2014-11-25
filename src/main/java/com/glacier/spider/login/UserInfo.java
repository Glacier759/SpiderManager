package com.glacier.spider.login;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by glacier on 14-11-25.
 */
public class UserInfo {
    public static String json = null;
    public static String showURL = null;
    public static void main(String[] args) {
        try {

        }catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void getUserInfo(String access_token, String uid) {
        try {
            showURL = "https://api.weibo.com/2/users/show.json?"
                    + "source=462118737&access_token" + access_token +"&uid="+ uid;
            URL url = new URL(showURL);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
            connection.connect();
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            json = reader.readLine();
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static String getValue(String key) {
        try {
            JSONObject jsonObject = new JSONObject(json);
            return jsonObject.getString("key") + "";
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
