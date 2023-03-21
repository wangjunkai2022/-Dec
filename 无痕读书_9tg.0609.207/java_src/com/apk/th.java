package com.apk;

import android.view.View;
import com.biquge.ebook.app.widget.AppCheckBox;
import com.biquge.ebook.app.widget.filepicker.FilePickerAdapter;
import java.io.File;
/* compiled from: FilePickerAdapter.java */
/* loaded from: classes8.dex */
public class th implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ File f4699do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ int f4700for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ AppCheckBox f4701if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ FilePickerAdapter f4702new;

    public th(FilePickerAdapter filePickerAdapter, File file, AppCheckBox appCheckBox, int i) {
        this.f4702new = filePickerAdapter;
        this.f4699do = file;
        this.f4701if = appCheckBox;
        this.f4700for = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f4702new.f8367new) {
            if (this.f4699do.isFile()) {
                FilePickerAdapter filePickerAdapter = this.f4702new;
                if (filePickerAdapter.f8364do != null) {
                    filePickerAdapter.f8364do = new boolean[filePickerAdapter.getItemCount()];
                }
                AppCheckBox appCheckBox = this.f4701if;
                appCheckBox.setChecked(!appCheckBox.isChecked());
            }
            if (this.f4702new.getOnItemClickListener() != null) {
                this.f4702new.getOnItemClickListener().onItemClick(null, null, this.f4700for);
                return;
            }
            return;
        }
        if (this.f4699do.isFile()) {
            if (this.f4702new.f8365for.containsKey(FilePickerAdapter.m3543if(this.f4699do.getAbsolutePath()))) {
                return;
            }
            AppCheckBox appCheckBox2 = this.f4701if;
            appCheckBox2.setChecked(!appCheckBox2.isChecked());
        }
        if (this.f4702new.getOnItemClickListener() != null) {
            this.f4702new.getOnItemClickListener().onItemClick(null, null, this.f4700for);
        }
    }
}
