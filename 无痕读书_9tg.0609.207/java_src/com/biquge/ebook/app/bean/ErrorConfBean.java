package com.biquge.ebook.app.bean;

import java.util.List;
/* loaded from: classes8.dex */
public class ErrorConfBean {
    public String m_title;
    public List<RowsTipBean> rows_tip;

    /* loaded from: classes8.dex */
    public static class RowsTipBean {
        public String click;
        public String icon;
        public String item;

        public String getClick() {
            return this.click;
        }

        public String getIcon() {
            return this.icon;
        }

        public String getItem() {
            return this.item;
        }

        public void setClick(String str) {
            this.click = str;
        }

        public void setIcon(String str) {
            this.icon = str;
        }

        public void setItem(String str) {
            this.item = str;
        }
    }

    public String getM_title() {
        return this.m_title;
    }

    public List<RowsTipBean> getRows_tip() {
        return this.rows_tip;
    }

    public void setM_title(String str) {
        this.m_title = str;
    }

    public void setRows_tip(List<RowsTipBean> list) {
        this.rows_tip = list;
    }
}
