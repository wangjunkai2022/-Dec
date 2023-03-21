package com.apk;

import com.biquge.ebook.app.ui.fragment.FilePickerFragment;
import java.util.List;
/* compiled from: FilePickerFragment.java */
/* loaded from: classes8.dex */
public class ob implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ FilePickerFragment f3385do;

    /* compiled from: FilePickerFragment.java */
    /* renamed from: com.apk.ob$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ List f3386do;

        public Cdo(List list) {
            this.f3386do = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            List list;
            if (ob.this.f3385do.f7459if == null || (list = this.f3386do) == null || list.size() <= 0) {
                return;
            }
            ob.this.f3385do.f7459if.m3544do(this.f3386do);
        }
    }

    public ob(FilePickerFragment filePickerFragment) {
        this.f3385do = filePickerFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        FilePickerFragment filePickerFragment = this.f3385do;
        this.f3385do.getSupportActivity().postDelayed(new Cdo(filePickerFragment.m3377synchronized(filePickerFragment.f7458for)), 200L);
    }
}
