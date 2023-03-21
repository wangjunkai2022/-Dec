package com.manhua.data.bean;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import java.io.Serializable;
import org.litepal.crud.LitePalSupport;

/* loaded from: classes8.dex */
public class ComicElement extends LitePalSupport implements Serializable, Comparable<ComicElement>, MultiItemEntity {
    public static final long serialVersionUID = 4911721583294825191L;
    public String AddTime;
    public int BookCount;
    public int CollectionCount;
    public int CommendCount;
    public String CommendImage;
    public String Cover;
    public String Description;
    public boolean ForMan;
    public boolean IsCheck;
    public String ListId;
    public String Title;
    public String UpdateTime;
    public String UserName;
    public int itemType;
    public String type;

    public String getAddTime() {
        return this.AddTime;
    }

    public int getBookCount() {
        return this.BookCount;
    }

    public int getCollectionCount() {
        return this.CollectionCount;
    }

    public int getCommendCount() {
        return this.CommendCount;
    }

    public String getCommendImage() {
        return this.CommendImage;
    }

    public String getCover() {
        return this.Cover;
    }

    public String getDescription() {
        return this.Description;
    }

    public boolean getForMan() {
        return this.ForMan;
    }

    public boolean getIsCheck() {
        return this.IsCheck;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        return this.itemType;
    }

    public String getListId() {
        return this.ListId;
    }

    public String getTitle() {
        return this.Title;
    }

    public String getType() {
        return this.type;
    }

    public String getUpdateTime() {
        return this.UpdateTime;
    }

    public String getUserName() {
        return this.UserName;
    }

    public boolean isCheck() {
        return this.IsCheck;
    }

    public boolean isForMan() {
        return this.ForMan;
    }

    public void setAddTime(String str) {
        this.AddTime = str;
    }

    public void setBookCount(int i) {
        this.BookCount = i;
    }

    public void setCheck(boolean z) {
        this.IsCheck = z;
    }

    public void setCollectionCount(int i) {
        this.CollectionCount = i;
    }

    public void setCommendCount(int i) {
        this.CommendCount = i;
    }

    public void setCommendImage(String str) {
        this.CommendImage = str;
    }

    public void setCover(String str) {
        this.Cover = str;
    }

    public void setDescription(String str) {
        this.Description = str;
    }

    public void setForMan(boolean z) {
        this.ForMan = z;
    }

    public void setIsCheck(boolean z) {
        this.IsCheck = z;
    }

    public void setItemType(int i) {
        this.itemType = i;
    }

    public void setListId(String str) {
        this.ListId = str;
    }

    public void setTitle(String str) {
        this.Title = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUpdateTime(String str) {
        this.UpdateTime = str;
    }

    public void setUserName(String str) {
        this.UserName = str;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull ComicElement comicElement) {
        return (!TextUtils.isEmpty(comicElement.UpdateTime) ? comicElement.UpdateTime : comicElement.AddTime).replace("-", "/").compareTo((!TextUtils.isEmpty(this.UpdateTime) ? this.UpdateTime : this.AddTime).replace("-", "/"));
    }
}
