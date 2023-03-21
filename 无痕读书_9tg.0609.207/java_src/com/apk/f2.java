package com.apk;

import com.biquge.ebook.app.bean.ReadPostion;
import org.litepal.LitePal;
/* compiled from: BookReadModule.java */
/* loaded from: classes8.dex */
public final class f2 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f1212do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ int f1213if;

    public f2(String str, int i) {
        this.f1212do = str;
        this.f1213if = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            LitePal.deleteAll(ReadPostion.class, "bookId = ?", this.f1212do);
            ReadPostion readPostion = new ReadPostion();
            readPostion.setBookId(this.f1212do);
            readPostion.setReadPostion(this.f1213if);
            readPostion.save();
        } catch (Exception unused) {
        }
    }
}
