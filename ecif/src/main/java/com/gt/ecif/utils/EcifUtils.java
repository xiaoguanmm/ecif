package com.gt.ecif.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class EcifUtils {

    public static void treeMenus(List<Map<String,Object>> menus, int size){
        while (size>=0){
            List<Map<String, Object>> childMenus = new ArrayList<Map<String, Object>>();
            Map<String, Object> menu = menus.get(size);
            int currentPid = (int)menu.get("P_ID");
            for (int j = 0; j <= size; j++) {
                // 如果两者的parent_id 相同，说明是同一层菜单，排除根目录
                int pId = (int) menus.get(j).get("P_ID");
                if (pId != 0) {
                    if (pId == currentPid) {
                        childMenus.add(menus.get(j));
                    }
                }
            }
            if (childMenus.size() > 0) {
                // 移除menus中包含的childMenus
                menus.removeAll(childMenus);
                int parentId = (int) childMenus.get(0).get("P_ID");
                // 找到pid = parent_id 的元素
                for (int k = 0; k < menus.size(); k++) {
                    int pId = (int) menus.get(k).get("ID");
                    if (pId == parentId) {
                        menus.get(k).put("childs", childMenus);
                        break;
                    }
                }
                size = menus.size() - 1;
            } else {
                size--;
            }
        }
    }
}
