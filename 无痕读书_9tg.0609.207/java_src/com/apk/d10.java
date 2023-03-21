package com.apk;

import com.hjq.toast.ToastUtils;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.ComicGroupDetailActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
/* compiled from: ComicGroupDetailActivity.java */
/* loaded from: classes8.dex */
public class d10 extends c1<Boolean> {

    /* renamed from: do  reason: not valid java name */
    public final Map<String, ComicCollectBean> f809do = new HashMap();

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ ComicGroupDetailActivity f810for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ List f811if;

    public d10(ComicGroupDetailActivity comicGroupDetailActivity, List list) {
        this.f810for = comicGroupDetailActivity;
        this.f811if = list;
    }

    @Override // com.apk.c1
    public Boolean doInBackground() {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = true;
        try {
            ArrayList arrayList = new ArrayList();
            int size = this.f811if.size();
            for (int i = 0; i < size; i++) {
                ComicCollectBean comicCollectBean = (ComicCollectBean) this.f811if.get(i);
                String collectId = comicCollectBean.getCollectId();
                if (comicCollectBean.getItemType() == 1) {
                    this.f809do.put(collectId, comicCollectBean);
                } else {
                    arrayList.add(collectId);
                }
            }
            if (arrayList.size() > 0) {
                int size2 = arrayList.size();
                String[] strArr = new String[size2];
                for (int i2 = 0; i2 < size2; i2++) {
                    strArr[i2] = (String) arrayList.get(i2);
                }
                z = mu.t(strArr);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (z) {
            for (ComicCollectBean comicCollectBean2 : this.f811if) {
                this.f810for.f9706else.remove(comicCollectBean2);
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
        LinkedHashMap<String, ComicCollectBean> linkedHashMap;
        Boolean bool2 = bool;
        super.onPostExecute(bool2);
        try {
            if (bool2.booleanValue()) {
                if (this.f810for.f9704case != null) {
                    this.f810for.f9704case.setNewData(this.f810for.f9706else);
                }
                if (this.f810for.f9706else.size() == 0) {
                    this.f810for.s(false, -1);
                }
                if (this.f810for.f9708goto != null) {
                    this.f810for.f9708goto.m3066do(0, -1);
                }
                if (this.f810for.f9704case != null && (linkedHashMap = this.f810for.f9704case.f9614new) != null) {
                    linkedHashMap.clear();
                }
            }
            this.f810for.hideBaseLoading();
            ToastUtils.show(bool2.booleanValue() ? R.string.main_delete_success_txt : R.string.main_delete_failed_txt);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        this.f810for.showBaseLoading();
    }
}
