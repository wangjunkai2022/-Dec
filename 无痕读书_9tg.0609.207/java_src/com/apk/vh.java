package com.apk;

import android.widget.CompoundButton;
import com.biquge.ebook.app.widget.filepicker.FilePickerAdapter;
/* compiled from: FilePickerAdapter.java */
/* loaded from: classes8.dex */
public class vh implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f5081do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ FilePickerAdapter f5082if;

    public vh(FilePickerAdapter filePickerAdapter, int i) {
        this.f5082if = filePickerAdapter;
        this.f5081do = i;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f5082if.f8364do[this.f5081do] = z;
    }
}
