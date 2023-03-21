package com.apk;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.manhua.data.bean.ComicCollectBean;
import java.util.HashMap;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* compiled from: ComicShelfPresenter.java */
/* loaded from: classes8.dex */
public class m3 extends c1<String> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ p3 f2976do;

    public m3(p3 p3Var) {
        this.f2976do = p3Var;
    }

    @Override // com.apk.c1
    public String doInBackground() {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("action", "bookcaselimit");
            JSONObject m2953extends = x4.m2953extends(w.m2849goto(), hashMap);
            if (m2953extends != null) {
                if (m2953extends.optInt(NotificationCompat.CATEGORY_STATUS) != 1) {
                    if (this.f2976do.f3567for != null) {
                        this.f2976do.f3567for.mo2382try(ze.q(R.string.app_please_login_txt));
                    }
                } else {
                    JSONObject optJSONObject = m2953extends.optJSONObject("data");
                    boolean optBoolean = optJSONObject.optBoolean("isclose");
                    boolean optBoolean2 = optJSONObject.optBoolean("canupload");
                    if (optBoolean) {
                        if (this.f2976do.f3567for != null) {
                            this.f2976do.f3567for.mo2382try(ze.q(R.string.upload_progress_failed));
                        }
                    } else if (!optBoolean2) {
                        if (optJSONObject.optInt("alreadyuse") >= optJSONObject.optInt("caselimit")) {
                            if (this.f2976do.f3567for != null) {
                                this.f2976do.f3567for.mo2382try(ze.q(R.string.upload_progress_max));
                            }
                        } else if (this.f2976do.f3567for != null) {
                            this.f2976do.f3567for.mo2382try(ze.q(R.string.upload_progress_wait));
                        }
                    } else {
                        List<ComicCollectBean> m1785synchronized = mu.m1785synchronized();
                        int size = m1785synchronized.size();
                        int i = 0;
                        int i2 = 0;
                        for (ComicCollectBean comicCollectBean : m1785synchronized) {
                            i2++;
                            if (comicCollectBean.isLocalBook(comicCollectBean.getFileType())) {
                                if (this.f2976do.f3567for != null) {
                                    s5 s5Var = this.f2976do.f3567for;
                                    s5Var.mo2377case(i2 + " / " + size);
                                }
                            } else {
                                try {
                                    HashMap hashMap2 = new HashMap();
                                    hashMap2.put("action", "addbookmark");
                                    hashMap2.put("bookid", comicCollectBean.getCollectId());
                                    hashMap2.put("chapterid", comicCollectBean.getReadChapterId());
                                    hashMap2.put("chaptername", comicCollectBean.getReadChapterName());
                                    JSONObject m2953extends2 = x4.m2953extends(w.m2849goto(), hashMap2);
                                    if (m2953extends2 != null && m2953extends2.optInt(NotificationCompat.CATEGORY_STATUS) != 0 && m2953extends2.optJSONObject("data").optInt("result") == 1) {
                                        i++;
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                                if (this.f2976do.f3567for != null) {
                                    s5 s5Var2 = this.f2976do.f3567for;
                                    s5Var2.mo2377case(i2 + " / " + size);
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
            ze.c0(this.f2976do.f3559do, str2, null, false);
        }
        s5 s5Var = this.f2976do.f3567for;
        if (s5Var != null) {
            s5Var.mo2378do();
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        s5 s5Var = this.f2976do.f3567for;
        if (s5Var != null) {
            s5Var.mo2381new(ze.q(R.string.progress_dialog_holdon));
        }
    }
}
