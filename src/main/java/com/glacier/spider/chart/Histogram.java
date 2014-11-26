package com.glacier.spider.chart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by glacier on 14-11-26.
 */
public class Histogram {

    public static class HistogramData {
        String categories, data_y;
        HashMap<String,String> drilldown = new HashMap<String, String>();
    }

    public static List<HistogramData> histogramDatas = null;

    public static void putHistogramData(HistogramData histogramData) {
        if ( histogramDatas == null )
            histogramDatas = new ArrayList<HistogramData>();
        histogramDatas.add(histogramData);
    }

    public static void init() {
        histogramDatas = new ArrayList<HistogramData>();
        HistogramData obj1 = new HistogramData();
        obj1.categories = "网络媒体";
        obj1.data_y = "55.11";
        obj1.drilldown.put("腾讯新闻", "10.85");
        obj1.drilldown.put("网易新闻", "7.35");
        obj1.drilldown.put("新浪新闻", "33.06");
        obj1.drilldown.put("其他", "2.81");

        HistogramData obj2 = new HistogramData();
        obj2.categories = "新浪微博";
        obj2.data_y = "21.63";
        obj2.drilldown.put("人物为中心", "0.20");
        obj2.drilldown.put("微博为中心", "0.83");

        HistogramData obj3 = new HistogramData();
        obj3.categories = "百度贴吧";
        obj3.data_y = "11.94";
        obj3.drilldown.put("贴吧域", "9.91");
        obj3.drilldown.put("帖子域", "2.50");

        histogramDatas.add(obj1);
        histogramDatas.add(obj2);
        histogramDatas.add(obj3);
    }

    public static String getCategories() {
        String data = "";
        for ( HistogramData histogramData:histogramDatas ) {
            data += ",'" + histogramData.categories + "'";
        }
        return data.substring(1);
    }

    public static String getData() {

        String data = "";
        for ( int i = 0; i < histogramDatas.size(); i ++ ) {
            HistogramData histogramData = histogramDatas.get(i);
            data += ",{y:" + histogramData.data_y + ",color:colors[" + i +"],drilldown:{ name: '"
                    + histogramData.categories + "', categories: [";

            String keyArry = "";
            for ( String key:histogramData.drilldown.keySet() ) {
                keyArry += ",'" + key + "'";
            }
            data += keyArry.substring(1) + "],data:[";

            String dataArry = "";
            for ( String key:histogramData.drilldown.keySet() ) {
                String value = histogramData.drilldown.get(key);
                dataArry += "," + value;
            }
            data += dataArry.substring(1) + "],color: colors[" + i + "]}}";
        }
        data = data.substring(1);
        return data;
    }
}
