package com.biquge.ebook.app.bean;

import androidx.annotation.NonNull;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.google.gson.annotations.SerializedName;
import com.tencent.bugly.Bugly;
import java.io.Serializable;

/* loaded from: classes8.dex */
public class NovelCategory implements Serializable, MultiItemEntity, Comparable<NovelCategory> {
    public static final long serialVersionUID = 3981071618647454714L;
    public int Count;
    public String Image;
    public String Name;
    @SerializedName("Id")
    public String cId;
    public int categoryType;
    public boolean is_cat;
    public boolean is_hot;
    public int itemType;
    public String py;
    public String select;
    public String sex;
    public int sort;

    public String getCId() {
        String str = this.cId;
        return str == null ? "" : str;
    }

    public int getCategoryType() {
        return this.categoryType;
    }

    public int getCount() {
        return this.Count;
    }

    public String getImage() {
        String str = this.Image;
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

    public String getName() {
        return getName(false);
    }

    public String getPy() {
        String str = this.py;
        return str == null ? "" : str;
    }

    public String getSelect() {
        String str = this.select;
        return str == null ? "" : str;
    }

    public String getSex() {
        String str = this.sex;
        return str == null ? "" : str;
    }

    public int getSort() {
        return this.sort;
    }

    public boolean isSelect() {
        return "true".equals(this.select);
    }

    public boolean is_cat() {
        return this.is_cat;
    }

    public boolean is_hot() {
        return this.is_hot;
    }

    public void setCategoryType(int i) {
        this.categoryType = i;
    }

    public void setCount(int i) {
        this.Count = i;
    }

    public void setImage(String str) {
        this.Image = str;
    }

    public void setIs_cat(boolean z) {
        this.is_cat = z;
    }

    public void setIs_hot(boolean z) {
        this.is_hot = z;
    }

    public void setItemType(int i) {
        this.itemType = i;
    }

    public void setName(String str) {
        this.Name = str;
    }

    public void setPy(String str) {
        this.py = str;
    }

    public void setSelect(String str) {
        this.select = str;
    }

    public void setSex(String str) {
        this.sex = str;
    }

    public void setSort(int i) {
        this.sort = i;
    }

    public void setcId(String str) {
        this.cId = str;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull NovelCategory novelCategory) {
        return this.sort - novelCategory.getSort();
    }

    public String getName(boolean z) {
        String str = this.Name;
        return str == null ? "" : z ? str.length() > 2 ? this.Name.substring(0, 2) : this.Name : str;
    }

    public void setSelect(boolean z) {
        this.select = z ? "true" : Bugly.SDK_IS_DEV;
    }
}
