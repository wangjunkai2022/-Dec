package com.apk;

import com.biquge.ebook.app.bean.CollectBook;
import java.util.List;
/* compiled from: NovelShelfPresenter.java */
/* loaded from: classes8.dex */
public class p4 extends c1<List<CollectBook>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ boolean f3578do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ t4 f3579if;

    public p4(t4 t4Var, boolean z) {
        this.f3579if = t4Var;
        this.f3578do = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x02fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0222 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01c1 A[Catch: Exception -> 0x01f4, TryCatch #5 {Exception -> 0x01f4, blocks: (B:60:0x01b7, B:61:0x01bb, B:63:0x01c1, B:65:0x01c9, B:67:0x01cf, B:69:0x01d9, B:70:0x01e8), top: B:145:0x01b7 }] */
    @Override // com.apk.c1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.biquge.ebook.app.bean.CollectBook> doInBackground() {
        /*
            Method dump skipped, instructions count: 790
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.p4.doInBackground():java.lang.Object");
    }

    @Override // com.apk.c1
    public void onPostExecute(List<CollectBook> list) {
        List<CollectBook> list2 = list;
        super.onPostExecute(list2);
        v5 v5Var = this.f3579if.f4635for;
        if (v5Var != null) {
            v5Var.mo2778if(list2);
        }
    }
}
