package com.apk;

import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.activity.BookGroupDetailActivity;
import com.hjq.toast.ToastUtils;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* compiled from: BookGroupDetailActivity.java */
/* loaded from: classes8.dex */
public class l7 extends c1<Boolean> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ List f2762do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ BookGroupDetailActivity f2763if;

    public l7(BookGroupDetailActivity bookGroupDetailActivity, List list) {
        this.f2763if = bookGroupDetailActivity;
        this.f2762do = list;
    }

    @Override // com.apk.c1
    public Boolean doInBackground() {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = true;
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = this.f2762do.size();
            for (int i = 0; i < size; i++) {
                CollectBook collectBook = (CollectBook) this.f2762do.get(i);
                if (collectBook.isLocalBook()) {
                    arrayList.add(collectBook);
                } else if (collectBook.getItemType() != 1) {
                    arrayList2.add(collectBook.getCollectId());
                }
            }
            if (arrayList2.size() > 0) {
                int size2 = arrayList2.size();
                String[] strArr = new String[size2];
                for (int i2 = 0; i2 < size2; i2++) {
                    strArr[i2] = (String) arrayList2.get(i2);
                }
                z = n2.s(strArr);
            }
            if (arrayList.size() > 0) {
                int size3 = arrayList.size();
                String[] strArr2 = new String[size3];
                for (int i3 = 0; i3 < size3; i3++) {
                    strArr2[i3] = ((CollectBook) arrayList.get(i3)).getCollectId();
                }
                n2.m1812class(strArr2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (z) {
            for (CollectBook collectBook2 : this.f2762do) {
                this.f2763if.f6454case.remove(collectBook2);
            }
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
        Boolean bool2 = bool;
        super.onPostExecute(bool2);
        try {
            if (bool2.booleanValue()) {
                if (this.f2763if.f6464try != null) {
                    this.f2763if.f6464try.notifyDataSetChanged();
                }
                if (this.f2763if.f6454case != null && this.f2763if.f6454case.size() == 0) {
                    this.f2763if.f6455catch.mo2779new(false, -1);
                }
                if (this.f2763if.f6463this != null) {
                    this.f2763if.f6463this.m3066do(0, -1);
                }
                LinkedHashMap<String, CollectBook> linkedHashMap = this.f2763if.f6464try.f6335new;
                if (linkedHashMap != null) {
                    linkedHashMap.clear();
                }
            }
            this.f2763if.hideBaseLoading();
            ToastUtils.show(bool2.booleanValue() ? R.string.main_delete_success_txt : R.string.main_delete_failed_txt);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        this.f2763if.showBaseLoading();
    }
}
