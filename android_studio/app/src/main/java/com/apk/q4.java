package com.apk;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.biquge.ebook.app.bean.CollectBook;
import java.util.HashMap;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* compiled from: NovelShelfPresenter.java */
/* loaded from: classes8.dex */
public class q4 extends c1<String> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ t4 f3796do;

    public q4(t4 t4Var) {
        this.f3796do = t4Var;
    }

    @Override // com.apk.c1
    public String doInBackground() {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("action", "bookcaselimit");
            JSONObject m2953extends = x4.m2953extends(w.m2854package(), hashMap);
            if (m2953extends != null) {
                if (m2953extends.optInt(NotificationCompat.CATEGORY_STATUS) != 1) {
                    if (this.f3796do.f4635for != null) {
                        this.f3796do.f4635for.mo2774case(ze.q(R.string.app_please_login_txt));
                    }
                } else {
                    JSONObject optJSONObject = m2953extends.optJSONObject("data");
                    boolean optBoolean = optJSONObject.optBoolean("isclose");
                    boolean optBoolean2 = optJSONObject.optBoolean("canupload");
                    if (optBoolean) {
                        if (this.f3796do.f4635for != null) {
                            this.f3796do.f4635for.mo2774case(ze.q(R.string.upload_progress_failed));
                        }
                    } else if (!optBoolean2) {
                        if (optJSONObject.optInt("alreadyuse") >= optJSONObject.optInt("caselimit")) {
                            if (this.f3796do.f4635for != null) {
                                this.f3796do.f4635for.mo2774case(ze.q(R.string.upload_progress_max));
                            }
                        } else if (this.f3796do.f4635for != null) {
                            this.f3796do.f4635for.mo2774case(ze.q(R.string.upload_progress_wait));
                        }
                    } else {
                        List<CollectBook> b = n2.b();
                        int size = b.size();
                        int i = 0;
                        int i2 = 0;
                        for (CollectBook collectBook : b) {
                            i2++;
                            if (collectBook.isLocalBook()) {
                                if (this.f3796do.f4635for != null) {
                                    v5 v5Var = this.f3796do.f4635for;
                                    v5Var.mo2776else(i2 + " / " + size);
                                }
                            } else {
                                try {
                                    HashMap hashMap2 = new HashMap();
                                    hashMap2.put("action", "addbookmark");
                                    hashMap2.put("bookid", collectBook.getCollectId());
                                    hashMap2.put("chapterid", collectBook.getReadChapterId());
                                    hashMap2.put("chaptername", collectBook.getReadChapterName());
                                    JSONObject m2953extends2 = x4.m2953extends(w.m2854package(), hashMap2);
                                    if (m2953extends2 != null && m2953extends2.optInt(NotificationCompat.CATEGORY_STATUS) != 0 && m2953extends2.optJSONObject("data").optInt("result") == 1) {
                                        i++;
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                                if (this.f3796do.f4635for != null) {
                                    v5 v5Var2 = this.f3796do.f4635for;
                                    v5Var2.mo2776else(i2 + " / " + size);
                                }
                            }
                        }
                        if (size == i) {
                            return ze.q(R.string.upload_progress_success);
                        }
                        return ze.q(R.string.upload_progress_finish_error_count);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return (String) super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(String str) {
        String str2 = str;
        super.onPostExecute(str2);
        if (!TextUtils.isEmpty(str2)) {
            ze.c0(this.f3796do.f3559do, str2, null, false);
        }
        v5 v5Var = this.f3796do.f4635for;
        if (v5Var != null) {
            v5Var.mo2775do();
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        v5 v5Var = this.f3796do.f4635for;
        if (v5Var != null) {
            v5Var.mo2780try(ze.q(R.string.progress_dialog_holdon));
        }
    }
}
