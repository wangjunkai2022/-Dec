package com.apk;

import android.content.Context;
import android.os.AsyncTask;
import com.apk.zu;
import com.lxj.xpopup.impl.LoadingPopupView;
import java.lang.ref.WeakReference;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
/* compiled from: AppReqTask.java */
/* loaded from: classes8.dex */
public class b1<ResultType> extends AsyncTask<Void, Void, ResultType> {

    /* renamed from: do  reason: not valid java name */
    public c1<ResultType> f232do;

    /* renamed from: for  reason: not valid java name */
    public WeakReference<LoadingPopupView> f233for;

    /* renamed from: if  reason: not valid java name */
    public WeakReference<LoadingPopupView> f234if;

    /* renamed from: do  reason: not valid java name */
    public b1<ResultType> m141do(c1<ResultType> c1Var) {
        ThreadPoolExecutor threadPoolExecutor = o.m1921for().f3327do;
        this.f232do = c1Var;
        executeOnExecutor(threadPoolExecutor, new Void[0]);
        return this;
    }

    @Override // android.os.AsyncTask
    public Object doInBackground(Void[] voidArr) {
        c1<ResultType> c1Var = this.f232do;
        if (c1Var != null) {
            return c1Var.doInBackground();
        }
        return null;
    }

    /* renamed from: for  reason: not valid java name */
    public b1<ResultType> m142for(Context context, boolean z, String str) {
        if (context != null) {
            if (z) {
                if (this.f233for == null) {
                    zu.Cdo cdo = new zu.Cdo(context);
                    cdo.f6267do.f2924for = Boolean.FALSE;
                    this.f233for = new WeakReference<>(cdo.m3248break(ze.q(R.string.progress_dialog_holdon)));
                }
                try {
                    if (this.f233for != null && this.f233for.get() != null) {
                        LoadingPopupView loadingPopupView = this.f233for.get();
                        loadingPopupView.m3605if(str);
                        loadingPopupView.show();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                if (this.f234if == null) {
                    lv lvVar = new lv();
                    Boolean bool = Boolean.FALSE;
                    lvVar.f2943try = bool;
                    lvVar.f2924for = bool;
                    String q = ze.q(R.string.progress_dialog_holdon);
                    lvVar.f2917continue = zu.f6266try;
                    LoadingPopupView loadingPopupView2 = new LoadingPopupView(context, R.layout.code_public_loading_view);
                    loadingPopupView2.m3605if(q);
                    loadingPopupView2.popupInfo = lvVar;
                    this.f234if = new WeakReference<>(loadingPopupView2);
                }
                try {
                    if (this.f234if != null && this.f234if.get() != null) {
                        LoadingPopupView loadingPopupView3 = this.f234if.get();
                        loadingPopupView3.m3605if(str);
                        loadingPopupView3.show();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return this;
    }

    /* renamed from: if  reason: not valid java name */
    public b1<ResultType> m143if(Context context) {
        m142for(context, false, null);
        return this;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(ResultType resulttype) {
        super.onPostExecute(resulttype);
        try {
            if (this.f234if != null && this.f234if.get() != null) {
                this.f234if.get().dismiss();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (this.f233for != null && this.f233for.get() != null && this.f233for.get().isShow()) {
                this.f233for.get().dismiss();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        c1<ResultType> c1Var = this.f232do;
        if (c1Var != null) {
            c1Var.onPostExecute(resulttype);
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        super.onPreExecute();
        c1<ResultType> c1Var = this.f232do;
        if (c1Var != null) {
            c1Var.onPreExecute();
        }
    }
}
