package com.biquge.ebook.app.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes8.dex */
public class ComicDirBean implements Serializable {
    public static final long serialVersionUID = 9151748935622756584L;
    public List<ComicDirListBean> list;
    public String name;

    /* loaded from: classes8.dex */
    public static class ComicDirListBean implements Serializable {
        public static final long serialVersionUID = 7503859167531811834L;
        public List<ComicDirListChildBean> list;
        public String name;

        public List<ComicDirListChildBean> getList() {
            List<ComicDirListChildBean> list = this.list;
            return list == null ? new ArrayList() : list;
        }

        public String getName() {
            String str = this.name;
            return str == null ? "" : str;
        }

        public void setList(List<ComicDirListChildBean> list) {
            this.list = list;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    /* loaded from: classes8.dex */
    public static class ComicDirListChildBean implements Serializable {
        public static final long serialVersionUID = -450115039514434129L;
        public int hasContent;
        public String id;
        public String name;

        public int getHasContent() {
            return this.hasContent;
        }

        public String getId() {
            String str = this.id;
            return str == null ? "" : str;
        }

        public String getName() {
            String str = this.name;
            return str == null ? "" : str;
        }

        public void setHasContent(int i) {
            this.hasContent = i;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    public List<ComicDirListBean> getList() {
        List<ComicDirListBean> list = this.list;
        return list == null ? new ArrayList() : list;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public void setList(List<ComicDirListBean> list) {
        this.list = list;
    }

    public void setName(String str) {
        this.name = str;
    }
}
