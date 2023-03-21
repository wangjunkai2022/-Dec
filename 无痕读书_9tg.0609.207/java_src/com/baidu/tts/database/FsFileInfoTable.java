package com.baidu.tts.database;

import com.baidu.tts.tools.SqlTool;
/* loaded from: classes8.dex */
public class FsFileInfoTable {

    /* loaded from: classes8.dex */
    public enum Field {
        ABS_PATH("absPath", "varchar primary key"),
        STATE("state", "integer");
        
        public final String c;
        public final String d;

        Field(String str, String str2) {
            this.c = str;
            this.d = str2;
        }

        public String getColumnName() {
            return this.c;
        }

        public String getDataType() {
            return this.d;
        }
    }

    public static String a() {
        return SqlTool.sqlCreateTable("fsFileInfo", Field.values());
    }

    public static String b() {
        return SqlTool.sqlDropTable("fsFileInfo");
    }
}
