package com.apk;

import android.net.Uri;
import android.text.TextUtils;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.activity.ImportFileActivity;
import com.biquge.ebook.app.ui.fragment.FilePickerFragment;
import com.biquge.ebook.app.ui.fragment.SmartScanFragment;
import com.biquge.ebook.app.widget.filepicker.FilePickerAdapter;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
/* compiled from: ImportFileActivity.java */
/* loaded from: classes8.dex */
public class v7 extends c1<LinkedList<CollectBook>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Uri f5022do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ LinkedHashMap f5023for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f5024if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ ImportFileActivity f5025new;

    public v7(ImportFileActivity importFileActivity, Uri uri, String str, LinkedHashMap linkedHashMap) {
        this.f5025new = importFileActivity;
        this.f5022do = uri;
        this.f5024if = str;
        this.f5023for = linkedHashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0060, code lost:
        if (r3 == null) goto L61;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.apk.c1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.LinkedList<com.biquge.ebook.app.bean.CollectBook> doInBackground() {
        /*
            r5 = this;
            android.net.Uri r0 = r5.f5022do
            if (r0 == 0) goto L83
            r0 = 0
            com.biquge.ebook.app.ui.activity.ImportFileActivity r1 = r5.f5025new     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4f
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4f
            android.net.Uri r2 = r5.f5022do     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4f
            java.io.InputStream r1 = r1.openInputStream(r2)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4f
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L47
            com.apk.a6 r3 = com.apk.a6.m18else()     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L47
            java.lang.String r3 = r3.m25try()     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L47
            java.lang.String r4 = r5.f5024if     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L47
            r2.<init>(r3, r4)     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L47
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L47
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L44 java.io.IOException -> L47
            byte[] r0 = com.apk.ze.U(r1)     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L6b
            r3.write(r0)     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L6b
            java.util.LinkedHashMap r0 = r5.f5023for     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L6b
            if (r0 == 0) goto L37
            java.util.LinkedHashMap r0 = r5.f5023for     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L6b
            java.lang.String r4 = r5.f5024if     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L6b
            r0.put(r4, r2)     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L6b
        L37:
            if (r1 == 0) goto L62
            r1.close()     // Catch: java.lang.Exception -> L3d
            goto L62
        L3d:
            r0 = move-exception
            r0.printStackTrace()
            goto L62
        L42:
            r0 = move-exception
            goto L53
        L44:
            r2 = move-exception
            r3 = r0
            goto L6d
        L47:
            r2 = move-exception
            r3 = r0
            r0 = r2
            goto L53
        L4b:
            r1 = move-exception
            r2 = r1
            r3 = r0
            goto L6e
        L4f:
            r1 = move-exception
            r3 = r0
            r0 = r1
            r1 = r3
        L53:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L6b
            if (r1 == 0) goto L60
            r1.close()     // Catch: java.lang.Exception -> L5c
            goto L60
        L5c:
            r0 = move-exception
            r0.printStackTrace()
        L60:
            if (r3 == 0) goto L83
        L62:
            r3.close()     // Catch: java.lang.Exception -> L66
            goto L83
        L66:
            r0 = move-exception
            r0.printStackTrace()
            goto L83
        L6b:
            r0 = move-exception
            r2 = r0
        L6d:
            r0 = r1
        L6e:
            if (r0 == 0) goto L78
            r0.close()     // Catch: java.lang.Exception -> L74
            goto L78
        L74:
            r0 = move-exception
            r0.printStackTrace()
        L78:
            if (r3 == 0) goto L82
            r3.close()     // Catch: java.lang.Exception -> L7e
            goto L82
        L7e:
            r0 = move-exception
            r0.printStackTrace()
        L82:
            throw r2
        L83:
            com.biquge.ebook.app.ui.activity.ImportFileActivity r0 = r5.f5025new
            java.util.LinkedHashMap r1 = r5.f5023for
            java.util.LinkedList r0 = com.biquge.ebook.app.ui.activity.ImportFileActivity.k(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.v7.doInBackground():java.lang.Object");
    }

    @Override // com.apk.c1
    public void onPostExecute(LinkedList<CollectBook> linkedList) {
        FilePickerAdapter filePickerAdapter;
        FilePickerAdapter filePickerAdapter2;
        LinkedList<CollectBook> linkedList2 = linkedList;
        super.onPostExecute(linkedList2);
        if (linkedList2 != null) {
            try {
                Iterator<CollectBook> it = linkedList2.iterator();
                while (it.hasNext()) {
                    CollectBook next = it.next();
                    n2.v(next);
                    if (this.f5025new.f6659if != null) {
                        this.f5025new.f6659if.f7593for.remove(next.getIcon());
                        SmartScanFragment smartScanFragment = this.f5025new.f6659if;
                        String icon = next.getIcon();
                        FilePickerAdapter filePickerAdapter3 = smartScanFragment.f7594if;
                        if (filePickerAdapter3 != null && !TextUtils.isEmpty(icon)) {
                            filePickerAdapter3.f8365for.put(FilePickerAdapter.m3543if(icon), icon);
                        }
                    }
                    if (this.f5025new.f6658for != null) {
                        this.f5025new.f6658for.f7460new.remove(next.getIcon());
                        FilePickerFragment filePickerFragment = this.f5025new.f6658for;
                        String icon2 = next.getIcon();
                        FilePickerAdapter filePickerAdapter4 = filePickerFragment.f7459if;
                        if (filePickerAdapter4 != null && !TextUtils.isEmpty(icon2)) {
                            filePickerAdapter4.f8365for.put(FilePickerAdapter.m3543if(icon2), icon2);
                        }
                    }
                }
                if (this.f5025new.f6659if != null && (filePickerAdapter2 = this.f5025new.f6659if.f7594if) != null) {
                    filePickerAdapter2.notifyDataSetChanged();
                }
                if (this.f5025new.f6658for != null && (filePickerAdapter = this.f5025new.f6658for.f7459if) != null) {
                    filePickerAdapter.notifyDataSetChanged();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.f5025new.l(this.f5025new.mViewPager.getCurrentItem());
        ze.V();
        this.f5025new.hideBaseLoading();
        if (this.f5022do != null) {
            this.f5025new.finish();
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        this.f5025new.showBaseLoading();
    }
}
