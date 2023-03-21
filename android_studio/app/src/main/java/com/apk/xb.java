package com.apk;

import com.biquge.ebook.app.ui.fragment.LocalWebShareFragment;
import com.chanven.lib.cptr.PtrClassicFrameLayout;

/* compiled from: LocalWebShareFragment.java */
/* loaded from: classes8.dex */
public class xb implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ boolean f5508do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ LocalWebShareFragment f5509if;

    public xb(LocalWebShareFragment localWebShareFragment, boolean z) {
        this.f5509if = localWebShareFragment;
        this.f5508do = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f5509if.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout != null) {
            if (this.f5508do) {
                ptrClassicFrameLayout.m2541if();
            } else {
                ptrClassicFrameLayout.m2532break();
            }
        }
    }
}
