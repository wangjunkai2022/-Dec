package com.biquge.ebook.app.bean;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes8.dex */
public class StoreBean implements Serializable {
    public static final long serialVersionUID = 3910496509282619617L;
    public List<BannerBean> banner;
    public List<HomenavmenuBean> homenavmenu;
    public List<ListBean> list;
    public String moreapi;
    public boolean sc_hide_nav;
    public List<TopTabsBean> topTabs;
    public int topTabsIndex;
    public String topTabsStyle;

    /* loaded from: classes8.dex */
    public static class BannerBean implements Serializable {
        public static final long serialVersionUID = -3600667003644826547L;
        public String imgurl;
        public String param;
        public String type;

        public String getImgurl() {
            return this.imgurl;
        }

        public String getParam() {
            return this.param;
        }

        public String getType() {
            return this.type;
        }

        public void setImgurl(String str) {
            this.imgurl = str;
        }

        public void setParam(String str) {
            this.param = str;
        }

        public void setType(String str) {
            this.type = str;
        }
    }

    /* loaded from: classes8.dex */
    public static class ListBean implements Serializable {
        public static final long serialVersionUID = -6669918714796937669L;
        public List<Book> Books;
        public String Category;
        public String ChangeFlag;
        public String DataType;
        public String More;
        public String MoreFlag;
        public String NavIcon;
        public String ViewType;

        public List<Book> getBooks() {
            return this.Books;
        }

        public String getCategory() {
            return this.Category;
        }

        public String getChangeFlag() {
            return this.ChangeFlag;
        }

        public String getMore() {
            return this.More;
        }

        public String getMoreFlag() {
            return this.MoreFlag;
        }

        public String getNavIcon() {
            return this.NavIcon;
        }

        public String getViewType() {
            return this.ViewType;
        }

        public boolean isNovel() {
            return TextUtils.isEmpty(this.DataType) || "novel".equals(this.DataType);
        }

        public void setBooks(List<Book> list) {
            this.Books = list;
        }

        public void setCategory(String str) {
            this.Category = str;
        }

        public void setChangeFlag(String str) {
            this.ChangeFlag = str;
        }

        public void setDataType(String str) {
            this.DataType = str;
        }

        public void setMore(String str) {
            this.More = str;
        }

        public void setMoreFlag(String str) {
            this.MoreFlag = str;
        }

        public void setNavIcon(String str) {
            this.NavIcon = str;
        }

        public void setViewType(String str) {
            this.ViewType = str;
        }
    }

    /* loaded from: classes8.dex */
    public static class TopTabsBean implements Serializable {
        public static final long serialVersionUID = -7340598275387632775L;
        public List<Book> BookList;
        public String Category;
        public String ViewType;

        public List<Book> getBookList() {
            return this.BookList;
        }

        public String getCategory() {
            return this.Category;
        }

        public String getViewType() {
            return this.ViewType;
        }

        public void setBookList(List<Book> list) {
            this.BookList = list;
        }

        public void setCategory(String str) {
            this.Category = str;
        }

        public void setViewType(String str) {
            this.ViewType = str;
        }
    }

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public List<HomenavmenuBean> getHomenavmenu() {
        return this.homenavmenu;
    }

    public List<ListBean> getList() {
        return this.list;
    }

    public String getMoreapi() {
        return this.moreapi;
    }

    public List<TopTabsBean> getTopTabs() {
        return this.topTabs;
    }

    public int getTopTabsIndex() {
        return this.topTabsIndex;
    }

    public String getTopTabsStyle() {
        return this.topTabsStyle;
    }

    public boolean isSc_hide_nav() {
        return this.sc_hide_nav;
    }

    public void setBanner(List<BannerBean> list) {
        this.banner = list;
    }

    public void setHomenavmenu(List<HomenavmenuBean> list) {
        this.homenavmenu = list;
    }

    public void setList(List<ListBean> list) {
        this.list = list;
    }

    public void setMoreapi(String str) {
        this.moreapi = str;
    }

    public void setSc_hide_nav(boolean z) {
        this.sc_hide_nav = z;
    }

    public void setTopTabs(List<TopTabsBean> list) {
        this.topTabs = list;
    }

    public void setTopTabsIndex(int i) {
        this.topTabsIndex = i;
    }

    public void setTopTabsStyle(String str) {
        this.topTabsStyle = str;
    }
}
