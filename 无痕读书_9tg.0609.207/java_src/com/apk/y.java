package com.apk;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
/* compiled from: SwlAdLoader.java */
/* loaded from: classes8.dex */
public class y implements r40 {

    /* compiled from: SwlAdLoader.java */
    /* renamed from: com.apk.y$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements j1 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ o40 f5822do;

        public Cdo(y yVar, o40 o40Var) {
            this.f5822do = o40Var;
        }

        @Override // com.apk.j1
        /* renamed from: do */
        public void mo445do() {
            o40 o40Var = this.f5822do;
            if (o40Var != null) {
                o40Var.success();
            }
        }

        @Override // com.apk.j1
        /* renamed from: if */
        public void mo446if() {
            o40 o40Var = this.f5822do;
            if (o40Var != null) {
                o40Var.error();
            }
        }
    }

    /* compiled from: SwlAdLoader.java */
    /* renamed from: com.apk.y$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends c1<Boolean> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f5823do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ o40 f5824if;

        public Cif(y yVar, String str, o40 o40Var) {
            this.f5823do = str;
            this.f5824if = o40Var;
        }

        @Override // com.apk.c1
        public Boolean doInBackground() {
            return Boolean.valueOf(u.m2645else(this.f5823do));
        }

        @Override // com.apk.c1
        public void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (bool2.booleanValue()) {
                o40 o40Var = this.f5824if;
                if (o40Var != null) {
                    o40Var.success();
                    return;
                }
                return;
            }
            o40 o40Var2 = this.f5824if;
            if (o40Var2 != null) {
                o40Var2.error();
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m3052do(Context context, String str, ImageView imageView, o40 o40Var) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (imageView != null) {
            u.m2656super(str, imageView, 0, new Cdo(this, o40Var));
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            new b1().m141do(new Cif(this, str, o40Var));
        } else if (u.m2645else(str)) {
            if (o40Var != null) {
                o40Var.success();
            }
        } else if (o40Var != null) {
            o40Var.error();
        }
    }
}
