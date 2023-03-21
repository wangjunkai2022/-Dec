package com.expand.listen.bean;

import java.util.List;

/* loaded from: classes8.dex */
public class ListenDetail {
    public String Author;
    public String BookStatus;
    public String BookVerify;
    public BookVoteBean BookVote;
    public String CId;
    public String CName;
    public String Declare;
    public String Desc;
    public String FirstChapterId;
    public String FirstChapterUrl;
    public String Id;
    public String Img;
    public String ImgKey;
    public boolean IsLimit;
    public String LastChapter;
    public String LastChapterId;
    public String LastChapterUrl;
    public String LastTime;
    public String ListenCount;
    public boolean Monthly;
    public String Name;
    public String PlayAuthor;
    public List<SameCategoryBooksBean> SameCategoryBooks;
    public List<?> SameUserBooks;
    public String Score;
    public String UpUser;
    public String Words;

    /* loaded from: classes8.dex */
    public static class BookVoteBean {
        public int BookId;
        public double Score;
        public int TotalScore;
        public int VoterCount;

        public int getBookId() {
            return this.BookId;
        }

        public double getScore() {
            return this.Score;
        }

        public int getTotalScore() {
            return this.TotalScore;
        }

        public int getVoterCount() {
            return this.VoterCount;
        }

        public void setBookId(int i) {
            this.BookId = i;
        }

        public void setScore(double d) {
            this.Score = d;
        }

        public void setTotalScore(int i) {
            this.TotalScore = i;
        }

        public void setVoterCount(int i) {
            this.VoterCount = i;
        }
    }

    /* loaded from: classes8.dex */
    public static class SameCategoryBooksBean {
        public String Author;
        public int Id;
        public String Img;
        public String ImgKey;
        public String LastChapter;
        public int LastChapterId;
        public String Name;
        public double Score;

        public String getAuthor() {
            return this.Author;
        }

        public int getId() {
            return this.Id;
        }

        public String getImg() {
            return this.Img;
        }

        public String getImgKey() {
            return this.ImgKey;
        }

        public String getLastChapter() {
            return this.LastChapter;
        }

        public int getLastChapterId() {
            return this.LastChapterId;
        }

        public String getName() {
            return this.Name;
        }

        public double getScore() {
            return this.Score;
        }

        public void setAuthor(String str) {
            this.Author = str;
        }

        public void setId(int i) {
            this.Id = i;
        }

        public void setImg(String str) {
            this.Img = str;
        }

        public void setImgKey(String str) {
            this.ImgKey = str;
        }

        public void setLastChapter(String str) {
            this.LastChapter = str;
        }

        public void setLastChapterId(int i) {
            this.LastChapterId = i;
        }

        public void setName(String str) {
            this.Name = str;
        }

        public void setScore(double d) {
            this.Score = d;
        }
    }

    public String getAuthor() {
        return this.Author;
    }

    public String getBookStatus() {
        return this.BookStatus;
    }

    public String getBookVerify() {
        String str = this.BookVerify;
        return str == null ? "" : str;
    }

    public BookVoteBean getBookVote() {
        return this.BookVote;
    }

    public String getCId() {
        String str = this.CId;
        return str == null ? "" : str;
    }

    public String getCName() {
        return this.CName;
    }

    public String getDeclare() {
        return this.Declare;
    }

    public String getDesc() {
        return this.Desc;
    }

    public String getFirstChapterId() {
        String str = this.FirstChapterId;
        return str == null ? "" : str;
    }

    public String getFirstChapterUrl() {
        return this.FirstChapterUrl;
    }

    public String getId() {
        return this.Id;
    }

    public String getImg() {
        return this.Img;
    }

    public String getImgKey() {
        return this.ImgKey;
    }

    public String getLastChapter() {
        return this.LastChapter;
    }

    public String getLastChapterId() {
        String str = this.LastChapterId;
        return str == null ? "" : str;
    }

    public String getLastChapterUrl() {
        return this.LastChapterUrl;
    }

    public String getLastTime() {
        return this.LastTime;
    }

    public String getListenCount() {
        return this.ListenCount;
    }

    public String getName() {
        return this.Name;
    }

    public String getPlayAuthor() {
        return this.PlayAuthor;
    }

    public List<SameCategoryBooksBean> getSameCategoryBooks() {
        return this.SameCategoryBooks;
    }

    public List<?> getSameUserBooks() {
        return this.SameUserBooks;
    }

    public String getScore() {
        return this.Score;
    }

    public String getUpUser() {
        return this.UpUser;
    }

    public String getWords() {
        return this.Words;
    }

    public boolean isIsLimit() {
        return this.IsLimit;
    }

    public boolean isLimit() {
        return this.IsLimit;
    }

    public boolean isMonthly() {
        return this.Monthly;
    }

    public void setAuthor(String str) {
        this.Author = str;
    }

    public void setBookStatus(String str) {
        this.BookStatus = str;
    }

    public void setBookVerify(String str) {
        this.BookVerify = str;
    }

    public void setBookVote(BookVoteBean bookVoteBean) {
        this.BookVote = bookVoteBean;
    }

    public void setCId(String str) {
        this.CId = str;
    }

    public void setCName(String str) {
        this.CName = str;
    }

    public void setDeclare(String str) {
        this.Declare = str;
    }

    public void setDesc(String str) {
        this.Desc = str;
    }

    public void setFirstChapterId(String str) {
        this.FirstChapterId = str;
    }

    public void setFirstChapterUrl(String str) {
        this.FirstChapterUrl = str;
    }

    public void setId(String str) {
        this.Id = str;
    }

    public void setImg(String str) {
        this.Img = str;
    }

    public void setImgKey(String str) {
        this.ImgKey = str;
    }

    public void setIsLimit(boolean z) {
        this.IsLimit = z;
    }

    public void setLastChapter(String str) {
        this.LastChapter = str;
    }

    public void setLastChapterId(String str) {
        this.LastChapterId = str;
    }

    public void setLastChapterUrl(String str) {
        this.LastChapterUrl = str;
    }

    public void setLastTime(String str) {
        this.LastTime = str;
    }

    public void setLimit(boolean z) {
        this.IsLimit = z;
    }

    public void setListenCount(String str) {
        this.ListenCount = str;
    }

    public void setMonthly(boolean z) {
        this.Monthly = z;
    }

    public void setName(String str) {
        this.Name = str;
    }

    public void setPlayAuthor(String str) {
        this.PlayAuthor = str;
    }

    public void setSameCategoryBooks(List<SameCategoryBooksBean> list) {
        this.SameCategoryBooks = list;
    }

    public void setSameUserBooks(List<?> list) {
        this.SameUserBooks = list;
    }

    public void setScore(String str) {
        this.Score = str;
    }

    public void setUpUser(String str) {
        this.UpUser = str;
    }

    public void setWords(String str) {
        this.Words = str;
    }
}
