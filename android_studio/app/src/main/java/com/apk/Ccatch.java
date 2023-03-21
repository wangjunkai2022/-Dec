package com.apk;

import com.apk.Cbreak;
import java.util.List;
import org.json.JSONObject;

/* compiled from: AdBestTopHelper.java */
/* renamed from: com.apk.catch  reason: invalid class name */
/* loaded from: classes8.dex */
public class Ccatch implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ JSONObject f559do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ Cclass f560if;

    public Ccatch(Cclass cclass, JSONObject jSONObject) {
        this.f560if = cclass;
        this.f559do = jSONObject;
    }

    @Override // java.lang.Runnable
    public void run() {
        List<g> list;
        JSONObject jSONObject = this.f559do;
        if (jSONObject == null) {
            return;
        }
        this.f560if.f657else = Cfinally.e(jSONObject);
        Cclass cclass = this.f560if;
        if (cclass.f657else != null) {
            cclass.f659for = Cfinally.m799goto(this.f559do);
            Cclass cclass2 = this.f560if;
            JSONObject jSONObject2 = this.f559do;
            cclass2.f662new = jSONObject2 != null ? jSONObject2.optLong("fshowtimer", 0L) * 1000 : 0L;
            this.f560if.f663this = Cfinally.m795const(this.f559do);
            this.f560if.f457do = Cfinally.m802try(this.f559do);
        }
        Cclass cclass3 = this.f560if;
        if (cclass3.f652break == null || (list = cclass3.f657else) == null || list.size() <= 0) {
            return;
        }
        this.f560if.f661if = new Cbreak.Cdo(this.f560if);
        this.f560if.f661if.sendEmptyMessage(101);
    }
}
