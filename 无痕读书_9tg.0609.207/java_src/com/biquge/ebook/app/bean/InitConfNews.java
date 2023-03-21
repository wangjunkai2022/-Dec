package com.biquge.ebook.app.bean;

import com.google.gson.annotations.SerializedName;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class InitConfNews extends LitePalSupport {
    public String apk_pkg;
    public String clicktype;
    public String date;
    public String delete;
    public String desc;
    public String editor;
    @SerializedName("id")
    public String nid;
    public String pic;
    public boolean read;
    public String target;
    public String title;

    public String getApk_pkg() {
        return this.apk_pkg;
    }

    public String getClicktype() {
        return this.clicktype;
    }

    public String getDate() {
        return this.date;
    }

    public String getDelete() {
        String str = this.delete;
        return str == null ? "" : str;
    }

    public String getDesc() {
        return this.desc;
    }

    public String getEditor() {
        return this.editor;
    }

    public String getNid() {
        String str = this.nid;
        return str == null ? "" : str;
    }

    public String getPic() {
        return this.pic;
    }

    public String getTarget() {
        return this.target;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isRead() {
        return this.read;
    }

    public void setApk_pkg(String str) {
        this.apk_pkg = str;
    }

    public void setClicktype(String str) {
        this.clicktype = str;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setDelete(String str) {
        this.delete = str;
    }

    public void setDesc(String str) {
        this.desc = str;
    }

    public void setEditor(String str) {
        this.editor = str;
    }

    public void setNid(String str) {
        this.nid = str;
    }

    public void setPic(String str) {
        this.pic = str;
    }

    public void setRead(boolean z) {
        this.read = z;
    }

    public void setTarget(String str) {
        this.target = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
