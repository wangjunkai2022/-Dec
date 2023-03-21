package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.adapter.BookGroupAdapter;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.activity.BookGroupDetailActivity;
import java.util.Iterator;
import java.util.LinkedList;
/* compiled from: BookGroupDetailActivity.java */
/* loaded from: classes8.dex */
public class i7 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ LinkedList f2058do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ BookGroupDetailActivity f2059if;

    public i7(BookGroupDetailActivity bookGroupDetailActivity, LinkedList linkedList) {
        this.f2059if = bookGroupDetailActivity;
        this.f2058do = linkedList;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        Iterator it = this.f2058do.iterator();
        while (it.hasNext()) {
            CollectBook collectBook = (CollectBook) it.next();
            try {
                boolean z = false;
                if (TextUtils.isEmpty(collectBook.getStickTime())) {
                    String valueOf = String.valueOf(System.currentTimeMillis());
                    n2.H(collectBook.getCollectId(), valueOf);
                    collectBook.setStickTime(valueOf);
                    collectBook.setSaveTime(valueOf);
                    this.f2059if.f6454case.remove(collectBook);
                    this.f2059if.f6454case.add(0, collectBook);
                } else {
                    String valueOf2 = String.valueOf(System.currentTimeMillis());
                    n2.m1829new(collectBook.getCollectId(), valueOf2);
                    int size = this.f2059if.f6454case.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        CollectBook collectBook2 = this.f2059if.f6454case.get(i);
                        if (collectBook2.getItemType() != 1 && TextUtils.isEmpty(collectBook2.getStickTime())) {
                            collectBook.setStickTime("");
                            collectBook.setSaveTime(valueOf2);
                            this.f2059if.f6454case.remove(collectBook);
                            this.f2059if.f6454case.add(i, collectBook);
                            z = true;
                            break;
                        }
                        i++;
                    }
                    if (!z) {
                        collectBook.setStickTime("");
                        collectBook.setSaveTime(valueOf2);
                        this.f2059if.f6454case.remove(collectBook);
                        this.f2059if.f6454case.add(collectBook);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        BookGroupAdapter bookGroupAdapter = this.f2059if.f6464try;
        if (bookGroupAdapter != null) {
            bookGroupAdapter.notifyDataSetChanged();
        }
    }
}
