package com.manhua.data.bean;

import android.text.TextUtils;
import com.baidu.tts.loopj.SimpleMultipartEntity;
import com.biquge.ebook.app.bean.CommendMediaListNameBean;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes8.dex */
public class ComicBean implements Serializable, MultiItemEntity {
    public static final long serialVersionUID = -8936838133088785335L;
    public String Author;
    public String BookStatus;
    public BookVoteNameBean BookVote;
    public int CId;
    public String CName;
    public List<String> CloudList;
    public List<CommendMediaListNameBean> CommendMediaList;
    public String Desc;
    public String FirstChapterId;
    public String HostKey;
    public String Hot;
    public String Id;
    public String Img;
    public String LastChapter;
    public String LastChapterId;
    public String LastTime;
    public String Name;
    public List<SameCategoryBooksNameBean> SameCategoryBooks;
    public List<SameUserBooksNameBean> SameUserBooks;
    public float Score;
    public String Tag;
    public String UpUser;
    public String UpdateCycle;
    public String UpdateTime;
    public String categoryTitle;
    public String changeFlag;
    public List<ComicBean> datas;
    public boolean isCartton = true;
    public int itemType;
    public String more;
    public String moreFlag;
    public String navIcon;
    public String viewType;

    /* loaded from: classes8.dex */
    public static class BookVoteNameBean implements Serializable {
        public static final long serialVersionUID = -8171307141475866496L;
        public String BookId;
        public float Score;
        public String TotalScore;
        public String VoterCount;

        public String getBookId() {
            String str = this.BookId;
            return str == null ? "" : str;
        }

        public float getScore() {
            return this.Score;
        }

        public String getTotalScore() {
            String str = this.TotalScore;
            return str == null ? "" : str;
        }

        public String getVoterCount() {
            String str = this.VoterCount;
            return str == null ? "" : str;
        }

        public void setBookId(String str) {
            this.BookId = str;
        }

        public void setScore(float f) {
            this.Score = f;
        }

        public void setTotalScore(String str) {
            this.TotalScore = str;
        }

        public void setVoterCount(String str) {
            this.VoterCount = str;
        }
    }

    /* loaded from: classes8.dex */
    public static class SameCategoryBooksNameBean implements Serializable {
        public static final long serialVersionUID = 8951858911349231844L;
        public String Id;
        public String Img;
        public String Name;

        public String getId() {
            String str = this.Id;
            return str == null ? "" : str;
        }

        public String getImg() {
            String str = this.Img;
            return str == null ? "" : str;
        }

        public String getName() {
            String str = this.Name;
            return str == null ? "" : str;
        }

        public void setId(String str) {
            this.Id = str;
        }

        public void setImg(String str) {
            this.Img = str;
        }

        public void setName(String str) {
            this.Name = str;
        }
    }

    /* loaded from: classes8.dex */
    public static class SameUserBooksNameBean implements Serializable {
        public static final long serialVersionUID = -1302774816908029816L;
        public String Author;
        public String Id;
        public String Img;
        public String LastChapter;
        public String LastChapterId;
        public String Name;

        public String getAuthor() {
            String str = this.Author;
            return str == null ? "" : str;
        }

        public String getId() {
            String str = this.Id;
            return str == null ? "" : str;
        }

        public String getImg() {
            String str = this.Img;
            return str == null ? "" : str;
        }

        public String getLastChapter() {
            String str = this.LastChapter;
            return str == null ? "" : str;
        }

        public String getLastChapterId() {
            String str = this.LastChapterId;
            return str == null ? "" : str;
        }

        public String getName() {
            String str = this.Name;
            return str == null ? "" : str;
        }

        public void setAuthor(String str) {
            this.Author = str;
        }

        public void setId(String str) {
            this.Id = str;
        }

        public void setImg(String str) {
            this.Img = str;
        }

        public void setLastChapter(String str) {
            this.LastChapter = str;
        }

        public void setLastChapterId(String str) {
            this.LastChapterId = str;
        }

        public void setName(String str) {
            this.Name = str;
        }
    }

    public String getAuthor() {
        String str = this.Author;
        return str == null ? "" : str;
    }

    public String getBookStatus() {
        String str = this.BookStatus;
        return str == null ? "" : str;
    }

    public BookVoteNameBean getBookVote() {
        BookVoteNameBean bookVoteNameBean = this.BookVote;
        return bookVoteNameBean != null ? bookVoteNameBean : new BookVoteNameBean();
    }

    public int getCId() {
        return this.CId;
    }

    public String getCName() {
        String str = this.CName;
        return str == null ? "" : str;
    }

    public String getCategoryTitle() {
        String str = this.categoryTitle;
        return str == null ? "" : str;
    }

    public String getChangeFlag() {
        String str = this.changeFlag;
        return str == null ? "" : str;
    }

    public List<String> getCloudList() {
        List<String> list = this.CloudList;
        return list == null ? new ArrayList() : list;
    }

    public List<CommendMediaListNameBean> getCommendMediaList() {
        List<CommendMediaListNameBean> list = this.CommendMediaList;
        return list == null ? new ArrayList() : list;
    }

    public List<ComicBean> getDatas() {
        return this.datas;
    }

    public String getDesc() {
        String str = this.Desc;
        return str == null ? "" : str.replace("<br/>", SimpleMultipartEntity.STR_CR_LF);
    }

    public String getFirstChapterId() {
        String str = this.FirstChapterId;
        return str == null ? "" : str;
    }

    public String getHostKey() {
        String str = this.HostKey;
        return str == null ? "" : str;
    }

    public String getHot() {
        String str = this.Hot;
        return str == null ? "" : str;
    }

    public String getId() {
        String str = this.Id;
        return str == null ? "" : str;
    }

    public String getImg() {
        String str = this.Img;
        return str == null ? "" : str;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        int i = this.itemType;
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public String getLastChapter() {
        String str = this.LastChapter;
        return str == null ? "" : str;
    }

    public String getLastChapterId() {
        String str = this.LastChapterId;
        return str == null ? "" : str;
    }

    public String getLastTime() {
        String str = this.LastTime;
        return str == null ? "" : str;
    }

    public String getMore() {
        String str = this.more;
        return str == null ? "" : str;
    }

    public String getMoreFlag() {
        String str = this.moreFlag;
        return str == null ? "" : str;
    }

    public String getName() {
        String str = this.Name;
        return str == null ? "" : str;
    }

    public String getNavIcon() {
        String str = this.navIcon;
        return str == null ? "" : str;
    }

    public List<SameCategoryBooksNameBean> getSameCategoryBooks() {
        List<SameCategoryBooksNameBean> list = this.SameCategoryBooks;
        return list == null ? new ArrayList() : list;
    }

    public List<SameUserBooksNameBean> getSameUserBooks() {
        List<SameUserBooksNameBean> list = this.SameUserBooks;
        return list == null ? new ArrayList() : list;
    }

    public float getScore() {
        return this.Score;
    }

    public String getTag() {
        String str = this.Tag;
        return str == null ? "" : str;
    }

    public String getUpUser() {
        String str = this.UpUser;
        return str == null ? "" : str;
    }

    public String getUpdateCycle() {
        String str = this.UpdateCycle;
        return str == null ? "" : str;
    }

    public String getUpdateTime() {
        if (TextUtils.isEmpty(this.UpdateTime)) {
            this.UpdateTime = getLastTime();
        }
        String str = this.UpdateTime;
        return str == null ? "" : str;
    }

    public String getViewType() {
        String str = this.viewType;
        return str == null ? "" : str;
    }

    public boolean isCartton() {
        return this.isCartton;
    }

    public void setAuthor(String str) {
        this.Author = str;
    }

    public void setBookStatus(String str) {
        this.BookStatus = str;
    }

    public void setBookVote(BookVoteNameBean bookVoteNameBean) {
        this.BookVote = bookVoteNameBean;
    }

    public void setCId(int i) {
        this.CId = i;
    }

    public void setCName(String str) {
        this.CName = str;
    }

    public void setCartton(boolean z) {
        this.isCartton = z;
    }

    public void setCategoryTitle(String str) {
        this.categoryTitle = str;
    }

    public void setChangeFlag(String str) {
        this.changeFlag = str;
    }

    public void setCloudList(List<String> list) {
        this.CloudList = list;
    }

    public void setCommendMediaList(List<CommendMediaListNameBean> list) {
        this.CommendMediaList = list;
    }

    public void setDatas(List<ComicBean> list) {
        this.datas = list;
    }

    public void setDesc(String str) {
        this.Desc = str;
    }

    public void setFirstChapterId(String str) {
        this.FirstChapterId = str;
    }

    public void setHostKey(String str) {
        this.HostKey = str;
    }

    public void setHot(String str) {
        this.Hot = str;
    }

    public void setId(String str) {
        this.Id = str;
    }

    public void setImg(String str) {
        this.Img = str;
    }

    public void setItemType(int i) {
        this.itemType = i;
    }

    public void setLastChapter(String str) {
        this.LastChapter = str;
    }

    public void setLastChapterId(String str) {
        this.LastChapterId = str;
    }

    public void setLastTime(String str) {
        this.LastTime = str;
    }

    public void setMore(String str) {
        this.more = str;
    }

    public void setMoreFlag(String str) {
        this.moreFlag = str;
    }

    public void setName(String str) {
        this.Name = str;
    }

    public void setNavIcon(String str) {
        this.navIcon = str;
    }

    public void setSameCategoryBooks(List<SameCategoryBooksNameBean> list) {
        this.SameCategoryBooks = list;
    }

    public void setSameUserBooks(List<SameUserBooksNameBean> list) {
        this.SameUserBooks = list;
    }

    public void setScore(float f) {
        this.Score = f;
    }

    public void setTag(String str) {
        this.Tag = str;
    }

    public void setUpUser(String str) {
        this.UpUser = str;
    }

    public void setUpdateCycle(String str) {
        this.UpdateCycle = str;
    }

    public void setUpdateTime(String str) {
        this.UpdateTime = str;
    }

    public void setViewType(String str) {
        this.viewType = str;
    }
}
