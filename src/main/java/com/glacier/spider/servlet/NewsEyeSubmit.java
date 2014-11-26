package com.glacier.spider.servlet;


import org.apache.commons.io.FileUtils;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by glacier on 14-11-24.
 */

@WebServlet("/newseye.submit")
public class NewsEyeSubmit extends HttpServlet {

    public static String testXML = null;

    private static class NewsEyeConfig{
        private static class Paper {
            String paper_name, paper_starturl, paper_encode;
        }
        static List<Paper> paper_list = new ArrayList<Paper>();
        static String  page_url_outer, page_url_node, page_url_tag,
                page_url_attr, page_url_draw, page_url_sub,
                page_url_front, page_url_rear, page_url_have;
        static String  news_url_outer, news_url_node, news_url_tag,
                news_url_attr, news_url_draw, news_url_sub,
                news_url_front, news_url_rear, news_url_have;
        static String  title_outer, title_draw, title_attr,
                url_format, content_outer, content_tag,
                img_outer, img_tag;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            Document xmlDoc = DocumentHelper.createDocument();
            Element root = xmlDoc.addElement("SpiderConfig");
            Element classEle = root.addElement("class");

            String[] paper_names = request.getParameterValues("paper_name");
            String[] paper_starturls = request.getParameterValues("paper_starturl");
            String[] paper_encodes = request.getParameterValues("paper_encode");

            for ( int i = 0; i < paper_names.length; i ++ ) {
                Element newspaper = classEle.addElement("newspaper");
                newspaper.addAttribute("paper_name", paper_names[i]);
                newspaper.addAttribute("paper_starturl", paper_starturls[i]);
                newspaper.addAttribute("paper_encode", paper_encodes[i]);
            }

            Element pageEle = classEle.addElement("page");
            Element pageObj = pageEle.addElement("page_url_outer");
            pageObj.addText(request.getParameter("page_url_outer"));
            pageObj.addAttribute("page_url_node", request.getParameter("page_url_node"));
            pageObj = pageEle.addElement("page_url_tag");
            pageObj.addText(request.getParameter("page_url_tag"));
            pageObj = pageEle.addElement("page_url_attr");
            pageObj.addAttribute("attr_value", request.getParameter("page_url_attr"));
            pageObj.addAttribute("page_url_draw", request.getParameter("page_url_draw"));
            Element pageDraw = pageObj.addElement("page_draw");
            pageObj = pageDraw.addElement("page_url_sub");
            pageObj.addText(request.getParameter("page_url_sub"));
            pageObj = pageDraw.addElement("page_url_front");
            pageObj.addText(request.getParameter("page_url_front"));
            pageObj = pageDraw.addElement("page_url_rear");
            pageObj.addText(request.getParameter("page_url_rear"));
            pageObj = pageDraw.addElement("page_url_have");
            pageObj.addText(request.getParameter("page_url_have"));

            Element newsEle = classEle.addElement("news");
            pageObj = newsEle.addElement("news_url_outer");
            pageObj.addAttribute("news_url_node", request.getParameter("news_url_node"));
            pageObj.addText(request.getParameter("news_url_outer"));
            pageObj = newsEle.addElement("news_url_tag");
            pageObj.addText(request.getParameter("news_url_tag"));
            pageObj = newsEle.addElement("news_url_attr");
            pageObj.addAttribute("attr_value", request.getParameter("news_url_attr"));
            pageObj.addAttribute("news_url_draw", request.getParameter("news_url_draw"));
            Element newsDraw = pageObj.addElement("news_draw");
            pageObj = newsDraw.addElement("news_url_sub");
            pageObj.addText(request.getParameter("news_url_sub"));
            pageObj = newsDraw.addElement("news_url_front");
            pageObj.addText(request.getParameter("news_url_front"));
            pageObj = newsDraw.addElement("news_url_rear");
            pageObj.addText(request.getParameter("news_url_rear"));
            pageObj = newsDraw.addElement("news_url_have");
            pageObj.addText(request.getParameter("news_url_have"));

            Element contEle = classEle.addElement("content");

            Element titleEle = contEle.addElement("title");
            pageObj = titleEle.addElement("title_outer");
            pageObj.addText(request.getParameter("title_outer"));
            pageObj = titleEle.addElement("title_tag");
            pageObj.addText(request.getParameter("title_tag"));
            pageObj.addAttribute("title_draw", request.getParameter("title_draw"));
            pageObj = titleEle.addElement("title_attr");
            pageObj.addText(request.getParameter("title_attr"));

            pageObj = contEle.addElement("time_format");
            pageObj.addText(request.getParameter("time_format"));

            Element textEle = contEle.addElement("text");
            pageObj = textEle.addElement("content_outer");
            pageObj.addText(request.getParameter("content_outer"));
            pageObj = textEle.addElement("content_tag");
            pageObj.addText(request.getParameter("content_tag"));

            Element imgEle = contEle.addElement("image");
            pageObj = imgEle.addElement("img_outer");
            pageObj.addText(request.getParameter("img_outer"));
            pageObj = imgEle.addElement("img_tag");
            pageObj.addText(request.getParameter("img_tag"));

            PrintWriter out = response.getWriter();
            out.println(request.getParameter("paper_name"));
            out.println(root.asXML());
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        doGet(request, response);
    }
}
