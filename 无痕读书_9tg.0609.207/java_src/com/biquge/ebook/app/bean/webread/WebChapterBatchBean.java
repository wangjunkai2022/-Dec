package com.biquge.ebook.app.bean.webread;

import java.io.Serializable;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class WebChapterBatchBean extends LitePalSupport implements Serializable {
    public static final long serialVersionUID = -2483899703846686893L;
    public String nextUrl;
    public String novelId;
    public String preUrl;
    public String url;

    public String getNextUrl() {
        String str = this.nextUrl;
        return str == null ? "" : str;
    }

    public String getNovelId() {
        String str = this.novelId;
        return str == null ? "" : str;
    }

    public String getPreUrl() {
        String str = this.preUrl;
        return str == null ? "" : str;
    }

    public String getUrl() {
        String str = this.url;
        return str == null ? "" : str;
    }

    public void setNextUrl(String str) {
        this.nextUrl = str;
    }

    public void setNovelId(String str) {
        this.novelId = str;
    }

    public void setPreUrl(String str) {
        this.preUrl = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
