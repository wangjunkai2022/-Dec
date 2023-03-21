package com.apk;

import android.text.TextUtils;
import com.manhua.adapter.ComicGroupAdapter;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.fragment.ComicShelfFragment;
/* compiled from: ComicShelfFragment.java */
/* loaded from: classes8.dex */
public class y10 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f5831do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicShelfFragment f5832if;

    public y10(ComicShelfFragment comicShelfFragment, int i) {
        this.f5832if = comicShelfFragment;
        this.f5831do = i;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        String collectId;
        ComicCollectBean comicCollectBean = this.f5832if.f10052case.get(this.f5831do);
        if (comicCollectBean != null) {
            try {
                boolean z = false;
                if (TextUtils.isEmpty(comicCollectBean.getStickTime())) {
                    String valueOf = String.valueOf(System.currentTimeMillis());
                    if (comicCollectBean.isGroup()) {
                        collectId = comicCollectBean.getGroupBooks().get(0).getCollectId();
                    } else {
                        collectId = comicCollectBean.getCollectId();
                    }
                    mu.B(collectId, valueOf);
                    comicCollectBean.setStickTime(valueOf);
                    this.f5832if.f10052case.add(0, this.f5832if.f10052case.remove(this.f5831do));
                } else {
                    String valueOf2 = String.valueOf(System.currentTimeMillis());
                    if (comicCollectBean.isGroup()) {
                        for (ComicCollectBean comicCollectBean2 : comicCollectBean.getGroupBooks()) {
                            mu.m1790try(comicCollectBean2.getCollectId(), valueOf2);
                        }
                    } else {
                        mu.m1790try(comicCollectBean.getCollectId(), valueOf2);
                    }
                    this.f5832if.f10052case.remove(comicCollectBean);
                    int size = this.f5832if.f10052case.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        ComicCollectBean comicCollectBean3 = this.f5832if.f10052case.get(i);
                        if (comicCollectBean3.getItemType() != 1 && TextUtils.isEmpty(comicCollectBean3.getStickTime())) {
                            comicCollectBean.setStickTime("");
                            comicCollectBean.setSaveTime(valueOf2);
                            this.f5832if.f10052case.add(i, comicCollectBean);
                            z = true;
                            break;
                        }
                        i++;
                    }
                    if (!z) {
                        comicCollectBean.setStickTime("");
                        comicCollectBean.setSaveTime(valueOf2);
                        this.f5832if.f10052case.add(comicCollectBean);
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
        ComicGroupAdapter comicGroupAdapter = this.f5832if.f10070try;
        if (comicGroupAdapter != null) {
            comicGroupAdapter.notifyDataSetChanged();
        }
    }
}
