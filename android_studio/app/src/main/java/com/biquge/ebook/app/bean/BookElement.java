package com.biquge.ebook.app.bean;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import java.io.Serializable;
import org.litepal.crud.LitePalSupport;

/* loaded from: classes8.dex */
public class BookElement extends LitePalSupport implements Serializable, Comparable<BookElement>, MultiItemEntity {
    public static final long serialVersionUID = 3666799911330756412L;
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
        String str = this.AddTime;
        return str == null ? "" : str;
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
        String str = this.CommendImage;
        return str == null ? "" : str;
    }

    public String getCover() {
        String str = this.Cover;
        return str == null ? "" : str;
    }

    public String getDescription() {
        String str = this.Description;
        return str == null ? "" : str;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        return this.itemType;
    }

    public String getListId() {
        String str = this.ListId;
        return str == null ? "" : str;
    }

    public String getTitle() {
        String str = this.Title;
        return str == null ? "" : str;
    }

    public String getType() {
        String str = this.type;
        return str == null ? "" : str;
    }

    public String getUpdateTime() {
        String str = this.UpdateTime;
        return str == null ? "" : str;
    }

    public String getUserName() {
        String str = this.UserName;
        return str == null ? "" : str;
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
    public int compareTo(@NonNull BookElement bookElement) {
        return (!TextUtils.isEmpty(bookElement.UpdateTime) ? bookElement.UpdateTime : bookElement.AddTime).replace("-", "/").compareTo((!TextUtils.isEmpty(this.UpdateTime) ? this.UpdateTime : this.AddTime).replace("-", "/"));
    }
}
