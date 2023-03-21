package com.baidu.tts.database;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.client.model.ModelInfo;
import com.baidu.tts.database.f;
import com.baidu.tts.tools.SqlTool;
import com.umeng.analytics.pro.ak;
/* loaded from: classes8.dex */
public class SpeechModelTable {

    /* loaded from: classes8.dex */
    public enum Field {
        ID("id", "integer primary key"),
        TEXT_DATA_ID("text_data_id", "integer"),
        SPEECH_DATA_ID("speech_data_id", "integer"),
        NAME("name", "varchar(256) not null default unnamed"),
        VERSION_MIN("version_min", "integer"),
        VERSION_MAX("version_max", "integer"),
        LANGUAGE(ak.N, "varchar(20)"),
        GENDER("gender", "varchar(20)"),
        SPEAKER("speaker", "varchar(256)"),
        DOMAIN("domain", "varchar(50)"),
        QUALITY("quality", "varchar(50)");
        
        public final String l;
        public final String m;

        Field(String str, String str2) {
            this.l = str;
            this.m = str2;
        }

        public String getColumnName() {
            return this.l;
        }

        public String getDataType() {
            return this.m;
        }
    }

    public static String a() {
        return SqlTool.sqlCreateTable("speechModel", Field.values());
    }

    public static String b() {
        return SqlTool.sqlDropTable("speechModel");
    }

    public static int a(SQLiteDatabase sQLiteDatabase, String str) {
        return sQLiteDatabase.delete("speechModel", "id=?", new String[]{str});
    }

    public static void a(SQLiteDatabase sQLiteDatabase, final ModelBags modelBags) {
        new f(sQLiteDatabase, new f.a() { // from class: com.baidu.tts.database.SpeechModelTable.1
            @Override // com.baidu.tts.database.f.a
            public boolean a(SQLiteDatabase sQLiteDatabase2) {
                try {
                    SQLiteStatement compileStatement = sQLiteDatabase2.compileStatement("insert into speechModel (name, version_min, version_max, language, gender, speaker, domain, quality, text_data_id, speech_data_id, id) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                    for (ModelInfo modelInfo : ModelBags.this.getModelInfos()) {
                        String name = modelInfo.getName();
                        String versionMin = modelInfo.getVersionMin();
                        String versionMax = modelInfo.getVersionMax();
                        String language = modelInfo.getLanguage();
                        String gender = modelInfo.getGender();
                        String speaker = modelInfo.getSpeaker();
                        String domain = modelInfo.getDomain();
                        String quality = modelInfo.getQuality();
                        String textDataId = modelInfo.getTextDataId();
                        String speechDataId = modelInfo.getSpeechDataId();
                        String serverId = modelInfo.getServerId();
                        compileStatement.bindString(1, name);
                        compileStatement.bindString(2, versionMin);
                        compileStatement.bindString(3, versionMax);
                        compileStatement.bindString(4, language);
                        compileStatement.bindString(5, gender);
                        compileStatement.bindString(6, speaker);
                        compileStatement.bindString(7, domain);
                        compileStatement.bindString(8, quality);
                        compileStatement.bindString(9, textDataId);
                        compileStatement.bindString(10, speechDataId);
                        compileStatement.bindString(11, serverId);
                        compileStatement.executeInsert();
                    }
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        }).a();
    }
}
