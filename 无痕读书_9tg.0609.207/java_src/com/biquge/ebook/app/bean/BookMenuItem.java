package com.biquge.ebook.app.bean;
/* loaded from: classes8.dex */
public class BookMenuItem {
    public int indexTag;
    public boolean isCheck;
    public boolean isSwitch;
    public int resId;
    public String title;

    public BookMenuItem(int i, String str, int i2) {
        this(i, str, false, false, i2);
    }

    public int getIndexTag() {
        return this.indexTag;
    }

    public int getResId() {
        return this.resId;
    }

    public String getTitle() {
        String str = this.title;
        return str == null ? "" : str;
    }

    public boolean isCheck() {
        return this.isCheck;
    }

    public boolean isSwitch() {
        return this.isSwitch;
    }

    public void setCheck(boolean z) {
        this.isCheck = z;
    }

    public void setIndexTag(int i) {
        this.indexTag = i;
    }

    public void setResId(int i) {
        this.resId = i;
    }

    public void setSwitch(boolean z) {
        this.isSwitch = z;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public BookMenuItem(int i, String str, boolean z, boolean z2, int i2) {
        this.resId = i;
        this.title = str;
        this.isSwitch = z;
        this.isCheck = z2;
        this.indexTag = i2;
    }
}
