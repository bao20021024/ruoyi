package com.ruoyi.util;

import java.util.Date;

public class MyIdGenUtils {
    /**
     * 根据姓名生成"拼音_当前系统时间戳"样式的id
     * @param name 姓名
     * @return id
     */
    public static String ByPinyinAndTimestamp(String name) {
        String id = "";
        String pinyin = PinYinUtils.toUpperStringsFirstCharPinYin(name);
        long timestamp = new Date().getTime();
        id = pinyin + "_" + timestamp;
        return id;
    }

    /**
     * 生成当前系统时间戳样式的id
     * @return id
     */
    public static Long ByTimestamp() {
        long id = new Date().getTime();
        return id;
    }

}
