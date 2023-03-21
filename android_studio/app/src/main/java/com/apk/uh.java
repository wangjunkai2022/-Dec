package com.apk;

import android.view.View;
import com.biquge.ebook.app.widget.filepicker.FilePickerAdapter;
import java.io.File;

/* compiled from: FilePickerAdapter.java */
/* loaded from: classes8.dex */
public class uh implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ File f4889do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ FilePickerAdapter f4890for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ int f4891if;

    public uh(FilePickerAdapter filePickerAdapter, File file, int i) {
        this.f4890for = filePickerAdapter;
        this.f4889do = file;
        this.f4891if = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f4890for.f8365for.containsKey(this.f4889do.getAbsolutePath()) || this.f4890for.getOnItemClickListener() == null) {
            return;
        }
        this.f4890for.getOnItemClickListener().onItemClick(null, null, this.f4891if);
    }
}
