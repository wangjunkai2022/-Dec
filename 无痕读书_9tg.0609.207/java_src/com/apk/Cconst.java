package com.apk;

import android.text.TextUtils;
import com.swl.gg.bean.SwlAdView;
import java.util.List;
import org.json.JSONObject;
/* compiled from: AdBlockNativeHelper.java */
/* renamed from: com.apk.const  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cconst implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ JSONObject f702do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ Cfinal f703for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f704if;

    public Cconst(Cfinal cfinal, JSONObject jSONObject, String str) {
        this.f703for = cfinal;
        this.f702do = jSONObject;
        this.f704if = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        List<SwlAdView> list;
        JSONObject jSONObject = this.f702do;
        if (jSONObject != null) {
            this.f703for.f1335try = Cfinally.e(jSONObject);
            List<g> list2 = this.f703for.f1335try;
            if (list2 != null && list2.size() > 0) {
                this.f703for.f1324new = Cfinally.m799goto(this.f702do);
                g gVar = this.f703for.f1335try.get(0);
                if (gVar != null) {
                    String m899if = gVar.m899if();
                    String m898do = gVar.m898do();
                    if ("swl".equals(m899if)) {
                        Cfinal.m787do(this.f703for, m898do);
                    }
                }
            }
        } else if (!TextUtils.isEmpty(this.f704if)) {
            Cfinal.m787do(this.f703for, this.f704if);
        }
        Cfinal cfinal = this.f703for;
        if (cfinal.f1314do == null || (list = cfinal.f1308case) == null || list.size() <= 0) {
            return;
        }
        Cfinal cfinal2 = this.f703for;
        cfinal2.f1314do.post(cfinal2.f1311const);
    }
}
