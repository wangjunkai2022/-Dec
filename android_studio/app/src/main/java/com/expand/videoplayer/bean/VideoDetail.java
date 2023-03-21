package com.expand.videoplayer.bean;

import java.io.Serializable;
import java.util.List;

/* loaded from: classes8.dex */
public class VideoDetail implements Serializable {
    public static final long serialVersionUID = -4322373201156210638L;
    public String Area;
    public String Author;
    public int CId;
    public String CIds;
    public String CName;
    public boolean CopyrightFlag;
    public String Desc;
    public String HostKey;
    public String Id;
    public String Img;
    public int LastCId;
    public String LastChapter;
    public String Leble;
    public String Name;
    public String ParentName;
    public List<PlaysourcesBean> Playsources;
    public String Quality;
    public List<SameCategoryBooksBean> SameCategoryBooks;
    public String Score;
    public String Star;
    public String UpdateTime;
    public String Vintage;
    public String jishu;

    /* loaded from: classes8.dex */
    public static class PlaysourcesBean implements Serializable {
        public static final long serialVersionUID = 6611978475075822838L;
        public String navlabel;
        public List<PlayurlsBean> playurls;

        /* loaded from: classes8.dex */
        public static class PlayurlsBean implements Serializable {
            public static final long serialVersionUID = 1441648272656036292L;
            public int cId;
            public String label;
            public String url;

            public int getCId() {
                return this.cId;
            }

            public String getLabel() {
                return this.label;
            }

            public String getUrl() {
                return this.url;
            }

            public void setCId(int i) {
                this.cId = i;
            }

            public void setLabel(String str) {
                this.label = str;
            }

            public void setUrl(String str) {
                this.url = str;
            }
        }

        public String getNavlabel() {
            return this.navlabel;
        }

        public List<PlayurlsBean> getPlayurls() {
            return this.playurls;
        }

        public void setNavlabel(String str) {
            this.navlabel = str;
        }

        public void setPlayurls(List<PlayurlsBean> list) {
            this.playurls = list;
        }
    }

    /* loaded from: classes8.dex */
    public static class SameCategoryBooksBean implements Serializable {
        public static final long serialVersionUID = 3434024025150227903L;
        public String CIds;
        public String CName;
        public String Desc;
        public String HostKey;
        public int Id;
        public String Img;
        public String LastChapter;
        public String Leble;
        public String Name;
        public String ParentName;
        public String Quality;
        public String Score;
        public String UpdateTime;
        public String jishu;

        public String getCIds() {
            return this.CIds;
        }

        public String getCName() {
            return this.CName;
        }

        public String getDesc() {
            return this.Desc;
        }

        public String getHostKey() {
            return this.HostKey;
        }

        public int getId() {
            return this.Id;
        }

        public String getImg() {
            return this.Img;
        }

        public String getJishu() {
            return this.jishu;
        }

        public String getLastChapter() {
            return this.LastChapter;
        }

        public String getLeble() {
            return this.Leble;
        }

        public String getName() {
            return this.Name;
        }

        public String getParentName() {
            return this.ParentName;
        }

        public String getQuality() {
            return this.Quality;
        }

        public String getScore() {
            String str = this.Score;
            return str == null ? "" : str;
        }

        public String getUpdateTime() {
            return this.UpdateTime;
        }

        public void setCIds(String str) {
            this.CIds = str;
        }

        public void setCName(String str) {
            this.CName = str;
        }

        public void setDesc(String str) {
            this.Desc = str;
        }

        public void setHostKey(String str) {
            this.HostKey = str;
        }

        public void setId(int i) {
            this.Id = i;
        }

        public void setImg(String str) {
            this.Img = str;
        }

        public void setJishu(String str) {
            this.jishu = str;
        }

        public void setLastChapter(String str) {
            this.LastChapter = str;
        }

        public void setLeble(String str) {
            this.Leble = str;
        }

        public void setName(String str) {
            this.Name = str;
        }

        public void setParentName(String str) {
            this.ParentName = str;
        }

        public void setQuality(String str) {
            this.Quality = str;
        }

        public void setScore(String str) {
            this.Score = str;
        }

        public void setUpdateTime(String str) {
            this.UpdateTime = str;
        }
    }

    public String getArea() {
        return this.Area;
    }

    public String getAuthor() {
        return this.Author;
    }

    public int getCId() {
        return this.CId;
    }

    public String getCIds() {
        String str = this.CIds;
        return str == null ? "" : str;
    }

    public String getCName() {
        return this.CName;
    }

    public String getDesc() {
        return this.Desc;
    }

    public String getHostKey() {
        return this.HostKey;
    }

    public String getId() {
        String str = this.Id;
        return str == null ? "" : str;
    }

    public String getImg() {
        return this.Img;
    }

    public String getJishu() {
        return this.jishu;
    }

    public int getLastCId() {
        return this.LastCId;
    }

    public String getLastChapter() {
        return this.LastChapter;
    }

    public String getLeble() {
        String str = this.Leble;
        return str == null ? "" : str;
    }

    public String getName() {
        return this.Name;
    }

    public String getParentName() {
        String str = this.ParentName;
        return str == null ? "" : str;
    }

    public List<PlaysourcesBean> getPlaysources() {
        return this.Playsources;
    }

    public String getQuality() {
        return this.Quality;
    }

    public List<SameCategoryBooksBean> getSameCategoryBooks() {
        return this.SameCategoryBooks;
    }

    public String getScore() {
        String str = this.Score;
        return str == null ? "" : str;
    }

    public String getStar() {
        return this.Star;
    }

    public String getUpdateTime() {
        return this.UpdateTime;
    }

    public String getVintage() {
        return this.Vintage;
    }

    public boolean isCopyrightFlag() {
        return this.CopyrightFlag;
    }

    public void setArea(String str) {
        this.Area = str;
    }

    public void setAuthor(String str) {
        this.Author = str;
    }

    public void setCId(int i) {
        this.CId = i;
    }

    public void setCIds(String str) {
        this.CIds = str;
    }

    public void setCName(String str) {
        this.CName = str;
    }

    public void setCopyrightFlag(boolean z) {
        this.CopyrightFlag = z;
    }

    public void setDesc(String str) {
        this.Desc = str;
    }

    public void setHostKey(String str) {
        this.HostKey = str;
    }

    public void setId(String str) {
        this.Id = str;
    }

    public void setImg(String str) {
        this.Img = str;
    }

    public void setJishu(String str) {
        this.jishu = str;
    }

    public void setLastCId(int i) {
        this.LastCId = i;
    }

    public void setLastChapter(String str) {
        this.LastChapter = str;
    }

    public void setLeble(String str) {
        this.Leble = str;
    }

    public void setName(String str) {
        this.Name = str;
    }

    public void setParentName(String str) {
        this.ParentName = str;
    }

    public void setPlaysources(List<PlaysourcesBean> list) {
        this.Playsources = list;
    }

    public void setQuality(String str) {
        this.Quality = str;
    }

    public void setSameCategoryBooks(List<SameCategoryBooksBean> list) {
        this.SameCategoryBooks = list;
    }

    public void setScore(String str) {
        this.Score = str;
    }

    public void setStar(String str) {
        this.Star = str;
    }

    public void setUpdateTime(String str) {
        this.UpdateTime = str;
    }

    public void setVintage(String str) {
        this.Vintage = str;
    }
}
