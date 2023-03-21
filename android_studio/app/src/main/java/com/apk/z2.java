package com.apk;

import android.app.Activity;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.biquge.ebook.app.bean.ComicDirBean;
import com.biquge.ebook.app.bean.ComicListBean;
import com.biquge.ebook.app.bean.WantBookBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.hjq.toast.ToastUtils;
import com.jni.crypt.project.CryptDesManager;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicCategory;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.data.bean.ComicElement;
import com.manhua.data.bean.ComicInfoEntity;
import com.manhua.data.bean.CreateComicList;
import com.ss.android.download.api.constant.BaseConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.LitePal;

/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class z2 extends p1 {

    /* renamed from: for  reason: not valid java name */
    public final r5 f6096for;

    /* compiled from: ComicPresenter.java */
    /* renamed from: com.apk.z2$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ccase extends JsonCallback<LzyResponse<ComicBean>> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ List f6097do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ccase(String str, List list) {
            super(str);
            this.f6097do = list;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<ComicBean>> iyVar) {
            ComicBean comicBean;
            super.onCacheSuccess(iyVar);
            if (iyVar == null || !iyVar.m1293for() || (comicBean = iyVar.f2262do.data) == null) {
                return;
            }
            CryptDesManager.decodeClass(comicBean);
            this.f6097do.clear();
            this.f6097do.add(comicBean);
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<ComicBean>> iyVar) {
            ComicBean comicBean;
            super.onSuccess(iyVar);
            if (iyVar == null || !iyVar.m1293for() || (comicBean = iyVar.f2262do.data) == null) {
                return;
            }
            CryptDesManager.decodeClass(comicBean);
            this.f6097do.clear();
            this.f6097do.add(comicBean);
        }
    }

    /* compiled from: ComicPresenter.java */
    /* renamed from: com.apk.z2$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends PublicCallback {
        public Cdo() {
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            super.onFinish(iyVar);
            z2.this.m2016do();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onStart(qy<String, ? extends qy> qyVar) {
            super.onStart(qyVar);
            z2.this.m2017if();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        String str = iyVar.f2262do;
                        if (TextUtils.isEmpty(str)) {
                            return;
                        }
                        ToastUtils.show((CharSequence) new JSONObject(str).optString("info"));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: ComicPresenter.java */
    /* renamed from: com.apk.z2$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse extends JsonCallback<LzyResponse<ComicListBean>> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ int f6099do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Celse(String str, int i) {
            super(str);
            this.f6099do = i;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<ComicListBean>> iyVar) {
            ComicListBean comicListBean;
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (comicListBean = iyVar.f2262do.data) == null || z2.this.f6096for == null) {
                        return;
                    }
                    z2.this.f6096for.mo2239new(comicListBean.getBookList(), comicListBean.isHasNext(), this.f6099do);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<LzyResponse<ComicListBean>> iyVar) {
            super.onError(iyVar);
            r5 r5Var = z2.this.f6096for;
            if (r5Var != null) {
                r5Var.mo2242throw();
            }
        }

        @Override // com.apk.mx
        public void onFinish(iy<LzyResponse<ComicListBean>> iyVar) {
            super.onFinish(iyVar);
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<ComicListBean>> iyVar) {
            ComicListBean comicListBean;
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (comicListBean = iyVar.f2262do.data) == null || z2.this.f6096for == null) {
                        return;
                    }
                    z2.this.f6096for.mo2239new(comicListBean.getBookList(), comicListBean.isHasNext(), this.f6099do);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: ComicPresenter.java */
    /* renamed from: com.apk.z2$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends PublicCallback {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f6101do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ boolean f6103if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(String str, boolean z, boolean z2) {
            super(str);
            this.f6101do = z;
            this.f6103if = z2;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<String> iyVar) {
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        z2.m3137try(z2.this, iyVar.f2262do, this.f6101do, this.f6103if);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            r5 r5Var = z2.this.f6096for;
            if (r5Var != null) {
                r5Var.mo2229case(null);
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        z2.m3137try(z2.this, iyVar.f2262do, this.f6101do, this.f6103if);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: ComicPresenter.java */
    /* renamed from: com.apk.z2$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto extends JsonCallback<LzyResponse<List<ComicElement>>> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f6104do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ int f6106if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cgoto(String str, String str2, int i) {
            super(str);
            this.f6104do = str2;
            this.f6106if = i;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<List<ComicElement>>> iyVar) {
            List<ComicElement> list;
            boolean z;
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (list = iyVar.f2262do.data) == null) {
                        return;
                    }
                    CryptDesManager.decodeClass(list);
                    Iterator<ComicElement> it = list.iterator();
                    while (true) {
                        z = true;
                        if (!it.hasNext()) {
                            break;
                        }
                        ComicElement next = it.next();
                        if ("commend".equals(this.f6104do)) {
                            next.setItemType(2);
                        } else {
                            next.setItemType(1);
                        }
                    }
                    if (z2.this.f6096for != null) {
                        r5 r5Var = z2.this.f6096for;
                        if (list.size() <= 1) {
                            z = false;
                        }
                        r5Var.mo2228break(list, z, this.f6106if);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<LzyResponse<List<ComicElement>>> iyVar) {
            super.onError(iyVar);
            r5 r5Var = z2.this.f6096for;
            if (r5Var != null) {
                r5Var.mo2228break(null, false, this.f6106if);
            }
        }

        @Override // com.apk.mx
        public void onFinish(iy<LzyResponse<List<ComicElement>>> iyVar) {
            super.onFinish(iyVar);
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<List<ComicElement>>> iyVar) {
            List<ComicElement> list;
            boolean z;
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (list = iyVar.f2262do.data) == null) {
                        return;
                    }
                    CryptDesManager.decodeClass(list);
                    Iterator<ComicElement> it = list.iterator();
                    while (true) {
                        z = true;
                        if (!it.hasNext()) {
                            break;
                        }
                        ComicElement next = it.next();
                        if ("commend".equals(this.f6104do)) {
                            next.setItemType(2);
                        } else {
                            next.setItemType(1);
                        }
                    }
                    if (z2.this.f6096for != null) {
                        r5 r5Var = z2.this.f6096for;
                        if (list.size() <= 1) {
                            z = false;
                        }
                        r5Var.mo2228break(list, z, this.f6106if);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: ComicPresenter.java */
    /* renamed from: com.apk.z2$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends PublicCallback {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f6107do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ ComicInfoEntity f6108for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f6109if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ int f6110new;

        public Cif(boolean z, String str, ComicInfoEntity comicInfoEntity, int i) {
            this.f6107do = z;
            this.f6109if = str;
            this.f6108for = comicInfoEntity;
            this.f6110new = i;
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            super.onFinish(iyVar);
            z2.this.m2016do();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onStart(qy<String, ? extends qy> qyVar) {
            super.onStart(qyVar);
            z2.this.m2017if();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        String str = iyVar.f2262do;
                        if (TextUtils.isEmpty(str)) {
                            return;
                        }
                        JSONObject jSONObject = new JSONObject(str);
                        ToastUtils.show((CharSequence) jSONObject.optString("info"));
                        JSONObject optJSONObject = jSONObject.optJSONObject("data");
                        if (optJSONObject == null || optJSONObject.optInt("result") != 1) {
                            return;
                        }
                        z2.m3133new(z2.this, this.f6107do, this.f6109if, this.f6108for);
                        if (z2.this.f6096for != null) {
                            z2.this.f6096for.mo2237goto(this.f6110new);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: ComicPresenter.java */
    /* renamed from: com.apk.z2$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends JsonCallback<LzyResponse<ComicDirBean>> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f6112do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ boolean f6114if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cnew(String str, String str2, boolean z) {
            super(str);
            this.f6112do = str2;
            this.f6114if = z;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<ComicDirBean>> iyVar) {
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        z2.m3132goto(z2.this, this.f6112do, iyVar.f2262do.data, false, this.f6114if);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<LzyResponse<ComicDirBean>> iyVar) {
            super.onError(iyVar);
            r5 r5Var = z2.this.f6096for;
            if (r5Var != null) {
                r5Var.mo2234else(null);
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<ComicDirBean>> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        z2.m3132goto(z2.this, this.f6112do, iyVar.f2262do.data, true, this.f6114if);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: ComicPresenter.java */
    /* renamed from: com.apk.z2$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends JsonCallback<LzyResponse<WantBookBean>> {
        public Ctry() {
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<WantBookBean>> iyVar) {
            LzyResponse<WantBookBean> lzyResponse;
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (lzyResponse = iyVar.f2262do) == null || z2.this.f6096for == null) {
                        return;
                    }
                    z2.this.f6096for.mo2240super(lzyResponse.data);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<LzyResponse<WantBookBean>> iyVar) {
            super.onError(iyVar);
            r5 r5Var = z2.this.f6096for;
            if (r5Var != null) {
                r5Var.mo2240super(null);
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<WantBookBean>> iyVar) {
            LzyResponse<WantBookBean> lzyResponse;
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (lzyResponse = iyVar.f2262do) == null || z2.this.f6096for == null) {
                        return;
                    }
                    z2.this.f6096for.mo2240super(lzyResponse.data);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public z2(Activity activity, r5 r5Var) {
        this.f3559do = activity;
        this.f6096for = r5Var;
    }

    /* renamed from: break  reason: not valid java name */
    public static ComicInfoEntity m3126break(String str) {
        JSONObject optJSONObject;
        ComicInfoEntity comicInfoEntity = null;
        try {
            if (TextUtils.isEmpty(str) || (optJSONObject = new JSONObject(str).optJSONObject("data")) == null) {
                return null;
            }
            ComicInfoEntity comicInfoEntity2 = new ComicInfoEntity();
            try {
                ArrayList<ComicBean> arrayList = new ArrayList();
                try {
                    optJSONObject.optString("UserName");
                    comicInfoEntity2.setCover(optJSONObject.optString("Cover"));
                    comicInfoEntity2.setTitle(optJSONObject.optString("Title"));
                    comicInfoEntity2.setForMan(optJSONObject.optBoolean("ForMan"));
                    comicInfoEntity2.setDescription(optJSONObject.optString("Description"));
                    comicInfoEntity2.setAddTime(optJSONObject.optString("AddTime"));
                    optJSONObject.optString("UpdateTime");
                    JSONArray optJSONArray = optJSONObject.optJSONArray("BookList");
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        int length = optJSONArray.length();
                        comicInfoEntity2.setBookCount(length);
                        ArrayList arrayList2 = new ArrayList();
                        for (int i = 0; i < length; i++) {
                            arrayList2.add(mu.s(optJSONArray.optJSONObject(i)));
                        }
                        arrayList = arrayList2;
                    }
                    if (arrayList.size() > 0) {
                        for (ComicBean comicBean : arrayList) {
                            comicBean.setItemType(1);
                        }
                    }
                    comicInfoEntity2.setBooks(arrayList);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return comicInfoEntity2;
            } catch (Exception e2) {
                e = e2;
                comicInfoEntity = comicInfoEntity2;
                e.printStackTrace();
                return comicInfoEntity;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    /* renamed from: case  reason: not valid java name */
    public static void m3127case(z2 z2Var, String str) {
        JSONArray optJSONArray;
        if (z2Var != null) {
            try {
                if (TextUtils.isEmpty(str) || (optJSONArray = new JSONObject(str).optJSONArray("data")) == null || optJSONArray.length() <= 0) {
                    return;
                }
                JSONObject optJSONObject = optJSONArray.optJSONObject(0);
                JSONObject optJSONObject2 = optJSONObject != null ? optJSONObject.optJSONObject("BookList") : null;
                JSONObject optJSONObject3 = optJSONArray.optJSONObject(1);
                List<ComicBean> k0 = optJSONObject3 != null ? ze.k0(optJSONObject3.optJSONArray("Books")) : null;
                if (z2Var.f6096for != null) {
                    z2Var.f6096for.mo2230catch(optJSONObject2, k0);
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* renamed from: catch  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m3128catch(com.apk.z2 r8, java.lang.String r9, java.lang.String r10) {
        /*
            r0 = 0
            if (r8 == 0) goto L8d
            r1 = 0
            boolean r2 = android.text.TextUtils.isEmpty(r9)     // Catch: java.lang.Exception -> L81
            if (r2 != 0) goto L85
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Exception -> L81
            r2.<init>(r9)     // Catch: java.lang.Exception -> L81
            java.lang.String r9 = "data"
            org.json.JSONObject r9 = r2.optJSONObject(r9)     // Catch: java.lang.Exception -> L81
            if (r9 == 0) goto L85
            java.lang.String r2 = "UserName"
            r9.optString(r2)     // Catch: java.lang.Exception -> L7c
            java.lang.String r2 = "Cover"
            java.lang.String r2 = r9.optString(r2)     // Catch: java.lang.Exception -> L7c
            java.lang.String r3 = "IsCheck"
            boolean r3 = r9.optBoolean(r3)     // Catch: java.lang.Exception -> L7c
            java.lang.String r4 = "IsRecycle"
            boolean r1 = r9.optBoolean(r4)     // Catch: java.lang.Exception -> L7c
            java.lang.String r4 = "Title"
            java.lang.String r4 = r9.optString(r4)     // Catch: java.lang.Exception -> L7c
            java.lang.String r5 = "ForMan"
            boolean r5 = r9.optBoolean(r5)     // Catch: java.lang.Exception -> L7c
            java.lang.String r6 = "Description"
            java.lang.String r6 = r9.optString(r6)     // Catch: java.lang.Exception -> L7c
            java.lang.String r7 = "AddTime"
            r9.optString(r7)     // Catch: java.lang.Exception -> L7c
            java.lang.String r7 = "UpdateTime"
            r9.optString(r7)     // Catch: java.lang.Exception -> L7c
            java.lang.String r7 = "BookList"
            org.json.JSONArray r9 = r9.optJSONArray(r7)     // Catch: java.lang.Exception -> L7c
            com.manhua.data.bean.CreateComicList r7 = new com.manhua.data.bean.CreateComicList     // Catch: java.lang.Exception -> L7c
            r7.<init>()     // Catch: java.lang.Exception -> L7c
            r7.setBookListId(r10)     // Catch: java.lang.Exception -> L79
            r7.setTitle(r4)     // Catch: java.lang.Exception -> L79
            r7.setIntro(r6)     // Catch: java.lang.Exception -> L79
            r7.setForMen(r5)     // Catch: java.lang.Exception -> L79
            r7.setCover(r2)     // Catch: java.lang.Exception -> L79
            r7.setCheck(r3)     // Catch: java.lang.Exception -> L79
            if (r9 == 0) goto L77
            java.lang.String r10 = r9.toString()     // Catch: java.lang.Exception -> L79
            r7.setBooks(r10)     // Catch: java.lang.Exception -> L79
            int r9 = r9.length()     // Catch: java.lang.Exception -> L79
            r7.setBookCount(r9)     // Catch: java.lang.Exception -> L79
        L77:
            r0 = r7
            goto L85
        L79:
            r9 = move-exception
            r0 = r7
            goto L7d
        L7c:
            r9 = move-exception
        L7d:
            r9.printStackTrace()     // Catch: java.lang.Exception -> L81
            goto L85
        L81:
            r9 = move-exception
            r9.printStackTrace()
        L85:
            com.apk.r5 r8 = r8.f6096for
            if (r8 == 0) goto L8c
            r8.mo2241this(r1, r0)
        L8c:
            return
        L8d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.z2.m3128catch(com.apk.z2, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x010d, code lost:
        if (r12 == r10) goto L58;
     */
    /* renamed from: else  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List m3129else(java.lang.String r15, com.biquge.ebook.app.bean.ComicDirBean r16, boolean r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.z2.m3129else(java.lang.String, com.biquge.ebook.app.bean.ComicDirBean, boolean, boolean):java.util.List");
    }

    /* renamed from: final  reason: not valid java name */
    public static List<ComicCategory> m3130final(JSONArray jSONArray, String str, boolean z) {
        List<ComicCategory> list;
        ArrayList arrayList = new ArrayList();
        if (z) {
            try {
                ComicCategory comicCategory = new ComicCategory();
                comicCategory.setName(ze.q(R.string.rank_category_man_txt));
                comicCategory.setItemType(2);
                comicCategory.setSex(str);
                arrayList.add(comicCategory);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (jSONArray != null) {
            try {
                list = (List) Convert.fromJson(jSONArray.toString(), new of().getType());
            } catch (Exception unused) {
                list = null;
            }
            if (list != null) {
                for (ComicCategory comicCategory2 : list) {
                    comicCategory2.setSex(str);
                }
                Collections.sort(list);
                CryptDesManager.decodeClass(list);
                arrayList.addAll(list);
            }
        }
        return arrayList;
    }

    /* renamed from: for  reason: not valid java name */
    public static void m3131for(String str, String str2, boolean z, String str3, String str4, String str5, int i) {
        try {
            LitePal.deleteAll(CreateComicList.class, "bookListId = ?", str);
            LitePal.deleteAll(ComicElement.class, "ListId = ? and type = ?", str2, "my_release");
            ComicElement comicElement = new ComicElement();
            comicElement.setListId(str2);
            comicElement.setUserName(v0.m2736try().m2738case());
            comicElement.setForMan(z);
            comicElement.setCover(str3);
            comicElement.setTitle(str4);
            comicElement.setDescription(str5);
            comicElement.setBookCount(i);
            comicElement.setCommendImage(str3);
            comicElement.setAddTime(kg.m1495else());
            comicElement.setUpdateTime(kg.m1495else());
            comicElement.setType("my_release");
            comicElement.save();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public static void m3132goto(z2 z2Var, String str, ComicDirBean comicDirBean, boolean z, boolean z2) {
        if (z2Var == null) {
            throw null;
        }
        new b1().m141do(new c3(z2Var, str, comicDirBean, z, z2));
    }

    /* renamed from: new  reason: not valid java name */
    public static void m3133new(z2 z2Var, boolean z, String str, ComicInfoEntity comicInfoEntity) {
        if (z2Var != null) {
            LitePal.deleteAll(ComicElement.class, "ListId = ? and type = ?", str, "my_collect");
            if (!z || comicInfoEntity == null) {
                return;
            }
            ComicElement comicElement = new ComicElement();
            comicElement.setListId(str);
            comicElement.setUserName(v0.m2736try().m2738case());
            comicElement.setCover(comicInfoEntity.getCover());
            comicElement.setForMan(comicInfoEntity.isForMan());
            comicElement.setTitle(comicInfoEntity.getTitle());
            comicElement.setDescription(comicInfoEntity.getDescription());
            comicElement.setBookCount(comicInfoEntity.getBookCount());
            comicElement.setAddTime(kg.m1495else());
            comicElement.setUpdateTime(kg.m1495else());
            comicElement.setType("my_collect");
            comicElement.save();
            return;
        }
        throw null;
    }

    /* renamed from: super  reason: not valid java name */
    public static ComicBean m3134super(String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        x4.m2958native(w.m2863try(str), z ? -1L : 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Ccase("SP_HOST_INFO_DEX_MH_KEY", arrayList));
        if (arrayList.size() > 0) {
            return (ComicBean) arrayList.get(0);
        }
        return null;
    }

    /* renamed from: this  reason: not valid java name */
    public static void m3135this(z2 z2Var, String str, List list, List list2) {
        if (z2Var != null) {
            try {
                LitePal.deleteAll(ComicElement.class, new String[0]);
                if (list != null) {
                    Collections.sort(list);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((ComicElement) it.next()).setType("my_release");
                    }
                    LitePal.saveAll(list);
                }
                if (list2 != null) {
                    Collections.sort(list2);
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        ((ComicElement) it2.next()).setType("my_collect");
                    }
                    LitePal.saveAll(list2);
                }
                if (z2Var.f6096for != null) {
                    if ("my_release".equals(str)) {
                        z2Var.f6096for.mo2231class(list, str);
                        return;
                    } else if ("my_collect".equals(str)) {
                        z2Var.f6096for.mo2231class(list2, str);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    /* renamed from: throw  reason: not valid java name */
    public static List<ComicChapterBean> m3136throw(String str) {
        try {
            return LitePal.where("novelId = ?", str).find(ComicChapterBean.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static void m3137try(z2 z2Var, String str, boolean z, boolean z2) {
        JSONObject optJSONObject;
        if (z2Var != null) {
            ArrayList arrayList = new ArrayList();
            try {
                if (!TextUtils.isEmpty(str) && (optJSONObject = new JSONObject(str).optJSONObject("data")) != null) {
                    if (z) {
                        arrayList.addAll(m3130final(optJSONObject.optJSONArray("man"), "1", true));
                        arrayList.addAll(m3130final(optJSONObject.optJSONArray("lady"), "2", true));
                    } else if (z2) {
                        arrayList.addAll(m3130final(optJSONObject.optJSONArray("man"), "1", false));
                    } else {
                        arrayList.addAll(m3130final(optJSONObject.optJSONArray("lady"), "2", false));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            r5 r5Var = z2Var.f6096for;
            if (r5Var != null) {
                r5Var.mo2229case(arrayList);
                return;
            }
            return;
        }
        throw null;
    }

    /* renamed from: class  reason: not valid java name */
    public void m3138class(String str) {
        x4.m2951default(com.apk.Cgoto.m990catch(new StringBuilder(), "/UserListAction.aspx"), com.apk.Cgoto.m1012public("action", "addcommend", "listid", str), new Cdo());
    }

    /* renamed from: const  reason: not valid java name */
    public void m3139const(boolean z, String str, ComicInfoEntity comicInfoEntity, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("action", z ? "addcollect" : "removecollect");
        hashMap.put("listid", str);
        x4.m2951default(com.apk.Cgoto.m990catch(new StringBuilder(), "/UserListAction.aspx"), hashMap, new Cif(z, str, comicInfoEntity, i));
    }

    /* renamed from: import  reason: not valid java name */
    public void m3140import(String str, boolean z) {
        x4.m2957import(w.m2844else(str), 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Cnew("SP_HOST_INFO_DEX_MH_KEY", str, z));
    }

    /* renamed from: native  reason: not valid java name */
    public void m3141native(boolean z, String str, int i, boolean z2) {
        if (z2) {
            this.f6096for.mo2228break(new ArrayList(), false, i);
        }
        String str2 = q0.f3779this[!z ? 1 : 0];
        String valueOf = String.valueOf(i);
        StringBuilder sb = new StringBuilder();
        sb.append(p0.m1998catch());
        sb.append("/shudan/");
        sb.append(str2);
        sb.append("/all/");
        sb.append(str);
        x4.m2957import(com.apk.Cgoto.m998final(sb, "/", valueOf, ".html"), i == 1 ? BaseConstants.Time.DAY : 0, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Cgoto("SP_HOST_SHUC_MH_KEY", str, i));
    }

    /* renamed from: public  reason: not valid java name */
    public void m3142public(String str, int i) {
        m3143return(str, i, i == 1 ? BaseConstants.Time.DAY : 0);
    }

    /* renamed from: return  reason: not valid java name */
    public void m3143return(String str, int i, long j) {
        x4.m2957import(str.replace("{page}", String.valueOf(i)), j, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Celse("SP_HOST_SHUC_MH_KEY", i));
    }

    /* renamed from: static  reason: not valid java name */
    public void m3144static() {
        HashMap m1007native = com.apk.Cgoto.m1007native("action", NotificationCompat.CATEGORY_PROGRESS);
        m1007native.put("deviceno", eg.m613super());
        x4.m2964throws(com.apk.Cgoto.m990catch(new StringBuilder(), "/UploadBook.aspx"), m1007native, 1800000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Ctry());
    }

    /* renamed from: while  reason: not valid java name */
    public final void m3145while(boolean z, boolean z2) {
        x4.m2957import(p0.m1998catch() + "/Categories/BookCategory.html", 604800000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Cfor("SP_HOST_SHUC_MH_KEY", z, z2));
    }
}
