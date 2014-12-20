package com.glacier.spider.config;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import java.io.*;
import java.util.List;

/**
 * Created by glacier on 14-11-29.
 */
public class GetUserConfig {
    Reader reader = null;
    SqlSessionFactory sessionFactory = null;
    SqlSession session = null;
    MysqlOperation mapper = null;
    {
        try {
            reader = Resources.getResourceAsReader("mybatis.xml");
            sessionFactory = new SqlSessionFactoryBuilder().build(reader);
            session = sessionFactory.openSession();
            mapper = session.getMapper(MysqlOperation.class);
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getUserConfig(String uid, String aid) {
        try {
            UserConfig userConfig = new UserConfig();
            userConfig.setUid(uid);
            userConfig.setAid(Integer.parseInt(aid));
            String configStr = mapper.selectUserConfig(userConfig);
            session.commit();

            Document xmlDoc = DocumentHelper.parseText(configStr);
            Element root = xmlDoc.getRootElement();
            return formatXML(root.asXML());
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private String formatXML(String xml) {
        try {
            SAXReader saxReader = new SAXReader();
            Document document = saxReader.read(new ByteArrayInputStream(xml.getBytes()));
            OutputFormat format = OutputFormat.createPrettyPrint();
            format.setEncoding("UTF-8");
            StringWriter writer = new StringWriter();
            XMLWriter xmlWriter = new XMLWriter(writer, format);
            xmlWriter.write(document);
            return writer.toString();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
//        String config = new GetUserConfig().getUserConfig("2314283235", "1");
//        try {
//            Runtime runtime = Runtime.getRuntime();
//            Process process = runtime.exec("./a.out");
//
//            InputStream inputStream = process.getInputStream();
//            BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
//            StringBuffer buffer = new StringBuffer();
//            String temp = "";
//            while( (temp = reader.readLine()) != null ) {
//                buffer.append(temp);
//            }
//            System.out.println(buffer.toString());
//        }catch (Exception e) {
//            e.printStackTrace();
//        }
//        System.out.println(config);
        List<ConfigBatis> configList = ConfigBatis.getAllConfig();
        for ( ConfigBatis configBatis:configList ) {
            System.out.println(configBatis.getConf());
        }
    }
}
