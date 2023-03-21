package com.expand.videoplayer.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes8.dex */
public class RankCategory implements Serializable {
    public static final long serialVersionUID = -7423105742863620078L;
    public String Index;
    public List<ListsBean> Lists;
    public String NameDe;
    public String NavDe;
    public String NavFlag;
    public String NavName;
    public String name;

    /* loaded from: classes8.dex */
    public static class ListsBean {
        public String NameDe;
        public String id;
        public String name;

        public String getId() {
            String str = this.id;
            return str == null ? "" : str;
        }

        public String getName() {
            String str = this.name;
            return str == null ? "" : str;
        }

        public String getNameDe() {
            String str = this.NameDe;
            return str == null ? "" : str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setNameDe(String str) {
            this.NameDe = str;
        }
    }

    public String getIndex() {
        String str = this.Index;
        return str == null ? "" : str;
    }

    public List<ListsBean> getLists() {
        List<ListsBean> list = this.Lists;
        return list == null ? new ArrayList() : list;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public String getNameDe() {
        String str = this.NameDe;
        return str == null ? "" : str;
    }

    public String getNavDe() {
        String str = this.NavDe;
        return str == null ? "" : str;
    }

    public String getNavFlag() {
        String str = this.NavFlag;
        return str == null ? "" : str;
    }

    public String getNavName() {
        String str = this.NavName;
        return str == null ? "" : str;
    }

    public void setIndex(String str) {
        this.Index = str;
    }

    public void setLists(List<ListsBean> list) {
        this.Lists = list;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNameDe(String str) {
        this.NameDe = str;
    }

    public void setNavDe(String str) {
        this.NavDe = str;
    }

    public void setNavFlag(String str) {
        this.NavFlag = str;
    }

    public void setNavName(String str) {
        this.NavName = str;
    }
}
