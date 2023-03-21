package com.apk;

import android.content.Intent;
import com.manhua.ui.activity.CreateComicGroupActivity;
import java.io.Serializable;

/* compiled from: CreateComicGroupActivity.java */
/* loaded from: classes8.dex */
public class i10 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ boolean f2031do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ CreateComicGroupActivity f2032if;

    public i10(CreateComicGroupActivity createComicGroupActivity, boolean z) {
        this.f2032if = createComicGroupActivity;
        this.f2031do = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2031do) {
            Intent intent = new Intent();
            intent.putExtra("data", (Serializable) this.f2032if.f9860do);
            this.f2032if.setResult(-1, intent);
        }
        this.f2032if.finish();
    }
}
