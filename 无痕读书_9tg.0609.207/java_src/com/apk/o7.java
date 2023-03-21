package com.apk;

import android.content.Intent;
import com.biquge.ebook.app.ui.activity.CreateBookGroupActivity;
import java.io.Serializable;
/* compiled from: CreateBookGroupActivity.java */
/* loaded from: classes8.dex */
public class o7 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ boolean f3368do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ CreateBookGroupActivity f3369if;

    public o7(CreateBookGroupActivity createBookGroupActivity, boolean z) {
        this.f3369if = createBookGroupActivity;
        this.f3368do = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f3368do) {
            Intent intent = new Intent();
            intent.putExtra("data", (Serializable) this.f3369if.f6589do);
            this.f3369if.setResult(-1, intent);
        }
        this.f3369if.finish();
    }
}
