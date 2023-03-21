package org.litepal.tablemanager.model;

import android.text.TextUtils;
import com.apk.Cgoto;
import com.umeng.analytics.pro.ao;

/* loaded from: classes7.dex */
public class ColumnModel {
    public String columnName;
    public String columnType;
    public boolean isNullable = true;
    public boolean isUnique = false;
    public String defaultValue = "";
    public boolean hasIndex = false;

    public String getColumnName() {
        return this.columnName;
    }

    public String getColumnType() {
        return this.columnType;
    }

    public String getDefaultValue() {
        return this.defaultValue;
    }

    public boolean hasIndex() {
        return this.hasIndex;
    }

    public boolean isIdColumn() {
        return ao.d.equalsIgnoreCase(this.columnName) || "id".equalsIgnoreCase(this.columnName);
    }

    public boolean isNullable() {
        return this.isNullable;
    }

    public boolean isUnique() {
        return this.isUnique;
    }

    public void setColumnName(String str) {
        this.columnName = str;
    }

    public void setColumnType(String str) {
        this.columnType = str;
    }

    public void setDefaultValue(String str) {
        if ("text".equalsIgnoreCase(this.columnType)) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.defaultValue = Cgoto.m996else("'", str, "'");
            return;
        }
        this.defaultValue = str;
    }

    public void setHasIndex(boolean z) {
        this.hasIndex = z;
    }

    public void setNullable(boolean z) {
        this.isNullable = z;
    }

    public void setUnique(boolean z) {
        this.isUnique = z;
    }
}
