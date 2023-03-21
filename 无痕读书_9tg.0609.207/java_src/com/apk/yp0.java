package com.apk;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.SparseArray;
import com.biquge.ebook.app.app.AppContext;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import skin.support.annotation.NonNull;
import skin.support.annotation.Nullable;
/* compiled from: SkinCompatManager.java */
/* loaded from: classes7.dex */
public class yp0 extends hr0 {

    /* renamed from: class  reason: not valid java name */
    public static volatile yp0 f6038class;

    /* renamed from: catch  reason: not valid java name */
    public HashMap<String, String> f6041catch;

    /* renamed from: for  reason: not valid java name */
    public final Context f6043for;

    /* renamed from: if  reason: not valid java name */
    public final Object f6045if = new Object();

    /* renamed from: new  reason: not valid java name */
    public boolean f6046new = false;

    /* renamed from: try  reason: not valid java name */
    public List<eq0> f6048try = new ArrayList();

    /* renamed from: case  reason: not valid java name */
    public List<dq0> f6040case = new ArrayList();

    /* renamed from: else  reason: not valid java name */
    public List<dq0> f6042else = new ArrayList();

    /* renamed from: goto  reason: not valid java name */
    public SparseArray<Cfor> f6044goto = new SparseArray<>();

    /* renamed from: this  reason: not valid java name */
    public boolean f6047this = true;

    /* renamed from: break  reason: not valid java name */
    public boolean f6039break = true;

    /* compiled from: SkinCompatManager.java */
    /* renamed from: com.apk.yp0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo extends AsyncTask<String, Void, String> {

        /* renamed from: do  reason: not valid java name */
        public final Cif f6049do;

        /* renamed from: if  reason: not valid java name */
        public final Cfor f6051if;

        public Cdo(@Nullable Cif cif, @NonNull Cfor cfor) {
            this.f6049do = cif;
            this.f6051if = cfor;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0050 -> B:24:0x005f). Please submit an issue!!! */
        @Override // android.os.AsyncTask
        public String doInBackground(String[] strArr) {
            String[] strArr2 = strArr;
            synchronized (yp0.this.f6045if) {
                while (yp0.this.f6046new) {
                    try {
                        yp0.this.f6045if.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                yp0.this.f6046new = true;
            }
            try {
                if (strArr2.length == 1) {
                    if (TextUtils.isEmpty(this.f6051if.mo510new(yp0.this.f6043for, strArr2[0]))) {
                        lq0.m1663new().m1664else(this.f6051if);
                        return "";
                    }
                    return strArr2[0];
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            lq0 m1663new = lq0.m1663new();
            if (m1663new != null) {
                m1663new.m1664else(yp0.f6038class.f6044goto.get(-1));
                return null;
            }
            throw null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            ir0[] ir0VarArr;
            String str2 = str;
            synchronized (yp0.this.f6045if) {
                if (str2 != null) {
                    kr0 kr0Var = kr0.f2656new;
                    kr0Var.f2658for.putString("skin-name", str2);
                    kr0Var.f2658for.putInt("skin-strategy", this.f6051if.getType());
                    kr0Var.f2658for.apply();
                    yp0 yp0Var = yp0.this;
                    synchronized (yp0Var) {
                        ir0VarArr = (ir0[]) yp0Var.f1977do.toArray(new ir0[yp0Var.f1977do.size()]);
                    }
                    int length = ir0VarArr.length;
                    while (true) {
                        length--;
                        if (length < 0) {
                            break;
                        }
                        ir0VarArr[length].mo1269do(yp0Var, null);
                    }
                    if (this.f6049do != null) {
                        if (((l8) this.f6049do) != null) {
                            AppContext.f6392case.m3293for(true);
                        } else {
                            throw null;
                        }
                    }
                } else {
                    kr0 kr0Var2 = kr0.f2656new;
                    kr0Var2.f2658for.putString("skin-name", "");
                    kr0Var2.f2658for.putInt("skin-strategy", -1);
                    kr0Var2.f2658for.apply();
                    if (this.f6049do != null && ((l8) this.f6049do) == null) {
                        throw null;
                    }
                }
                yp0.this.f6046new = false;
                yp0.this.f6045if.notifyAll();
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            Cif cif = this.f6049do;
            if (cif != null) {
                l8 l8Var = (l8) cif;
                l8Var.f2768if.f6785do.m3521for(8, l8Var.f2767do);
            }
        }
    }

    /* compiled from: SkinCompatManager.java */
    /* renamed from: com.apk.yp0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cfor {
        /* renamed from: do */
        ColorStateList mo507do(Context context, String str, int i);

        /* renamed from: for */
        ColorStateList mo508for(Context context, String str, int i);

        int getType();

        /* renamed from: if */
        Drawable mo509if(Context context, String str, int i);

        /* renamed from: new */
        String mo510new(Context context, String str);

        /* renamed from: try */
        String mo394try(Context context, String str, int i);
    }

    /* compiled from: SkinCompatManager.java */
    /* renamed from: com.apk.yp0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cif {
    }

    public yp0(Context context) {
        this.f6043for = context.getApplicationContext();
        this.f6044goto.put(-1, new er0());
        this.f6044goto.put(0, new cr0());
        this.f6044goto.put(1, new dr0());
        this.f6044goto.put(2, new fr0());
    }

    /* renamed from: for  reason: not valid java name */
    public AsyncTask m3110for(String str, Cif cif, int i) {
        Cfor cfor = this.f6044goto.get(i);
        if (cfor == null) {
            return null;
        }
        return new Cdo(cif, cfor).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
    }

    public Context getContext() {
        return this.f6043for;
    }

    /* renamed from: if  reason: not valid java name */
    public AsyncTask m3111if(String str, int i) {
        return m3110for(str, null, i);
    }
}
