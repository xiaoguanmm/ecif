package com.gt.ecif;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Test {
    public static void main(String[] args) {
        List<Map<String,String>> datas = new ArrayList<>();
        Map<String,String> data1 = new HashMap<>();
        data1.put("a","a");
        Map<String,String> data2 = new HashMap<>();
        data2.put("b","b");
        Map<String,String> data3 = new HashMap<>();
        data3.put("c","c");
        Map<String,String> data4 = new HashMap<>();
        data4.put("d","d");
        Map<String,String> data5 = new HashMap<>();
        data5.put("e","e");
        Map<String,String> data6 = new HashMap<>();
        data6.put("f","f");
        datas.add(data1);
        datas.add(data2);
        datas.add(data3);
        datas.add(data4);
        datas.add(data5);
        datas.add(data6);


        List<Map<String,String>> datass2 = new ArrayList<>();
        datass2.add(datas.get(0));
        datass2.add(datas.get(1));
        datas.removeAll(datass2);
        System.out.println(datas.size());


    }
}
