package com.biquge.ebook.app.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes8.dex */
public class NovelDirBean implements Serializable {
    public static final long serialVersionUID = -6577899176404906348L;
    public List<NovelDirListBean> list;
    public String name;

    /* loaded from: classes8.dex */
    public static class NovelDirListBean implements Serializable {
        public static final long serialVersionUID = 1179730591473666014L;
        public List<NovelDirListChildBean> list;
        public String name;

        public List<NovelDirListChildBean> getList() {
            List<NovelDirListChildBean> list = this.list;
            return list == null ? new ArrayList() : list;
        }

        public String getName() {
            String str = this.name;
            return str == null ? "" : str;
        }

        public void setList(List<NovelDirListChildBean> list) {
            this.list = list;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    /* loaded from: classes8.dex */
    public static class NovelDirListChildBean implements Serializable {
        public static final long serialVersionUID = 8067046614206780485L;
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

    public List<NovelDirListBean> getList() {
        List<NovelDirListBean> list = this.list;
        return list == null ? new ArrayList() : list;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public void setList(List<NovelDirListBean> list) {
        this.list = list;
    }

    public void setName(String str) {
        this.name = str;
    }
}
