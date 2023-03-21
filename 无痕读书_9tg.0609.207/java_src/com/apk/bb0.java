package com.apk;

import android.os.AsyncTask;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: TrReqTask.java */
/* loaded from: classes7.dex */
public class bb0<ResultType> extends AsyncTask<Void, Void, ResultType> {

    /* renamed from: do  reason: not valid java name */
    public ab0<ResultType> f280do;

    /* renamed from: do  reason: not valid java name */
    public bb0 m166do(ab0<ResultType> ab0Var) {
        this.f280do = ab0Var;
        if (ja0.f2299do == null) {
            ja0.f2299do = new ThreadPoolExecutor(3, 4, 1L, TimeUnit.HOURS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
        }
        executeOnExecutor(ja0.f2299do, new Void[0]);
        return this;
    }

    @Override // android.os.AsyncTask
    /* renamed from: if  reason: not valid java name */
    public ResultType doInBackground(Void... voidArr) {
        ab0<ResultType> ab0Var = this.f280do;
        if (ab0Var != null) {
            return ab0Var.mo39do();
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(ResultType resulttype) {
        super.onPostExecute(resulttype);
        ab0<ResultType> ab0Var = this.f280do;
        if (ab0Var != null) {
            ab0Var.mo40if(resulttype);
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        super.onPreExecute();
        ab0<ResultType> ab0Var = this.f280do;
    }
}
