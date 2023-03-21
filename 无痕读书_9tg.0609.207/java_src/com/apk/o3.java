package com.apk;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.baidu.tts.client.SpeechSynthesizer;
import java.util.HashMap;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: ComicShelfPresenter.java */
/* loaded from: classes8.dex */
public class o3 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ p3 f3357do;

    public o3(p3 p3Var) {
        this.f3357do = p3Var;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        s5 s5Var;
        HashMap m1007native = Cgoto.m1007native("cache", "no");
        JSONObject m2953extends = x4.m2953extends(p0.m2014try() + "/Bookshelf.aspx", m1007native);
        if (m2953extends != null) {
            if (m2953extends.optInt(NotificationCompat.CATEGORY_STATUS) == 1) {
                JSONArray optJSONArray = m2953extends.optJSONArray("data");
                if (optJSONArray != null) {
                    int length = optJSONArray.length();
                    for (int i = 0; i < length; i++) {
                        try {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                            if (optJSONObject != null) {
                                try {
                                    String optString = optJSONObject.optString("Id");
                                    String optString2 = optJSONObject.optString("ChapterId");
                                    String optString3 = optJSONObject.optString("ChapterName");
                                    if (!SpeechSynthesizer.REQUEST_DNS_OFF.equals(optString2)) {
                                        e00.m527else(optString, optString2, optString3, 1, optString2);
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        s5 s5Var2 = this.f3357do.f3567for;
                        if (s5Var2 != null) {
                            s5Var2.mo2377case((i + 1) + " / " + length);
                        }
                    }
                }
                s5 s5Var3 = this.f3357do.f3567for;
                if (s5Var3 != null) {
                    s5Var3.mo2382try(ze.q(R.string.download_progress_success_txt));
                }
            } else {
                String optString4 = m2953extends.optString("info");
                if (!TextUtils.isEmpty(optString4) && (s5Var = this.f3357do.f3567for) != null) {
                    s5Var.mo2382try(optString4);
                }
            }
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        s5 s5Var = this.f3357do.f3567for;
        if (s5Var != null) {
            s5Var.mo2378do();
        }
        ze.V();
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        s5 s5Var = this.f3357do.f3567for;
        if (s5Var != null) {
            s5Var.mo2381new(ze.q(R.string.progress_dialog_holdon));
        }
    }
}
