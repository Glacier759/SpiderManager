package com.glacier.spider.manager;

import com.glacier.spider.config.ConfigBatis;
import com.glacier.spider.config.GetUserConfig;
import com.glacier.spider.mail.Mail;
import org.apache.log4j.Logger;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.List;

/**
 * Created by IntelliJ IDEA on 2014-12-20 20:20.
 * Author:  Glacier (RenLixiang), OurHom.759@gmail.com
 * Company: Class 1204 of Computer Science and Technology
 */
public class Manager {

    private static Logger logger = Logger.getLogger(Manager.class.getName());

    public static void main(String[] agrs) {

        List<ConfigBatis> configList = ConfigBatis.getAllConfig();
        for ( ConfigBatis configBatis:configList ) {
            try {
                String shell = "sh /home/glacier/Java/IDE/IDEA/IdeaProjects/SpiderConfig/NewsEye/start.sh " + configBatis.getId();
                Process process = Runtime.getRuntime().exec(shell);

                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                String temp;
                while( (temp = bufferedReader.readLine()) != null ) {
                    System.out.println(temp);
                }
                process.waitFor();

                configBatis = ConfigBatis.getConfig(configBatis.getId());

                //String email = new GetUserConfig().getUserEmail(configBatis.getUid());
                String email = "421186071@qq.com";
                if ( email != null ) {
                    Mail mail = new Mail();
                    mail.sendMail(email, "数据下载地址", configBatis.getFilename());
                }
            }catch (Exception e) {
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                e.printStackTrace(new PrintStream(baos));
                logger.error(baos.toString());
            }
        }
    }
}