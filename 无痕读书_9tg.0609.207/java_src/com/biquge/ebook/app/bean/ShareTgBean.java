package com.biquge.ebook.app.bean;

import java.io.Serializable;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class ShareTgBean extends LitePalSupport implements Serializable {
    public static final long serialVersionUID = -3695633065544827424L;
    public String code;
    public String createTime;

    public String getCode() {
        return this.code;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }
}
