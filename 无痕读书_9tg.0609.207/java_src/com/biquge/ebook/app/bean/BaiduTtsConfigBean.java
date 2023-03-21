package com.biquge.ebook.app.bean;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes8.dex */
public class BaiduTtsConfigBean {
    public int index;
    public String tagStr;
    public List<YyconfBean> yyconf;
    public String yyonline;

    /* loaded from: classes8.dex */
    public static class YyconfBean {
        public String yyapikey;
        public String yyappid;
        public String yyskey;

        public String getYyapikey() {
            String str = this.yyapikey;
            return str == null ? "" : str;
        }

        public String getYyappid() {
            String str = this.yyappid;
            return str == null ? "" : str;
        }

        public String getYyskey() {
            String str = this.yyskey;
            return str == null ? "" : str;
        }

        public void setYyapikey(String str) {
            this.yyapikey = str;
        }

        public void setYyappid(String str) {
            this.yyappid = str;
        }

        public void setYyskey(String str) {
            this.yyskey = str;
        }
    }

    public int getIndex() {
        return this.index;
    }

    public String getTagStr() {
        String str = this.tagStr;
        return str == null ? "" : str;
    }

    public List<YyconfBean> getYyconf() {
        List<YyconfBean> list = this.yyconf;
        return list == null ? new ArrayList() : list;
    }

    public String getYyonline() {
        String str = this.yyonline;
        return str == null ? "" : str;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void setTagStr(String str) {
        this.tagStr = str;
    }

    public void setYyconf(List<YyconfBean> list) {
        this.yyconf = list;
    }

    public void setYyonline(String str) {
        this.yyonline = str;
    }
}
