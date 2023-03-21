package com.apk;

import android.app.Activity;
import android.view.View;
/* compiled from: GdtProviderRectangleNative.java */
/* loaded from: classes7.dex */
public class i70 extends f70 {

    /* compiled from: GdtProviderRectangleNative.java */
    /* renamed from: com.apk.i70$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements x60 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f2060do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ x60 f2062if;

        public Cdo(String str, x60 x60Var) {
            this.f2060do = str;
            this.f2062if = x60Var;
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
        }

        @Override // com.apk.x60
        /* renamed from: do */
        public void mo164do() {
            i70.this.m573synchronized(this.f2060do, this.f2062if);
        }

        @Override // com.apk.b70
        /* renamed from: else */
        public void mo158else() {
        }

        @Override // com.apk.x60
        /* renamed from: goto  reason: not valid java name */
        public void mo1184goto() {
            i70.this.m558implements(this.f2060do, this.f2062if);
        }

        @Override // com.apk.b70
        /* renamed from: if */
        public void mo159if(int i, String str) {
            i70.this.m547const(i, str, this.f2060do, this.f2062if);
        }

        @Override // com.apk.x60
        /* renamed from: new */
        public void mo165new(View view) {
            i70.this.m553final(view, this.f2060do, this.f2062if);
        }

        @Override // com.apk.x60
        public void onAdClick() {
            i70.this.m570strictfp(this.f2060do, this.f2062if);
        }
    }

    @Override // com.apk.f70
    public void g(Activity activity, String str, String str2, x60 x60Var) {
        b(str);
        new y50(activity, new Cdo(str, x60Var)).m2579do(str2);
    }
}
