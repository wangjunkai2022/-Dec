package com.apk;

import android.app.Activity;
import android.content.ContentValues;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.BookElement;
import com.biquge.ebook.app.bean.BookInfoEntity;
import com.biquge.ebook.app.bean.BookListBean;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.CreateBookList;
import com.biquge.ebook.app.bean.NewReadFont;
import com.biquge.ebook.app.bean.NovelCategory;
import com.biquge.ebook.app.bean.NovelDirBean;
import com.biquge.ebook.app.bean.WantBookBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.hjq.toast.ToastUtils;
import com.jni.crypt.project.CryptDesManager;
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
/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class v3 extends p1 {

    /* renamed from: for  reason: not valid java name */
    public final u5 f4987for;

    /* compiled from: NovelPresenter.java */
    /* renamed from: com.apk.v3$break  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cbreak extends JsonCallback<LzyResponse<List<BookElement>>> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f4988do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ int f4990if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cbreak(String str, String str2, int i) {
            super(str);
            this.f4988do = str2;
            this.f4990if = i;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<List<BookElement>>> iyVar) {
            List<BookElement> list;
            boolean z;
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (list = iyVar.f2262do.data) == null) {
                        return;
                    }
                    Iterator<BookElement> it = list.iterator();
                    while (true) {
                        z = true;
                        if (!it.hasNext()) {
                            break;
                        }
                        BookElement next = it.next();
                        if ("commend".equals(this.f4988do)) {
                            next.setItemType(2);
                        } else {
                            next.setItemType(1);
                        }
                    }
                    if (v3.this.f4987for != null) {
                        u5 u5Var = v3.this.f4987for;
                        if (list.size() <= 1) {
                            z = false;
                        }
                        u5Var.mo2671catch(list, z, this.f4990if);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<LzyResponse<List<BookElement>>> iyVar) {
            super.onError(iyVar);
            u5 u5Var = v3.this.f4987for;
            if (u5Var != null) {
                u5Var.mo2671catch(null, false, this.f4990if);
            }
        }

        @Override // com.apk.mx
        public void onFinish(iy<LzyResponse<List<BookElement>>> iyVar) {
            super.onFinish(iyVar);
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<List<BookElement>>> iyVar) {
            List<BookElement> list;
            boolean z;
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (list = iyVar.f2262do.data) == null) {
                        return;
                    }
                    Iterator<BookElement> it = list.iterator();
                    while (true) {
                        z = true;
                        if (!it.hasNext()) {
                            break;
                        }
                        BookElement next = it.next();
                        if ("commend".equals(this.f4988do)) {
                            next.setItemType(2);
                        } else {
                            next.setItemType(1);
                        }
                    }
                    if (v3.this.f4987for != null) {
                        u5 u5Var = v3.this.f4987for;
                        if (list.size() <= 1) {
                            z = false;
                        }
                        u5Var.mo2671catch(list, z, this.f4990if);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: NovelPresenter.java */
    /* renamed from: com.apk.v3$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends JsonCallback<LzyResponse<WantBookBean>> {
        public Ccase() {
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<WantBookBean>> iyVar) {
            LzyResponse<WantBookBean> lzyResponse;
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (lzyResponse = iyVar.f2262do) == null || v3.this.f4987for == null) {
                        return;
                    }
                    v3.this.f4987for.mo2684return(lzyResponse.data);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<LzyResponse<WantBookBean>> iyVar) {
            super.onError(iyVar);
            u5 u5Var = v3.this.f4987for;
            if (u5Var != null) {
                u5Var.mo2684return(null);
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<WantBookBean>> iyVar) {
            LzyResponse<WantBookBean> lzyResponse;
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (lzyResponse = iyVar.f2262do) == null || v3.this.f4987for == null) {
                        return;
                    }
                    v3.this.f4987for.mo2684return(lzyResponse.data);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: NovelPresenter.java */
    /* renamed from: com.apk.v3$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends JsonCallback<LzyResponse<Book>> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ List f4992do;

        public Cdo(List list) {
            this.f4992do = list;
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<LzyResponse<Book>> iyVar) {
            super.onError(iyVar);
            if (x4.m2950const(iyVar)) {
                v3.m2759new();
            }
        }

        @Override // com.apk.mx
        public void onFinish(iy<LzyResponse<Book>> iyVar) {
            Book book;
            super.onFinish(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (book = iyVar.f2262do.data) == null) {
                        return;
                    }
                    CryptDesManager.decodeClass(book);
                    this.f4992do.add(book);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<Book>> iyVar) {
            Book book;
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (book = iyVar.f2262do.data) == null) {
                        return;
                    }
                    v3.m2753class(book);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: NovelPresenter.java */
    /* renamed from: com.apk.v3$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse extends PublicCallback {
        public Celse() {
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            super.onFinish(iyVar);
            v3.this.m2016do();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onStart(qy<String, ? extends qy> qyVar) {
            super.onStart(qyVar);
            v3.this.m2017if();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            JSONObject optJSONObject;
            String q;
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        String str = iyVar.f2262do;
                        if (!TextUtils.isEmpty(str) && (optJSONObject = new JSONObject(str).optJSONObject("data")) != null) {
                            int optInt = optJSONObject.optInt("result", -1);
                            if (optInt == -1) {
                                q = ze.q(R.string.recommend_faild_not_login_txt);
                            } else if (optInt == 0) {
                                q = ze.q(R.string.recommend_faild_no_ticket_txt);
                            } else if (optInt > 0) {
                                q = ze.r(R.string.recommend_ticket_txt, optInt + "");
                            } else {
                                q = ze.q(R.string.recommend_faild_txt);
                            }
                            ToastUtils.show((CharSequence) q);
                            return;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
        }
    }

    /* compiled from: NovelPresenter.java */
    /* renamed from: com.apk.v3$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends PublicCallback {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f4994do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ BookInfoEntity f4995for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ boolean f4996if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ int f4997new;

        public Cfor(String str, boolean z, BookInfoEntity bookInfoEntity, int i) {
            this.f4994do = str;
            this.f4996if = z;
            this.f4995for = bookInfoEntity;
            this.f4997new = i;
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            super.onFinish(iyVar);
            v3.this.m2016do();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onStart(qy<String, ? extends qy> qyVar) {
            super.onStart(qyVar);
            v3.this.m2017if();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        JSONObject jSONObject = new JSONObject(iyVar.f2262do);
                        ToastUtils.show((CharSequence) jSONObject.optString("info"));
                        JSONObject optJSONObject = jSONObject.optJSONObject("data");
                        if (optJSONObject == null || optJSONObject.optInt("result") != 1) {
                            return;
                        }
                        LitePal.deleteAll(BookElement.class, "ListId = ? and type = ?", this.f4994do, "my_collect");
                        v3.m2751case(v3.this, this.f4996if, this.f4994do, this.f4995for);
                        if (v3.this.f4987for != null) {
                            v3.this.f4987for.mo2688this(this.f4997new);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: NovelPresenter.java */
    /* renamed from: com.apk.v3$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto extends JsonCallback<LzyResponse<BookListBean>> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ int f4999do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cgoto(String str, int i) {
            super(str);
            this.f4999do = i;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<BookListBean>> iyVar) {
            BookListBean bookListBean;
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (bookListBean = iyVar.f2262do.data) == null || v3.this.f4987for == null) {
                        return;
                    }
                    v3.this.f4987for.mo2690try(bookListBean.getBookList(), bookListBean.isHasNext(), this.f4999do);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<LzyResponse<BookListBean>> iyVar) {
            super.onError(iyVar);
            u5 u5Var = v3.this.f4987for;
            if (u5Var != null) {
                u5Var.mo2687switch();
            }
        }

        @Override // com.apk.mx
        public void onFinish(iy<LzyResponse<BookListBean>> iyVar) {
            super.onFinish(iyVar);
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<BookListBean>> iyVar) {
            BookListBean bookListBean;
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (!iyVar.m1293for() || (bookListBean = iyVar.f2262do.data) == null || v3.this.f4987for == null) {
                        return;
                    }
                    v3.this.f4987for.mo2690try(bookListBean.getBookList(), bookListBean.isHasNext(), this.f4999do);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: NovelPresenter.java */
    /* renamed from: com.apk.v3$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends PublicCallback {
        public Cif() {
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            super.onFinish(iyVar);
            v3.this.m2016do();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onStart(qy<String, ? extends qy> qyVar) {
            super.onStart(qyVar);
            v3.this.m2017if();
        }

        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<String> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        ToastUtils.show((CharSequence) new JSONObject(iyVar.f2262do).optString("info"));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: NovelPresenter.java */
    /* renamed from: com.apk.v3$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends JsonCallback<LzyResponse<NovelDirBean>> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f5002do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ boolean f5004if;

        public Cnew(String str, boolean z) {
            this.f5002do = str;
            this.f5004if = z;
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<NovelDirBean>> iyVar) {
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        v3.m2760this(v3.this, this.f5002do, iyVar.f2262do.data, false, this.f5004if);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<LzyResponse<NovelDirBean>> iyVar) {
            super.onError(iyVar);
            u5 u5Var = v3.this.f4987for;
            if (u5Var != null) {
                u5Var.mo2678goto(null);
            }
            if (x4.m2950const(iyVar)) {
                v3.m2759new();
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<NovelDirBean>> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        v3.m2760this(v3.this, this.f5002do, iyVar.f2262do.data, true, this.f5004if);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: NovelPresenter.java */
    /* renamed from: com.apk.v3$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthis extends JsonCallback<LzyResponse<List<NovelCategory>>> {
        public Cthis(String str) {
            super(str);
        }

        @Override // com.apk.mx
        public void onCacheSuccess(iy<LzyResponse<List<NovelCategory>>> iyVar) {
            super.onCacheSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        List<NovelCategory> list = iyVar.f2262do.data;
                        if (list != null) {
                            Collections.sort(list);
                        }
                        if (v3.this.f4987for != null) {
                            v3.this.f4987for.mo2677for(list);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<LzyResponse<List<NovelCategory>>> iyVar) {
            super.onError(iyVar);
        }

        @Override // com.apk.mx
        public void onFinish(iy<LzyResponse<List<NovelCategory>>> iyVar) {
            super.onFinish(iyVar);
        }

        @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onSuccess(iy<LzyResponse<List<NovelCategory>>> iyVar) {
            super.onSuccess(iyVar);
            if (iyVar != null) {
                try {
                    if (iyVar.m1293for()) {
                        List<NovelCategory> list = iyVar.f2262do.data;
                        if (list != null) {
                            Collections.sort(list);
                        }
                        if (v3.this.f4987for != null) {
                            v3.this.f4987for.mo2677for(list);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: NovelPresenter.java */
    /* renamed from: com.apk.v3$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends PublicCallback {
        public Ctry() {
        }

        @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        public void onError(iy<String> iyVar) {
            super.onError(iyVar);
            ToastUtils.show((CharSequence) ze.q(R.string.upload_book_fail));
        }

        @Override // com.apk.mx
        public void onFinish(iy<String> iyVar) {
            super.onFinish(iyVar);
            v3.this.m2016do();
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
            if (r3.optInt(androidx.core.app.NotificationCompat.CATEGORY_STATUS, -1) == 1) goto L4;
         */
        @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onSuccess(com.apk.iy<java.lang.String> r6) {
            /*
                r5 = this;
                super.onSuccess(r6)
                r0 = 1
                r1 = 0
                r2 = 0
                if (r6 == 0) goto L32
                boolean r3 = r6.m1293for()     // Catch: java.lang.Exception -> L2d
                if (r3 == 0) goto L32
                T r6 = r6.f2262do     // Catch: java.lang.Exception -> L2d
                java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L2d
                boolean r3 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L2d
                if (r3 != 0) goto L32
                org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Exception -> L2d
                r3.<init>(r6)     // Catch: java.lang.Exception -> L2d
                java.lang.String r6 = "info"
                java.lang.String r2 = r3.optString(r6)     // Catch: java.lang.Exception -> L2d
                java.lang.String r6 = "status"
                r4 = -1
                int r6 = r3.optInt(r6, r4)     // Catch: java.lang.Exception -> L2d
                if (r6 != r0) goto L32
                goto L33
            L2d:
                r6 = move-exception
                r6.printStackTrace()
                goto L34
            L32:
                r0 = 0
            L33:
                r1 = r0
            L34:
                if (r1 == 0) goto L3f
                com.apk.v3 r6 = com.apk.v3.this
                com.apk.u5 r6 = r6.f4987for
                if (r6 == 0) goto L3f
                r6.mo2683public(r2)
            L3f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.v3.Ctry.onSuccess(com.apk.iy):void");
        }
    }

    public v3(Activity activity, u5 u5Var) {
        this.f3559do = activity;
        this.f4987for = u5Var;
    }

    /* renamed from: break  reason: not valid java name */
    public static void m2750break(String str, String str2, boolean z, String str3, String str4, String str5, int i) {
        try {
            LitePal.deleteAll(CreateBookList.class, "bookListId = ?", str);
            LitePal.deleteAll(BookElement.class, "ListId = ? and type = ?", str2, "my_release");
            BookElement bookElement = new BookElement();
            bookElement.setListId(str2);
            bookElement.setUserName(v0.m2736try().m2738case());
            bookElement.setForMan(z);
            bookElement.setCover(str3);
            bookElement.setTitle(str4);
            bookElement.setDescription(str5);
            bookElement.setBookCount(i);
            bookElement.setCommendImage(str3);
            bookElement.setAddTime(kg.m1495else());
            bookElement.setUpdateTime(kg.m1495else());
            bookElement.setType("my_release");
            bookElement.save();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: case  reason: not valid java name */
    public static void m2751case(v3 v3Var, boolean z, String str, BookInfoEntity bookInfoEntity) {
        if (v3Var == null) {
            throw null;
        }
        if (!z || bookInfoEntity == null) {
            return;
        }
        BookElement bookElement = new BookElement();
        bookElement.setListId(str);
        bookElement.setUserName(v0.m2736try().m2738case());
        bookElement.setCover(bookInfoEntity.getCover());
        bookElement.setForMan(bookInfoEntity.isForMan());
        bookElement.setTitle(bookInfoEntity.getTitle());
        bookElement.setDescription(bookInfoEntity.getDescription());
        bookElement.setBookCount(bookInfoEntity.getBookList().size());
        bookElement.setAddTime(kg.m1495else());
        bookElement.setUpdateTime(kg.m1495else());
        bookElement.setType("my_collect");
        bookElement.save();
    }

    /* renamed from: catch  reason: not valid java name */
    public static void m2752catch(v3 v3Var, String str, List list, List list2) {
        if (v3Var != null) {
            try {
                LitePal.deleteAll(BookElement.class, new String[0]);
                if (list != null) {
                    Collections.sort(list);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((BookElement) it.next()).setType("my_release");
                    }
                    LitePal.saveAll(list);
                }
                if (list2 != null) {
                    Collections.sort(list2);
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        ((BookElement) it2.next()).setType("my_collect");
                    }
                    LitePal.saveAll(list2);
                }
                if (v3Var.f4987for != null) {
                    if ("my_release".equals(str)) {
                        v3Var.f4987for.mo2689throw(list, str);
                        return;
                    } else if ("my_collect".equals(str)) {
                        v3Var.f4987for.mo2689throw(list2, str);
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

    /* renamed from: class  reason: not valid java name */
    public static void m2753class(Book book) {
        try {
            if (book.getCloudList() != null && book.getCloudList().size() > 0) {
                p0.m2007import(book.getId(), Convert.toJson(book.getCloudList()));
            }
            if (!TextUtils.isEmpty(book.getBookStatus())) {
                w0.m2886private(book.getId(), book.getBookStatus());
            }
            CollectBook m1841throw = n2.m1841throw(book.getId());
            if (m1841throw == null || !TextUtils.isEmpty(m1841throw.getFirstChapterId())) {
                return;
            }
            String id = book.getId();
            String firstChapterId = book.getFirstChapterId();
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("firstChapterId", firstChapterId);
                LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", id);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: default  reason: not valid java name */
    public static List<NewReadFont> m2754default(List<NewReadFont> list, boolean z) {
        NewReadFont newReadFont;
        if (list != null) {
            Collections.sort(list);
            List<NewReadFont> findAll = LitePal.findAll(NewReadFont.class, new long[0]);
            if (findAll != null) {
                HashMap hashMap = new HashMap();
                for (NewReadFont newReadFont2 : findAll) {
                    hashMap.put(newReadFont2.getFid(), newReadFont2);
                }
                for (NewReadFont newReadFont3 : list) {
                    if (hashMap.containsKey(newReadFont3.getFid()) && (newReadFont = (NewReadFont) hashMap.get(newReadFont3.getFid())) != null) {
                        newReadFont3.setTotalSize(newReadFont.getTotalSize());
                        newReadFont3.setCurrentSize(newReadFont.getCurrentSize());
                        newReadFont3.setFinish(newReadFont.isFinish());
                        newReadFont3.setLocalPath(newReadFont.getLocalPath());
                        newReadFont3.setStartDownload(newReadFont.isStartDownload());
                    }
                }
                if (z) {
                    LitePal.deleteAll(NewReadFont.class, new String[0]);
                    LitePal.saveAll(list);
                }
            }
            NewReadFont newReadFont4 = new NewReadFont();
            newReadFont4.setFid(SpeechSynthesizer.REQUEST_DNS_OFF);
            newReadFont4.setFontname(ze.q(R.string.defult_font_txt));
            newReadFont4.setSort(SpeechSynthesizer.REQUEST_DNS_OFF);
            newReadFont4.setSize("");
            newReadFont4.setUrl("default_font_url");
            list.add(0, newReadFont4);
        }
        return list;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* renamed from: else  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2755else(com.apk.v3 r8, java.lang.String r9, java.lang.String r10) {
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
            com.biquge.ebook.app.bean.CreateBookList r7 = new com.biquge.ebook.app.bean.CreateBookList     // Catch: java.lang.Exception -> L7c
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
            com.apk.u5 r8 = r8.f4987for
            if (r8 == 0) goto L8c
            r8.mo2669break(r1, r0)
        L8c:
            return
        L8d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.v3.m2755else(com.apk.v3, java.lang.String, java.lang.String):void");
    }

    /* renamed from: for  reason: not valid java name */
    public static void m2756for(v3 v3Var, String str) {
        JSONArray optJSONArray;
        if (v3Var != null) {
            try {
                if (TextUtils.isEmpty(str) || (optJSONArray = new JSONObject(str).optJSONArray("data")) == null || optJSONArray.length() <= 0) {
                    return;
                }
                JSONObject optJSONObject = optJSONArray.optJSONObject(0);
                JSONObject optJSONObject2 = optJSONObject != null ? optJSONObject.optJSONObject("BookList") : null;
                JSONObject optJSONObject3 = optJSONArray.optJSONObject(1);
                List<Book> i0 = optJSONObject3 != null ? ze.i0(optJSONObject3.optJSONArray("Books")) : null;
                if (v3Var.f4987for != null) {
                    v3Var.f4987for.mo2672class(optJSONObject2, i0);
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

    /* renamed from: goto  reason: not valid java name */
    public static List m2757goto(String str, NovelDirBean novelDirBean, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        if (novelDirBean != null) {
            CryptDesManager.decodeClass(novelDirBean);
            List<NovelDirBean.NovelDirListBean> list = novelDirBean.getList();
            if (list != null) {
                for (NovelDirBean.NovelDirListBean novelDirListBean : list) {
                    if (novelDirListBean != null) {
                        String name = novelDirListBean.getName();
                        ChapterBean chapterBean = new ChapterBean();
                        chapterBean.setNovelId(str);
                        chapterBean.setOid(String.valueOf(System.currentTimeMillis()));
                        chapterBean.setUrl("ROLLNAME_LAYOUT_KEY");
                        chapterBean.setName(name);
                        chapterBean.setRollName(name);
                        chapterBean.setPid("");
                        chapterBean.setNid("");
                        chapterBean.setHasContent(false);
                        arrayList.add(chapterBean);
                        List<NovelDirBean.NovelDirListChildBean> list2 = novelDirListBean.getList();
                        if (list2 != null) {
                            for (NovelDirBean.NovelDirListChildBean novelDirListChildBean : list2) {
                                if (novelDirListChildBean != null) {
                                    ChapterBean chapterBean2 = new ChapterBean();
                                    chapterBean2.setNovelId(str);
                                    chapterBean2.setOid(novelDirListChildBean.getId());
                                    chapterBean2.setName(novelDirListChildBean.getName());
                                    chapterBean2.setHasContent(novelDirListChildBean.getHasContent() == 1);
                                    if (z2) {
                                        chapterBean2.setCache(g2.m932while(chapterBean2));
                                    }
                                    arrayList.add(chapterBean2);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (z) {
            try {
                if (arrayList.size() > 0) {
                    List<ChapterBean> m2758import = m2758import(str);
                    if (m2758import != null) {
                        HashMap hashMap = new HashMap();
                        for (ChapterBean chapterBean3 : m2758import) {
                            hashMap.put(chapterBean3.getOid(), chapterBean3);
                        }
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ChapterBean chapterBean4 = (ChapterBean) it.next();
                            ChapterBean chapterBean5 = (ChapterBean) hashMap.get(chapterBean4.getOid());
                            chapterBean4.setPid(chapterBean5 != null ? chapterBean5.getPid() : "");
                            chapterBean4.setNid(chapterBean5 != null ? chapterBean5.getNid() : "");
                            if (n2.k(str, chapterBean4.getOid())) {
                                chapterBean4.setHasContent(chapterBean5 != null ? chapterBean5.isHasContent() : chapterBean4.isHasContent());
                            } else {
                                chapterBean4.setHasContent(chapterBean4.isHasContent());
                            }
                            chapterBean4.setChangeSourceUrl(chapterBean5 != null ? chapterBean5.getChangeSourceUrl() : "");
                            chapterBean4.setNeed_share(chapterBean5 != null ? chapterBean5.getNeed_share() : "");
                        }
                    }
                    g2.m927static(str, arrayList, true);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    /* renamed from: import  reason: not valid java name */
    public static List<ChapterBean> m2758import(String str) {
        try {
            return LitePal.where("novelId = ?", str).find(ChapterBean.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: new  reason: not valid java name */
    public static void m2759new() {
        List list;
        p0.m2010public("SP_HOST_INFO_DEX_XS_KEY", p0.m1997case("SP_HOST_INFO_DEX_XS_KEY") + 1);
        if (!eg.m598goto("NOVEL_CLOUD_CHANGE_XS_INFO_HOST_KEY") || (list = (List) p0.m2001do("NOVEL_CLOUD_CHANGE_XS_INFO_HOST_KEY")) == null || list.size() <= 0) {
            return;
        }
        list.add(list.remove(0));
        p0.m2011super("NOVEL_CLOUD_CHANGE_XS_INFO_HOST_KEY", list);
    }

    /* renamed from: this  reason: not valid java name */
    public static void m2760this(v3 v3Var, String str, NovelDirBean novelDirBean, boolean z, boolean z2) {
        if (v3Var == null) {
            throw null;
        }
        new b1().m141do(new e4(v3Var, str, novelDirBean, z, z2));
    }

    /* renamed from: throw  reason: not valid java name */
    public static Book m2761throw(String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        x4.m2958native(w.m2864while(str), z ? -1L : 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Cdo(arrayList));
        if (arrayList.size() > 0) {
            return (Book) arrayList.get(0);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0093  */
    /* renamed from: try  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.biquge.ebook.app.bean.BookInfoEntity m2762try(com.apk.v3 r4, java.lang.String r5) {
        /*
            r0 = 0
            if (r4 == 0) goto L97
            boolean r4 = android.text.TextUtils.isEmpty(r5)
            if (r4 != 0) goto L91
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: org.json.JSONException -> L8d
            r4.<init>(r5)     // Catch: org.json.JSONException -> L8d
            java.lang.String r5 = "data"
            org.json.JSONObject r4 = r4.optJSONObject(r5)     // Catch: org.json.JSONException -> L8d
            if (r4 == 0) goto L91
            com.biquge.ebook.app.bean.BookInfoEntity r5 = new com.biquge.ebook.app.bean.BookInfoEntity     // Catch: org.json.JSONException -> L8d
            r5.<init>()     // Catch: org.json.JSONException -> L8d
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: org.json.JSONException -> L8a
            r0.<init>()     // Catch: org.json.JSONException -> L8a
            java.lang.String r1 = "UserName"
            r4.optString(r1)     // Catch: java.lang.Exception -> L84
            java.lang.String r1 = "Cover"
            java.lang.String r1 = r4.optString(r1)     // Catch: java.lang.Exception -> L84
            r5.setCover(r1)     // Catch: java.lang.Exception -> L84
            java.lang.String r1 = "Title"
            java.lang.String r1 = r4.optString(r1)     // Catch: java.lang.Exception -> L84
            r5.setTitle(r1)     // Catch: java.lang.Exception -> L84
            java.lang.String r1 = "ForMan"
            boolean r1 = r4.optBoolean(r1)     // Catch: java.lang.Exception -> L84
            r5.setForMan(r1)     // Catch: java.lang.Exception -> L84
            java.lang.String r1 = "Description"
            java.lang.String r1 = r4.optString(r1)     // Catch: java.lang.Exception -> L84
            r5.setDescription(r1)     // Catch: java.lang.Exception -> L84
            java.lang.String r1 = "AddTime"
            java.lang.String r1 = r4.optString(r1)     // Catch: java.lang.Exception -> L84
            r5.setAddTime(r1)     // Catch: java.lang.Exception -> L84
            java.lang.String r1 = "UpdateTime"
            r4.optString(r1)     // Catch: java.lang.Exception -> L84
            java.lang.String r1 = "BookList"
            org.json.JSONArray r4 = r4.optJSONArray(r1)     // Catch: java.lang.Exception -> L84
            if (r4 == 0) goto L80
            int r1 = r4.length()     // Catch: java.lang.Exception -> L84
            if (r1 <= 0) goto L80
            int r0 = r4.length()     // Catch: java.lang.Exception -> L84
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Exception -> L84
            r1.<init>()     // Catch: java.lang.Exception -> L84
            r2 = 0
        L6f:
            if (r2 >= r0) goto L7f
            org.json.JSONObject r3 = r4.optJSONObject(r2)     // Catch: java.lang.Exception -> L84
            com.biquge.ebook.app.bean.Book r3 = com.apk.n2.m(r3)     // Catch: java.lang.Exception -> L84
            r1.add(r3)     // Catch: java.lang.Exception -> L84
            int r2 = r2 + 1
            goto L6f
        L7f:
            r0 = r1
        L80:
            r5.setBookList(r0)     // Catch: java.lang.Exception -> L84
            goto L88
        L84:
            r4 = move-exception
            r4.printStackTrace()     // Catch: org.json.JSONException -> L8a
        L88:
            r0 = r5
            goto L91
        L8a:
            r4 = move-exception
            r0 = r5
            goto L8e
        L8d:
            r4 = move-exception
        L8e:
            r4.printStackTrace()
        L91:
            if (r0 == 0) goto L96
            com.jni.crypt.project.CryptDesManager.decodeClass(r0)
        L96:
            return r0
        L97:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.v3.m2762try(com.apk.v3, java.lang.String):com.biquge.ebook.app.bean.BookInfoEntity");
    }

    /* renamed from: while  reason: not valid java name */
    public static String m2763while(String str, String str2) {
        JSONObject optJSONObject;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("action", "bookid");
            hashMap.put("bookname", str);
            hashMap.put(NotificationCompat.CarExtender.KEY_AUTHOR, str2);
            JSONObject m2953extends = x4.m2953extends(p0.m2009new() + "/BookAction.aspx", hashMap);
            if (m2953extends == null || (optJSONObject = m2953extends.optJSONObject("data")) == null) {
                return null;
            }
            return optJSONObject.optString("bookid");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: const  reason: not valid java name */
    public void m2764const(boolean z, String str, BookInfoEntity bookInfoEntity, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("action", z ? "addcollect" : "removecollect");
        hashMap.put("listid", str);
        x4.m2951default(com.apk.Cgoto.m988break(new StringBuilder(), "/UserListAction.aspx"), hashMap, new Cfor(str, z, bookInfoEntity, i));
    }

    /* renamed from: extends  reason: not valid java name */
    public final void m2767native(String str, String str2, String str3) {
        HashMap m1012public = com.apk.Cgoto.m1012public("action", "uploadbooks", "Name", str);
        m1012public.put("Author", str2);
        m1012public.put("Txt", str3);
        x4.m2951default(w.m2842default(), m1012public, new Ctry());
    }

    /* renamed from: final  reason: not valid java name */
    public void m2766final(String str) {
        x4.m2951default(com.apk.Cgoto.m988break(new StringBuilder(), "/UserListAction.aspx"), com.apk.Cgoto.m1012public("action", "addcommend", "listid", str), new Cif());
    }

    /* renamed from: public  reason: not valid java name */
    public void m2768public(boolean z, String str, int i, boolean z2) {
        u5 u5Var;
        if (z2 && (u5Var = this.f4987for) != null) {
            u5Var.mo2671catch(new ArrayList(), false, i);
        }
        String valueOf = String.valueOf(i);
        StringBuilder sb = new StringBuilder();
        sb.append(p0.m1999class());
        sb.append("/shudan/");
        com.apk.Cgoto.m993continue(sb, z ? "man" : "lady", "/all/", str, "/");
        x4.m2957import(com.apk.Cgoto.m991class(sb, valueOf, ".html"), i == 1 ? BaseConstants.Time.DAY : 0, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Cbreak("SP_HOST_SHUC_XS_KEY", str, i));
    }

    /* renamed from: return  reason: not valid java name */
    public void m2769return() {
        x4.m2957import(p0.m1999class() + "/Categories/BookCategory.html", 604800000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Cthis("SP_HOST_SHUC_XS_KEY"));
    }

    /* renamed from: static  reason: not valid java name */
    public void m2770static(String str, boolean z) {
        x4.m2957import(w.m2861throw(str), 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Cnew(str, z));
    }

    /* renamed from: super  reason: not valid java name */
    public void m2771super(boolean z, String str) {
        String m990catch;
        HashMap m1007native = com.apk.Cgoto.m1007native("action", "addbookcommend");
        if (z) {
            m1007native.put("bookId", str);
            m990catch = com.apk.Cgoto.m988break(new StringBuilder(), "/BookAction.aspx");
        } else {
            m1007native.put("bookId", str);
            m990catch = com.apk.Cgoto.m990catch(new StringBuilder(), "/BookAction.aspx");
        }
        x4.m2951default(m990catch, m1007native, new Celse());
    }

    /* renamed from: switch  reason: not valid java name */
    public void m2772switch(String str, int i) {
        x4.m2957import(str.replace("{page}", String.valueOf(i)), i == 1 ? BaseConstants.Time.DAY : 0, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Cgoto("SP_HOST_SHUC_XS_KEY", i));
    }

    /* renamed from: throws  reason: not valid java name */
    public void m2773throws() {
        HashMap m1007native = com.apk.Cgoto.m1007native("action", NotificationCompat.CATEGORY_PROGRESS);
        m1007native.put("deviceno", eg.m613super());
        x4.m2964throws(w.m2842default(), m1007native, 1800000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new Ccase());
    }
}
