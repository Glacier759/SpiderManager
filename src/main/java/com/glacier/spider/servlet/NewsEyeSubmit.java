package com.glacier.spider.servlet;


import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by glacier on 14-11-24.
 */

@WebServlet("/newseye.submit")
public class NewsEyeSubmit extends HttpServlet {

//
//    private static class NewsEyeConfig{
//        private static class Paper {
//            String paper_name, paper_starturl, paper_encode;
//        }
//        static List<Paper> paper_list = new ArrayList<Paper>();
//        static String  page_url_outer, page_url_node, page_url_tag,
//                page_url_attr, page_url_draw, page_url_sub,
//                page_url_front, page_url_rear, page_url_have;
//        static String  news_url_outer, news_url_node, news_url_tag,
//                news_url_attr, news_url_draw, news_url_sub,
//                news_url_front, news_url_rear, news_url_have;
//        static String  title_outer, title_draw, title_attr,
//                url_format, content_outer, content_tag,
//                img_outer, img_tag;
//    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
//        NewsEyeConfig.page_url_outer = request.getParameter("page_url_outer");
//        NewsEyeConfig.page_url_node = request.getParameter("page_url_node");
//        NewsEyeConfig.page_url_tag = request.getParameter("page_url_tag");
//        NewsEyeConfig.page_url_attr = request.getParameter("page_url_attr");
//        NewsEyeConfig.page_url_draw = request.getParameter("page_url_draw");
//        NewsEyeConfig.page_url_sub = request.getParameter("page_url_sub");
//        NewsEyeConfig.page_url_front = request.getParameter("page_url_front");
//        Document xmlDoc = DocumentHelper.createDocument();
//        Element root = xmlDoc.addElement("SpiderConfig");
//        Element classEle = root.addElement("class");
//        Element newspaper = classEle.addElement("newspaper");
//        newspaper.addAttribute("paper_name", request.getParameter("paper_name"));
//        newspaper.addAttribute("paper_starturl", request.getParameter("paper_starturl"));
//        newspaper.addAttribute("paper_encode", request.getParameter("paper_encode"));
//        Element pageEle = classEle.addElement("page");
//        Element pageObj = pageEle.addElement("page_url_outer");
//        pageObj.addText(request.getParameter("page_url_outer"));
//        pageObj.addAttribute("page_url_node", request.getParameter("page_url_node"));
//        pageObj = pageEle.addElement("page_url_tag");
//        pageObj.addText(request.getParameter("page_url_tag"));
//        pageObj = pageEle.addElement("page_url_attr");
//        pageObj.addText(request.getParameter("page_url_attr"));
//        pageObj.addAttribute("page_url_draw", request.getParameter("page_url_draw"));
//        Element pageDraw = pageObj.addElement("draw");
//        pageObj = pageDraw.addElement("page_url_sub");
//        pageObj.addText(request.getParameter("page_url_sub"));
//        pageObj = pageDraw.addElement("page_url_front");
//        pageObj.addText(request.getParameter("page_url_front"));
//        pageObj = pageDraw.addElement("page_url_rear");
//        pageObj.addText(request.getParameter("page_url_rear"));
//        pageObj = pageDraw.addElement("page_url_have");
//        pageObj.addText(request.getParameter("page_url_have"));
//
//        System.out.println(root.asXML());
//        try {
//            FileUtils.writeStringToFile(new File("test.xml"), root.asXML());
//        }catch (Exception e) {
//            e.printStackTrace();
//        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        doGet(request, response);
    }
}
