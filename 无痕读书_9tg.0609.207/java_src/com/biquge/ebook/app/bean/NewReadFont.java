package com.biquge.ebook.app.bean;

import android.text.TextUtils;
import com.apk.a6;
import com.google.gson.annotations.SerializedName;
import java.io.File;
import java.io.Serializable;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class NewReadFont extends LitePalSupport implements Comparable<NewReadFont>, Serializable {
    public static final long serialVersionUID = 9030757455754378314L;
    public int currentSize;
    @SerializedName("id")
    public String fid;
    public String fontname;
    public String img;
    public String img_checked;
    public boolean isFinish;
    public boolean isStartDownload;
    public String localPath;
    public String size;
    public String sort;
    public int totalSize;
    public String url;

    public static String getFontPath(NewReadFont newReadFont) {
        return new File(a6.m18else().m20for(), newReadFont.getUrl().substring(newReadFont.getUrl().lastIndexOf("/") + 1)).getAbsolutePath();
    }

    public int getCurrentSize() {
        return this.currentSize;
    }

    public String getFid() {
        String str = this.fid;
        return str == null ? "" : str;
    }

    public String getFontname() {
        return this.fontname;
    }

    public String getImg() {
        return this.img;
    }

    public String getImg_checked() {
        return this.img_checked;
    }

    public String getLocalPath() {
        if (TextUtils.isEmpty(this.localPath)) {
            this.localPath = getFontPath(this);
        }
        String str = this.localPath;
        return str == null ? "" : str;
    }

    public String getSize() {
        return this.size;
    }

    public String getSort() {
        return this.sort;
    }

    public int getTotalSize() {
        return this.totalSize;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isDownloadOk() {
        return "default_font_url".equals(getUrl()) || (new File(getLocalPath()).exists() && isFinish());
    }

    public boolean isFinish() {
        return this.isFinish;
    }

    public boolean isStartDownload() {
        return this.isStartDownload;
    }

    public void setCurrentSize(int i) {
        this.currentSize = i;
    }

    public void setFid(String str) {
        this.fid = str;
    }

    public void setFinish(boolean z) {
        this.isFinish = z;
    }

    public void setFontname(String str) {
        this.fontname = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setImg_checked(String str) {
        this.img_checked = str;
    }

    public void setLocalPath(String str) {
        this.localPath = str;
    }

    public void setSize(String str) {
        this.size = str;
    }

    public void setSort(String str) {
        this.sort = str;
    }

    public void setStartDownload(boolean z) {
        this.isStartDownload = z;
    }

    public void setTotalSize(int i) {
        this.totalSize = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    @Override // java.lang.Comparable
    public int compareTo(NewReadFont newReadFont) {
        return Integer.parseInt(this.sort) - Integer.parseInt(newReadFont.sort);
    }
}
