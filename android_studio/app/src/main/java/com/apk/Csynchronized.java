package com.apk;

import android.view.View;
import java.util.List;
import org.json.JSONObject;

/* compiled from: AdViewText.java */
/* renamed from: com.apk.synchronized  reason: invalid class name */
/* loaded from: classes8.dex */
public class Csynchronized extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public boolean f4614do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ d1 f4615for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ JSONObject f4616if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ b f4617new;

    /* compiled from: AdViewText.java */
    /* renamed from: com.apk.synchronized$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            Csynchronized.this.f4617new.m140for();
            d1 d1Var = Csynchronized.this.f4615for;
            if (d1Var != null) {
                d1Var.mo404do();
            }
        }
    }

    public Csynchronized(b bVar, JSONObject jSONObject, d1 d1Var) {
        this.f4617new = bVar;
        this.f4616if = jSONObject;
        this.f4615for = d1Var;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        this.f4617new.f216catch = Cfinally.e(this.f4616if);
        List<g> list = this.f4617new.f216catch;
        if (list != null && list.size() > 0) {
            this.f4617new.f217class = Cfinally.m799goto(this.f4616if);
            this.f4614do = Cfinally.m795const(this.f4616if);
            this.f4617new.f223super = Cfinally.m802try(this.f4616if);
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        List<g> list = this.f4617new.f216catch;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f4617new.setVisibility(0);
        this.f4617new.mo139do();
        if (this.f4614do) {
            this.f4617new.f219else.setVisibility(0);
            this.f4617new.f219else.setOnClickListener(new Cdo());
        }
    }
}
