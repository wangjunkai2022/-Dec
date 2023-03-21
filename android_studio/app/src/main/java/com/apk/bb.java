package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.adapter.BookGroupAdapter;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.fragment.BookShelfFragment;

/* compiled from: BookShelfFragment.java */
/* loaded from: classes8.dex */
public class bb extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f278do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ BookShelfFragment f279if;

    public bb(BookShelfFragment bookShelfFragment, int i) {
        this.f279if = bookShelfFragment;
        this.f278do = i;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        CollectBook collectBook;
        String collectId;
        try {
            collectBook = this.f279if.f7351break.get(this.f278do);
        } catch (Exception e) {
            e.printStackTrace();
            collectBook = null;
        }
        if (collectBook != null) {
            try {
                boolean z = false;
                if (TextUtils.isEmpty(collectBook.getStickTime())) {
                    String valueOf = String.valueOf(System.currentTimeMillis());
                    if (collectBook.isGroup()) {
                        collectId = collectBook.getGroupBooks().get(0).getCollectId();
                    } else {
                        collectId = collectBook.getCollectId();
                    }
                    n2.H(collectId, valueOf);
                    collectBook.setStickTime(valueOf);
                    this.f279if.f7351break.add(0, this.f279if.f7351break.remove(this.f278do));
                } else {
                    String valueOf2 = String.valueOf(System.currentTimeMillis());
                    if (collectBook.isGroup()) {
                        for (CollectBook collectBook2 : collectBook.getGroupBooks()) {
                            n2.m1829new(collectBook2.getCollectId(), valueOf2);
                        }
                    } else {
                        n2.m1829new(collectBook.getCollectId(), valueOf2);
                    }
                    this.f279if.f7351break.remove(collectBook);
                    int size = this.f279if.f7351break.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        CollectBook collectBook3 = this.f279if.f7351break.get(i);
                        if (collectBook3.getItemType() != 1 && TextUtils.isEmpty(collectBook3.getStickTime())) {
                            collectBook.setStickTime("");
                            collectBook.setSaveTime(valueOf2);
                            this.f279if.f7351break.add(i, collectBook);
                            z = true;
                            break;
                        }
                        i++;
                    }
                    if (!z) {
                        collectBook.setStickTime("");
                        collectBook.setSaveTime(valueOf2);
                        this.f279if.f7351break.add(collectBook);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        BookGroupAdapter bookGroupAdapter = this.f279if.f7368this;
        if (bookGroupAdapter != null) {
            bookGroupAdapter.notifyDataSetChanged();
        }
    }
}
