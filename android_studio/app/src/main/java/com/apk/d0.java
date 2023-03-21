package com.apk;

import android.content.Context;
import com.biquge.ebook.app.bean.WebConfBean;

/* compiled from: BaiDuVoiceUtils.java */
/* loaded from: classes8.dex */
public class d0 implements ft {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Context f804do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ e1 f805for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ WebConfBean f806if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ c0 f807new;

    public d0(c0 c0Var, Context context, WebConfBean webConfBean, e1 e1Var) {
        this.f807new = c0Var;
        this.f804do = context;
        this.f806if = webConfBean;
        this.f805for = e1Var;
    }

    @Override // com.apk.ft
    public void onClick() {
        c0.m297if(this.f807new, this.f804do, this.f806if.getBdaivoice2(), this.f805for, false);
    }
}
