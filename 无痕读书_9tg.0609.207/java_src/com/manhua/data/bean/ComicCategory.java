package com.manhua.data.bean;

import androidx.annotation.NonNull;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.google.gson.annotations.SerializedName;
import com.tencent.bugly.Bugly;
import java.io.Serializable;
/* loaded from: classes8.dex */
public class ComicCategory implements Serializable, MultiItemEntity, Comparable<ComicCategory> {
    public static final long serialVersionUID = 801884335337226265L;
    public int Count;
    public String Image;
    public String Name;
    @SerializedName("Id")
    public String cId;
    public int itemType;
    public String select;
    public String sex;
    public int sort;

    public String getCId() {
        String str = this.cId;
        return str == null ? "" : str;
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
        return this.Name;
    }

    public String getSelect() {
        return this.select;
    }

    public String getSex() {
        String str = this.sex;
        return str == null ? "" : str;
    }

    public int getSort() {
        return this.sort;
    }

    public boolean isMan() {
        return "1".equals(this.sex);
    }

    public boolean isSelect() {
        return "true".equals(this.select);
    }

    public void setCount(int i) {
        this.Count = i;
    }

    public void setImage(String str) {
        this.Image = str;
    }

    public void setItemType(int i) {
        this.itemType = i;
    }

    public void setName(String str) {
        this.Name = str;
    }

    public void setSelect(boolean z) {
        this.select = z ? "true" : Bugly.SDK_IS_DEV;
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
    public int compareTo(@NonNull ComicCategory comicCategory) {
        return this.sort - comicCategory.getSort();
    }
}
