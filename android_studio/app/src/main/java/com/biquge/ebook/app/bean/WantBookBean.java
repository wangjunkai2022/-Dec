package com.biquge.ebook.app.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes8.dex */
public class WantBookBean implements Serializable {
    public static final long serialVersionUID = -8137410160015859269L;
    public List<WantProgressBean> list;

    /* loaded from: classes8.dex */
    public static class WantProgressBean implements Serializable {
        public static final long serialVersionUID = 689150555824545112L;
        public String Author;
        public String BookId;
        public String BookName;
        public int Count;
        public String CreateTime;
        public String Id;
        public int IsPass;
        public int Threshold;
        public String Type;

        public String getAuthor() {
            return this.Author;
        }

        public String getBookId() {
            return this.BookId;
        }

        public String getBookName() {
            return this.BookName;
        }

        public int getCount() {
            return this.Count;
        }

        public String getCreateTime() {
            return this.CreateTime;
        }

        public String getId() {
            return this.Id;
        }

        public int getIsPass() {
            return this.IsPass;
        }

        public int getThreshold() {
            return this.Threshold;
        }

        public String getType() {
            return this.Type;
        }

        public void setAuthor(String str) {
            this.Author = str;
        }

        public void setBookId(String str) {
            this.BookId = str;
        }

        public void setBookName(String str) {
            this.BookName = str;
        }

        public void setCount(int i) {
            this.Count = i;
        }

        public void setCreateTime(String str) {
            this.CreateTime = str;
        }

        public void setId(String str) {
            this.Id = str;
        }

        public void setIsPass(int i) {
            this.IsPass = i;
        }

        public void setThreshold(int i) {
            this.Threshold = i;
        }

        public void setType(String str) {
            this.Type = str;
        }
    }

    public List<WantProgressBean> getList() {
        List<WantProgressBean> list = this.list;
        return list == null ? new ArrayList() : list;
    }

    public void setList(List<WantProgressBean> list) {
        this.list = list;
    }
}
