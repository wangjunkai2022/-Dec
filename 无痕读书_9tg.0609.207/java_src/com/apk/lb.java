package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.ui.fragment.ExternalSearchFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: ExternalSearchFragment.java */
/* loaded from: classes8.dex */
public class lb extends c1<List<String>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2779do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ExternalSearchFragment f2780if;

    public lb(ExternalSearchFragment externalSearchFragment, String str) {
        this.f2780if = externalSearchFragment;
        this.f2779do = str;
    }

    @Override // com.apk.c1
    public List<String> doInBackground() {
        Iterator it;
        String[] split;
        String str = this.f2779do;
        if (str != null) {
            try {
                String m2620do = tt.m2620do("txt_download_search_history_key", "");
                ArrayList arrayList = new ArrayList();
                if (!TextUtils.isEmpty(m2620do)) {
                    String[] split2 = m2620do.split("#");
                    for (String str2 : split2) {
                        if (!TextUtils.isEmpty(str2) && !str.equals(str2)) {
                            arrayList.add(str2);
                        }
                    }
                    if (split2.length >= 5) {
                        arrayList.remove(arrayList.size() - 1);
                    }
                }
                arrayList.add(0, str);
                String str3 = "";
                while (arrayList.iterator().hasNext()) {
                    str3 = str3 + ((String) it.next()) + "#";
                }
                tt.f4763do.putString("txt_download_search_history_key", str3);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        ArrayList arrayList2 = new ArrayList();
        try {
            for (String str4 : tt.m2620do("txt_download_search_history_key", "").split("#")) {
                if (!TextUtils.isEmpty(str4)) {
                    arrayList2.add(str4);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList2;
    }

    @Override // com.apk.c1
    public void onPostExecute(List<String> list) {
        List<String> list2 = list;
        super.onPostExecute(list2);
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        ExternalSearchFragment.m3376synchronized(this.f2780if, list2);
    }
}
