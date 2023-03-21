package com.apk;

import android.app.Activity;
import android.view.View;

/* compiled from: GdtProviderRectanglePage.java */
/* loaded from: classes7.dex */
public class j70 extends f70 {

    /* compiled from: GdtProviderRectanglePage.java */
    /* renamed from: com.apk.j70$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements x60 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f2290do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ x60 f2292if;

        public Cdo(String str, x60 x60Var) {
            this.f2290do = str;
            this.f2292if = x60Var;
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
        }

        @Override // com.apk.x60
        /* renamed from: do */
        public void mo164do() {
            j70.this.m573synchronized(this.f2290do, this.f2292if);
        }

        @Override // com.apk.b70
        /* renamed from: else */
        public void mo158else() {
        }

        @Override // com.apk.x60
        /* renamed from: goto */
        public void mo1184goto() {
            j70.this.m558implements(this.f2290do, this.f2292if);
        }

        @Override // com.apk.b70
        /* renamed from: if */
        public void mo159if(int i, String str) {
            j70.this.m547const(i, str, this.f2290do, this.f2292if);
        }

        @Override // com.apk.x60
        /* renamed from: new */
        public void mo165new(View view) {
            j70.this.m553final(view, this.f2290do, this.f2292if);
        }

        @Override // com.apk.x60
        public void onAdClick() {
            j70.this.m570strictfp(this.f2290do, this.f2292if);
        }
    }

    @Override // com.apk.f70
    public void g(Activity activity, String str, String str2, x60 x60Var) {
        b(str);
        new x50(activity, new Cdo(str, x60Var)).m2579do(str2);
    }
}
