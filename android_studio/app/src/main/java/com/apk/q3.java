package com.apk;

import android.app.Activity;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import com.expand.videoplayer.bean.RankCategory;
import java.util.List;

/* compiled from: ExpandPresenter.java */
/* loaded from: classes8.dex */
public class q3 extends p1 {

    /* renamed from: for  reason: not valid java name */
    public final t5 f3791for;

    /* compiled from: ExpandPresenter.java */
    /* renamed from: com.apk.q3$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends JsonCallback<LzyResponse<List<RankCategory>>> {
        public Cdo() {
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<List<RankCategory>>> iyVar) {
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || q3.this.f3791for == null) {
                        return;
                    }
                    q3.this.f3791for.mo2573for(iyVar.f2262do.data);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<LzyResponse<List<RankCategory>>> iyVar) {
            super.onError(iyVar);
            t5 t5Var = q3.this.f3791for;
            if (t5Var != null) {
                t5Var.mo2573for(null);
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<List<RankCategory>>> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || q3.this.f3791for == null) {
                        return;
                    }
                    q3.this.f3791for.mo2573for(iyVar.f2262do.data);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public q3(Activity activity, t5 t5Var) {
        this.f3559do = activity;
        this.f3791for = t5Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /* renamed from: for  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m2103for(com.apk.q3 r11, java.lang.String r12) {
        /*
            r0 = 0
            if (r11 == 0) goto L87
            boolean r1 = android.text.TextUtils.isEmpty(r12)     // Catch: java.lang.Exception -> L7a
            if (r1 != 0) goto L78
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Exception -> L7a
            r1.<init>(r12)     // Catch: java.lang.Exception -> L7a
            java.lang.String r12 = "diqu"
            org.json.JSONArray r12 = r1.optJSONArray(r12)     // Catch: java.lang.Exception -> L7a
            java.lang.String r2 = "id"
            java.lang.String r3 = "name"
            r4 = 0
            if (r12 == 0) goto L40
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch: java.lang.Exception -> L7a
            r5.<init>()     // Catch: java.lang.Exception -> L7a
            int r6 = r12.length()     // Catch: java.lang.Exception -> L74
            r7 = 0
        L25:
            if (r7 >= r6) goto L41
            org.json.JSONObject r8 = r12.optJSONObject(r7)     // Catch: java.lang.Exception -> L74
            if (r8 == 0) goto L3d
            java.lang.String r9 = r8.optString(r3)     // Catch: java.lang.Exception -> L74
            java.lang.String r8 = r8.optString(r2)     // Catch: java.lang.Exception -> L74
            com.expand.videoplayer.bean.CategoryArea r10 = new com.expand.videoplayer.bean.CategoryArea     // Catch: java.lang.Exception -> L74
            r10.<init>(r9, r8)     // Catch: java.lang.Exception -> L74
            r5.add(r10)     // Catch: java.lang.Exception -> L74
        L3d:
            int r7 = r7 + 1
            goto L25
        L40:
            r5 = r0
        L41:
            java.lang.String r12 = "year"
            org.json.JSONArray r12 = r1.optJSONArray(r12)     // Catch: java.lang.Exception -> L74
            if (r12 == 0) goto L71
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Exception -> L74
            r1.<init>()     // Catch: java.lang.Exception -> L74
            int r0 = r12.length()     // Catch: java.lang.Exception -> L6f
        L52:
            if (r4 >= r0) goto L6d
            org.json.JSONObject r6 = r12.optJSONObject(r4)     // Catch: java.lang.Exception -> L6f
            if (r6 == 0) goto L6a
            java.lang.String r7 = r6.optString(r3)     // Catch: java.lang.Exception -> L6f
            java.lang.String r6 = r6.optString(r2)     // Catch: java.lang.Exception -> L6f
            com.expand.videoplayer.bean.CategoryYear r8 = new com.expand.videoplayer.bean.CategoryYear     // Catch: java.lang.Exception -> L6f
            r8.<init>(r7, r6)     // Catch: java.lang.Exception -> L6f
            r1.add(r8)     // Catch: java.lang.Exception -> L6f
        L6a:
            int r4 = r4 + 1
            goto L52
        L6d:
            r0 = r1
            goto L71
        L6f:
            r12 = move-exception
            goto L76
        L71:
            r1 = r0
            r0 = r5
            goto L7f
        L74:
            r12 = move-exception
            r1 = r0
        L76:
            r0 = r5
            goto L7c
        L78:
            r1 = r0
            goto L7f
        L7a:
            r12 = move-exception
            r1 = r0
        L7c:
            r12.printStackTrace()
        L7f:
            com.apk.t5 r11 = r11.f3791for
            if (r11 == 0) goto L86
            r11.mo2574if(r0, r1)
        L86:
            return
        L87:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.q3.m2103for(com.apk.q3, java.lang.String):void");
    }

    /* renamed from: new  reason: not valid java name */
    public void m2104new() {
        x4.m2957import(eg.m596finally() + "/category.html", 43200000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Cdo());
    }
}
