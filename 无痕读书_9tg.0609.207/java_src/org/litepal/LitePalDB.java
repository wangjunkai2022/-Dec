package org.litepal;

import java.util.ArrayList;
import java.util.List;
import org.litepal.parser.LitePalConfig;
import org.litepal.parser.LitePalParser;
/* loaded from: classes7.dex */
public class LitePalDB {
    public List<String> classNames;
    public String dbName;
    public boolean isExternalStorage = false;
    public String storage;
    public int version;

    public LitePalDB(String str, int i) {
        this.dbName = str;
        this.version = i;
    }

    public static LitePalDB fromDefault(String str) {
        LitePalConfig parseLitePalConfiguration = LitePalParser.parseLitePalConfiguration();
        LitePalDB litePalDB = new LitePalDB(str, parseLitePalConfiguration.getVersion());
        litePalDB.setStorage(parseLitePalConfiguration.getStorage());
        litePalDB.setClassNames(parseLitePalConfiguration.getClassNames());
        return litePalDB;
    }

    public void addClassName(String str) {
        getClassNames().add(str);
    }

    public List<String> getClassNames() {
        List<String> list = this.classNames;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            this.classNames = arrayList;
            arrayList.add("org.litepal.model.Table_Schema");
        } else if (list.isEmpty()) {
            this.classNames.add("org.litepal.model.Table_Schema");
        }
        return this.classNames;
    }

    public String getDbName() {
        return this.dbName;
    }

    public String getStorage() {
        return this.storage;
    }

    public int getVersion() {
        return this.version;
    }

    public boolean isExternalStorage() {
        return this.isExternalStorage;
    }

    public void setClassNames(List<String> list) {
        this.classNames = list;
    }

    public void setExternalStorage(boolean z) {
        this.isExternalStorage = z;
    }

    public void setStorage(String str) {
        this.storage = str;
    }
}
