package com.apk;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import com.biquge.ebook.app.ui.fragment.SmartScanFragment;
import com.biquge.ebook.app.widget.filepicker.FilePickerAdapter;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SmartScanFragment.java */
/* loaded from: classes8.dex */
public class ec extends c1<List<File>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ SmartScanFragment f1031do;

    public ec(SmartScanFragment smartScanFragment) {
        this.f1031do = smartScanFragment;
    }

    @Override // com.apk.c1
    public List<File> doInBackground() {
        i6 supportActivity = this.f1031do.getSupportActivity();
        String str = this.f1031do.f7592do;
        ArrayList arrayList = new ArrayList();
        try {
            ContentResolver contentResolver = supportActivity.getContentResolver();
            Uri parse = Uri.parse("content://media/external/file");
            Cursor query = contentResolver.query(parse, new String[]{"_data"}, "_data like ?", new String[]{"%" + str}, "date_modified DESC");
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        try {
                            String string = query.getString(query.getColumnIndex("_data"));
                            File file = new File(string);
                            if (file.length() >= 307200 && !string.contains(ze.m3168finally())) {
                                arrayList.add(file);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            query.close();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return arrayList;
    }

    @Override // com.apk.c1
    public void onPostExecute(List<File> list) {
        List<File> list2 = list;
        super.onPostExecute(list2);
        if (list2 != null) {
            try {
                if (list2.size() != 0) {
                    FilePickerAdapter filePickerAdapter = this.f1031do.f7594if;
                    filePickerAdapter.setNewData(list2);
                    filePickerAdapter.f8364do = new boolean[filePickerAdapter.getItemCount()];
                    this.f1031do.mRecyclerView.scrollToPosition(0);
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        this.f1031do.mEmptyView.setVisibility(0);
    }
}
