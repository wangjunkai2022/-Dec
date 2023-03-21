package com.manhua.ui.widget.barrage;

/* loaded from: classes8.dex */
public class BarrageBean {
    public String Addtime;
    public String BookId;
    public String ChapterId;
    public String Color;
    public String Content;
    public String bgcolor;
    public String c_extra;
    public String clickto;
    public boolean isMe;
    public String pkg;
    public String pre_Ico;
    public String pre_Str;

    public BarrageBean(String str, String str2) {
        this.Content = str;
        this.Color = str2;
    }

    public String getAddtime() {
        String str = this.Addtime;
        return str == null ? "" : str;
    }

    public String getBgcolor() {
        String str = this.bgcolor;
        return str == null ? "" : str;
    }

    public String getBookId() {
        String str = this.BookId;
        return str == null ? "" : str;
    }

    public String getC_extra() {
        String str = this.c_extra;
        return str == null ? "" : str;
    }

    public String getChapterId() {
        String str = this.ChapterId;
        return str == null ? "" : str;
    }

    public String getClickto() {
        String str = this.clickto;
        return str == null ? "" : str;
    }

    public String getColor() {
        String str = this.Color;
        return str == null ? "" : str;
    }

    public String getContent() {
        String str = this.Content;
        return str == null ? "" : str;
    }

    public String getPkg() {
        String str = this.pkg;
        return str == null ? "" : str;
    }

    public String getPre_Ico() {
        String str = this.pre_Ico;
        return str == null ? "" : str;
    }

    public String getPre_Str() {
        String str = this.pre_Str;
        return str == null ? "" : str;
    }

    public boolean isMe() {
        return this.isMe;
    }

    public void setAddtime(String str) {
        this.Addtime = str;
    }

    public void setBgcolor(String str) {
        this.bgcolor = str;
    }

    public void setBookId(String str) {
        this.BookId = str;
    }

    public void setC_extra(String str) {
        this.c_extra = str;
    }

    public void setChapterId(String str) {
        this.ChapterId = str;
    }

    public void setClickto(String str) {
        this.clickto = str;
    }

    public void setColor(String str) {
        this.Color = str;
    }

    public void setContent(String str) {
        this.Content = str;
    }

    public void setMe(boolean z) {
        this.isMe = z;
    }

    public void setPkg(String str) {
        this.pkg = str;
    }

    public void setPre_Ico(String str) {
        this.pre_Ico = str;
    }

    public void setPre_Str(String str) {
        this.pre_Str = str;
    }
}
