package com.apk;

import android.os.AsyncTask;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: SwlReqTask.java */
/* loaded from: classes7.dex */
public class l40<ResultType> extends AsyncTask<Void, Void, ResultType> {

    /* renamed from: do  reason: not valid java name */
    public m40<ResultType> f2747do;

    /* renamed from: do  reason: not valid java name */
    public l40 m1613do(m40<ResultType> m40Var) {
        this.f2747do = m40Var;
        if (k40.f2469if == null) {
            k40.f2469if = new ThreadPoolExecutor(3, 4, 1L, TimeUnit.HOURS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
        }
        executeOnExecutor(k40.f2469if, new Void[0]);
        return this;
    }

    @Override // android.os.AsyncTask
    public Object doInBackground(Void[] voidArr) {
        m40<ResultType> m40Var = this.f2747do;
        if (m40Var != null) {
            return m40Var.doInBackground();
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(ResultType resulttype) {
        super.onPostExecute(resulttype);
        m40<ResultType> m40Var = this.f2747do;
        if (m40Var != null) {
            m40Var.onPostExecute(resulttype);
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        super.onPreExecute();
        m40<ResultType> m40Var = this.f2747do;
        if (m40Var != null) {
            m40Var.onPreExecute();
        }
    }
}
