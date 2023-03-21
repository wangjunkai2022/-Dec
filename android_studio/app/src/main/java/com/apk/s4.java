package com.apk;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.baidu.tts.client.SpeechSynthesizer;
import java.util.HashMap;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: NovelShelfPresenter.java */
/* loaded from: classes8.dex */
public class s4 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ t4 f4268do;

    public s4(t4 t4Var) {
        this.f4268do = t4Var;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        v5 v5Var;
        HashMap m1007native = Cgoto.m1007native("cache", "no");
        JSONObject m2953extends = x4.m2953extends(p0.m2009new() + "/Bookshelf.aspx", m1007native);
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
                                        g2.m919finally(optString, optString2, optString3, 1, optString2);
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        v5 v5Var2 = this.f4268do.f4635for;
                        if (v5Var2 != null) {
                            v5Var2.mo2776else((i + 1) + " / " + length);
                        }
                    }
                }
                v5 v5Var3 = this.f4268do.f4635for;
                if (v5Var3 != null) {
                    v5Var3.mo2774case(ze.q(R.string.download_progress_success_txt));
                }
            } else {
                String optString4 = m2953extends.optString("info");
                if (!TextUtils.isEmpty(optString4) && (v5Var = this.f4268do.f4635for) != null) {
                    v5Var.mo2774case(optString4);
                }
            }
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        v5 v5Var = this.f4268do.f4635for;
        if (v5Var != null) {
            v5Var.mo2775do();
        }
        ze.V();
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        v5 v5Var = this.f4268do.f4635for;
        if (v5Var != null) {
            v5Var.mo2780try(ze.q(R.string.progress_dialog_holdon));
        }
    }
}
