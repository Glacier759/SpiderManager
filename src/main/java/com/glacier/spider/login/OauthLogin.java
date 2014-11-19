package com.glacier.spider.login;

import com.glacier.spider.weibo4j.Oauth;
import com.glacier.spider.weibo4j.model.WeiboException;
import com.glacier.spider.weibo4j.util.BareBonesBrowserLaunch;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * Created by glacier on 14-11-17.
 */
public class OauthLogin {
    public static void main(String[] args) throws WeiboException, IOException{
        Oauth oauth = new Oauth();
        BareBonesBrowserLaunch.openURL(oauth.authorize("code"));
        System.out.print("Hit enter when it's done.[Enter]:");
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        String code = br.readLine();
        System.out.println("code: " + code);
        //Log.logInfo("code: " + code);
        try{
            System.out.println(oauth.getAccessTokenByCode(code));
        } catch (WeiboException e) {
            if(401 == e.getStatusCode()){
                System.out.println("Unable to get the access token.");
                //Log.logInfo("Unable to get the access token.");
            }else{
                e.printStackTrace();
            }
        }
    }
}
