package com.apk;

import android.text.TextUtils;
import com.manhua.adapter.ComicGroupAdapter;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.ComicGroupDetailActivity;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: ComicGroupDetailActivity.java */
/* loaded from: classes8.dex */
public class z00 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ LinkedList f6090do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicGroupDetailActivity f6091if;

    public z00(ComicGroupDetailActivity comicGroupDetailActivity, LinkedList linkedList) {
        this.f6091if = comicGroupDetailActivity;
        this.f6090do = linkedList;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        Iterator it = this.f6090do.iterator();
        while (it.hasNext()) {
            ComicCollectBean comicCollectBean = (ComicCollectBean) it.next();
            try {
                boolean z = false;
                if (TextUtils.isEmpty(comicCollectBean.getStickTime())) {
                    String valueOf = String.valueOf(System.currentTimeMillis());
                    comicCollectBean.setStickTime(valueOf);
                    comicCollectBean.setSaveTime(valueOf);
                    mu.B(comicCollectBean.getCollectId(), valueOf);
                    this.f6091if.f9706else.remove(comicCollectBean);
                    this.f6091if.f9706else.add(0, comicCollectBean);
                } else {
                    String valueOf2 = String.valueOf(System.currentTimeMillis());
                    mu.m1790try(comicCollectBean.getCollectId(), valueOf2);
                    int size = this.f6091if.f9706else.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        ComicCollectBean comicCollectBean2 = this.f6091if.f9706else.get(i);
                        if (comicCollectBean2.getItemType() != 1 && TextUtils.isEmpty(comicCollectBean2.getStickTime())) {
                            comicCollectBean.setStickTime("");
                            comicCollectBean.setSaveTime(valueOf2);
                            this.f6091if.f9706else.remove(comicCollectBean);
                            this.f6091if.f9706else.add(i, comicCollectBean);
                            z = true;
                            break;
                        }
                        i++;
                    }
                    if (!z) {
                        comicCollectBean.setStickTime("");
                        comicCollectBean.setSaveTime(valueOf2);
                        this.f6091if.f9706else.remove(comicCollectBean);
                        this.f6091if.f9706else.add(comicCollectBean);
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
        ComicGroupDetailActivity comicGroupDetailActivity = this.f6091if;
        ComicGroupAdapter comicGroupAdapter = comicGroupDetailActivity.f9704case;
        if (comicGroupAdapter != null) {
            comicGroupAdapter.setNewData(comicGroupDetailActivity.f9706else);
        }
    }
}
