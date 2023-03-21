package com.apk;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

/* compiled from: GlideRequests.java */
/* loaded from: classes8.dex */
public class t30 extends qi {
    public t30(@NonNull ii iiVar, @NonNull dq dqVar, @NonNull iq iqVar, @NonNull Context context) {
        super(iiVar, dqVar, iqVar, context);
    }

    @Override // com.apk.qi
    @NonNull
    @CheckResult
    /* renamed from: case */
    public pi mo2129case() {
        return (s30) super.mo2129case();
    }

    @Override // com.apk.qi
    @NonNull
    @CheckResult
    /* renamed from: catch */
    public pi mo2130catch() {
        return (s30) super.mo2130catch();
    }

    @Override // com.apk.qi
    @NonNull
    @CheckResult
    /* renamed from: class */
    public pi mo2131class() {
        return (s30) super.mo2131class();
    }

    @Override // com.apk.qi
    @NonNull
    @CheckResult
    /* renamed from: final */
    public pi mo2133final(@Nullable File file) {
        pi<Drawable> mo2130catch = mo2130catch();
        s30 s30Var = (s30) mo2130catch;
        s30Var.f3667strictfp = file;
        s30Var.f3666protected = true;
        return (s30) mo2130catch;
    }

    @Override // com.apk.qi
    /* renamed from: import */
    public void mo2134import(@NonNull dr drVar) {
        if (drVar instanceof r30) {
            super.mo2134import(drVar);
        } else {
            super.mo2134import(new r30().mo2037do(drVar));
        }
    }

    @Override // com.apk.qi
    @NonNull
    @CheckResult
    /* renamed from: new */
    public pi mo2136new(@NonNull Class cls) {
        return new s30(this.f3867do, this, cls, this.f3871if);
    }

    @Override // com.apk.qi
    @NonNull
    @CheckResult
    /* renamed from: super */
    public pi mo2137super(@Nullable Object obj) {
        pi<Drawable> mo2130catch = mo2130catch();
        s30 s30Var = (s30) mo2130catch;
        s30Var.f3667strictfp = obj;
        s30Var.f3666protected = true;
        return (s30) mo2130catch;
    }
}
