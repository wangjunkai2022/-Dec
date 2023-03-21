package com.apk;

import com.hjq.toast.ToastUtils;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.fragment.ComicShelfFragment;
import java.util.LinkedHashMap;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* compiled from: ComicShelfFragment.java */
/* loaded from: classes8.dex */
public class z10 extends c1<Boolean> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ List f6094do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicShelfFragment f6095if;

    public z10(ComicShelfFragment comicShelfFragment, List list) {
        this.f6095if = comicShelfFragment;
        this.f6094do = list;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0053  */
    @Override // com.apk.c1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Boolean doInBackground() {
        /*
            r7 = this;
            long r0 = java.lang.System.currentTimeMillis()
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Exception -> L43
            r2.<init>()     // Catch: java.lang.Exception -> L43
            java.util.List r3 = r7.f6094do     // Catch: java.lang.Exception -> L43
            int r3 = r3.size()     // Catch: java.lang.Exception -> L43
            r4 = 0
            r5 = 0
        L11:
            if (r5 >= r3) goto L25
            java.util.List r6 = r7.f6094do     // Catch: java.lang.Exception -> L43
            java.lang.Object r6 = r6.get(r5)     // Catch: java.lang.Exception -> L43
            com.manhua.data.bean.ComicCollectBean r6 = (com.manhua.data.bean.ComicCollectBean) r6     // Catch: java.lang.Exception -> L43
            java.lang.String r6 = r6.getCollectId()     // Catch: java.lang.Exception -> L43
            r2.add(r6)     // Catch: java.lang.Exception -> L43
            int r5 = r5 + 1
            goto L11
        L25:
            int r3 = r2.size()     // Catch: java.lang.Exception -> L43
            if (r3 <= 0) goto L47
            int r3 = r2.size()     // Catch: java.lang.Exception -> L43
            java.lang.String[] r5 = new java.lang.String[r3]     // Catch: java.lang.Exception -> L43
        L31:
            if (r4 >= r3) goto L3e
            java.lang.Object r6 = r2.get(r4)     // Catch: java.lang.Exception -> L43
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L43
            r5[r4] = r6     // Catch: java.lang.Exception -> L43
            int r4 = r4 + 1
            goto L31
        L3e:
            boolean r2 = com.apk.mu.t(r5)     // Catch: java.lang.Exception -> L43
            goto L48
        L43:
            r2 = move-exception
            r2.printStackTrace()
        L47:
            r2 = 1
        L48:
            long r3 = java.lang.System.currentTimeMillis()
            long r3 = r3 - r0
            r0 = 250(0xfa, double:1.235E-321)
            int r5 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r5 >= 0) goto L5c
            long r0 = r0 - r3
            java.lang.Thread.sleep(r0)     // Catch: java.lang.InterruptedException -> L58
            goto L5c
        L58:
            r0 = move-exception
            r0.printStackTrace()
        L5c:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.z10.doInBackground():java.lang.Object");
    }

    @Override // com.apk.c1
    public void onPostExecute(Boolean bool) {
        LinkedHashMap<String, ComicCollectBean> linkedHashMap;
        Boolean bool2 = bool;
        super.onPostExecute(bool2);
        try {
            if (bool2.booleanValue()) {
                for (ComicCollectBean comicCollectBean : this.f6094do) {
                    this.f6095if.f10052case.remove(comicCollectBean);
                }
                if (this.f6095if.f10070try != null) {
                    this.f6095if.f10070try.notifyDataSetChanged();
                }
                ComicShelfFragment.k(this.f6095if);
                if (this.f6095if.f10052case.size() == 0) {
                    mf.m1712do("SET_SHELF_EDIT_FINISH", null);
                }
                if (this.f6095if.f10069throw != null) {
                    this.f6095if.f10069throw.m3066do(0, -1);
                }
                if (this.f6095if.f10070try != null && (linkedHashMap = this.f6095if.f10070try.f9614new) != null) {
                    linkedHashMap.clear();
                }
            }
            this.f6095if.hideBaseLoading();
            ToastUtils.show(bool2.booleanValue() ? R.string.main_delete_success_txt : R.string.main_delete_failed_txt);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        this.f6095if.showBaseLoading();
    }
}
