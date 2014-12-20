package com.glacier.spider.manager;

import com.glacier.spider.config.ConfigBatis;
import org.apache.log4j.Logger;

import java.io.*;
import java.util.List;

/**
 * Created by glacier on 14-12-20.
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
                System.out.println("结束啦～～～～～～～");
            }catch (Exception e) {
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                e.printStackTrace(new PrintStream(baos));
                logger.error(baos.toString());
            }
        }
    }
}
