package com.baidu.tts.database;

import com.baidu.tts.tools.SqlTool;

/* compiled from: StatisticsInfoTable.java */
/* loaded from: classes8.dex */
public class e {
    public static String a() {
        return "CREATE TABLE StatisticsInfo(id INTEGER PRIMARY KEY AUTOINCREMENT,uuid varchar(256),startInfo varchar(256),endInfo varchar(256))";
    }

    public static String b() {
        return SqlTool.sqlDropTable("StatisticsInfo");
    }
}
