package com.glacier.spider.chart;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by glacier on 14-11-26.
 */
public class Pie {
    public static class PieData {
        String name, value;
    }

    static List<PieData> pieDataList = null;

    public static void putPieData(PieData pieData) {
        if (pieDataList == null)
            pieDataList = new ArrayList<PieData>();
        pieDataList.add(pieData);
    }

    public static void init() {
        pieDataList = new ArrayList<PieData>();

        PieData obj1 = new PieData();
        obj1.name = "网络媒体";
        obj1.value = "45.0";

        PieData obj2 = new PieData();
        obj2.name = "百度贴吧";
        obj2.value = "26.8";

        PieData obj3 = new PieData();
        obj3.name = "新浪微博";
        obj3.value = "12.8";

        PieData obj4 = new PieData();
        obj4.name = "博客";
        obj4.value = "8.5";

        PieData obj5 = new PieData();
        obj5.name = "论坛";
        obj5.value = "4.9";

        pieDataList.add(obj1);
        pieDataList.add(obj2);
        pieDataList.add(obj3);
        pieDataList.add(obj4);
        pieDataList.add(obj5);
    }

    public static String getData() {
        String data = "";
        for ( PieData pieData:pieDataList ) {
            data += ",['" + pieData.name + "'," + pieData.value + "]";
        }
        data = data.substring(1);
        return data;
    }
}
