package com.biquge.ebook.app.bean;

import android.text.TextUtils;
import com.baidu.tts.client.SpeechSynthesizer;
import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class TaskInfo extends LitePalSupport {
    public String bookId;
    public String finish = SpeechSynthesizer.REQUEST_DNS_OFF;
    public String name;
    public String url;

    public TaskInfo(String str, String str2) {
        this.name = str;
        this.url = str2;
    }

    public String getBookId() {
        if (TextUtils.isEmpty(this.bookId)) {
            return this.url;
        }
        return this.bookId;
    }

    public String getFinish() {
        return this.finish;
    }

    public String getName() {
        return this.name;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isFinishTask(String str) {
        return "1".equals(str);
    }

    public void setBookId(String str) {
        this.bookId = str;
    }

    public void setFinish(String str) {
        this.finish = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
