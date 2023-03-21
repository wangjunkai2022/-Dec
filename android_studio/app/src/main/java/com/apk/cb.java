package com.apk;

import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.fragment.BookShelfFragment;
import com.hjq.toast.ToastUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* compiled from: BookShelfFragment.java */
/* loaded from: classes8.dex */
public class cb extends c1<Boolean> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ List f561do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ BookShelfFragment f562if;

    public cb(BookShelfFragment bookShelfFragment, List list) {
        this.f562if = bookShelfFragment;
        this.f561do = list;
    }

    @Override // com.apk.c1
    public Boolean doInBackground() {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = true;
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int size = this.f561do.size();
            for (int i = 0; i < size; i++) {
                CollectBook collectBook = (CollectBook) this.f561do.get(i);
                if (collectBook.isLocalBook()) {
                    arrayList.add(collectBook);
                } else {
                    String collectId = collectBook.getCollectId();
                    if (collectBook.isWebSite()) {
                        arrayList2.add(collectBook);
                    } else {
                        arrayList3.add(collectId);
                    }
                }
            }
            if (arrayList3.size() > 0) {
                int size2 = arrayList3.size();
                String[] strArr = new String[size2];
                for (int i2 = 0; i2 < size2; i2++) {
                    strArr[i2] = (String) arrayList3.get(i2);
                }
                z = n2.s(strArr);
            }
            if (arrayList2.size() > 0) {
                if (!v0.m2736try().m2741const()) {
                    String[] strArr2 = new String[arrayList2.size()];
                    for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                        strArr2[i3] = ((CollectBook) arrayList2.get(i3)).getCollectId();
                    }
                    n2.m1812class(strArr2);
                } else {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        CollectBook collectBook2 = (CollectBook) it.next();
                        z = qd.m2119try(collectBook2.getCollectId(), collectBook2.getName(), collectBook2.getExternalUrl());
                    }
                }
            }
            if (arrayList.size() > 0) {
                int size3 = arrayList.size();
                String[] strArr3 = new String[size3];
                for (int i4 = 0; i4 < size3; i4++) {
                    strArr3[i4] = ((CollectBook) arrayList.get(i4)).getCollectId();
                }
                n2.m1812class(strArr3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (currentTimeMillis2 < 250) {
            try {
                Thread.sleep(250 - currentTimeMillis2);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
        return Boolean.valueOf(z);
    }

    @Override // com.apk.c1
    public void onPostExecute(Boolean bool) {
        LinkedHashMap<String, CollectBook> linkedHashMap;
        Boolean bool2 = bool;
        super.onPostExecute(bool2);
        try {
            if (bool2.booleanValue()) {
                for (CollectBook collectBook : this.f561do) {
                    this.f562if.f7351break.remove(collectBook);
                }
                if (this.f562if.f7368this != null) {
                    this.f562if.f7368this.notifyDataSetChanged();
                }
                BookShelfFragment.h(this.f562if);
                if (this.f562if.f7351break.size() == 0) {
                    mf.m1712do("SET_SHELF_EDIT_FINISH", null);
                }
                if (this.f562if.f7371while != null) {
                    this.f562if.f7371while.m3066do(0, -1);
                }
                if (this.f562if.f7368this != null && (linkedHashMap = this.f562if.f7368this.f6335new) != null) {
                    linkedHashMap.clear();
                }
            }
            this.f562if.hideBaseLoading();
            ToastUtils.show(bool2.booleanValue() ? R.string.main_delete_success_txt : R.string.main_delete_failed_txt);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        this.f562if.showBaseLoading();
    }
}
