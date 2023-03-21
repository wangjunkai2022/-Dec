package com.apk;

import android.content.Context;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

/* compiled from: GlideRequest.java */
/* loaded from: classes8.dex */
public class s30<TranscodeType> extends pi<TranscodeType> implements Cloneable {
    public s30(@NonNull ii iiVar, @NonNull qi qiVar, @NonNull Class<TranscodeType> cls, @NonNull Context context) {
        super(iiVar, qiVar, cls, context);
    }

    @Override // com.apk.pi
    @NonNull
    @CheckResult
    public pi a(@Nullable Object obj) {
        this.f3667strictfp = obj;
        this.f3666protected = true;
        return this;
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: abstract */
    public xq mo2208abstract(boolean z) {
        return (s30) super.mo2208abstract(z);
    }

    @Override // com.apk.pi
    @NonNull
    @CheckResult
    public pi b(@Nullable String str) {
        this.f3667strictfp = str;
        this.f3666protected = true;
        return this;
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: case */
    public xq mo2209case(@NonNull Class cls) {
        return (s30) super.mo2209case(cls);
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: catch */
    public xq mo2210catch(@DrawableRes int i) {
        return (s30) super.mo2210catch(i);
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: class */
    public xq mo2211class(@NonNull ej ejVar) {
        return (s30) super.mo2211class(ejVar);
    }

    @Override // com.apk.pi
    @NonNull
    @CheckResult
    /* renamed from: continue */
    public pi mo2036continue(@Nullable cr crVar) {
        super.mo2036continue(crVar);
        return this;
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: default */
    public xq mo2212default(@NonNull lj ljVar, @NonNull Object obj) {
        return (s30) super.mo2212default(ljVar, obj);
    }

    @Override // com.apk.pi, com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: do */
    public xq mo2037do(@NonNull xq xqVar) {
        return (s30) super.mo2037do(xqVar);
    }

    @Override // com.apk.pi, com.apk.xq
    @CheckResult
    /* renamed from: e */
    public s30<TranscodeType> mo2041new() {
        return (s30) super.mo2041new();
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: else */
    public xq mo2213else(@NonNull uk ukVar) {
        return (s30) super.mo2213else(ukVar);
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: extends */
    public xq mo2214extends(@NonNull kj kjVar) {
        return (s30) super.mo2214extends(kjVar);
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: finally */
    public xq mo2216finally(boolean z) {
        return (s30) super.mo2216finally(z);
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: goto */
    public xq mo2217goto() {
        return (s30) super.mo2217goto();
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: import */
    public xq mo2219import() {
        return (s30) super.mo2219import();
    }

    @Override // com.apk.pi
    @NonNull
    @CheckResult
    /* renamed from: instanceof */
    public pi mo2039instanceof(@Nullable cr crVar) {
        this.f3668volatile = null;
        super.mo2036continue(crVar);
        return this;
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: public */
    public xq mo2220public(int i) {
        return (s30) mo2221return(i, i);
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: return */
    public xq mo2221return(int i, int i2) {
        return (s30) super.mo2221return(i, i2);
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: static */
    public xq mo2222static(@DrawableRes int i) {
        return (s30) super.mo2222static(i);
    }

    @Override // com.apk.pi
    @NonNull
    @CheckResult
    /* renamed from: strictfp */
    public pi mo2043strictfp(@NonNull xq xqVar) {
        return (s30) super.mo2037do(xqVar);
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: super */
    public xq mo2224super() {
        return (s30) super.mo2224super();
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: switch */
    public xq mo2225switch(@NonNull ni niVar) {
        return (s30) super.mo2225switch(niVar);
    }

    @Override // com.apk.pi
    @NonNull
    @CheckResult
    /* renamed from: synchronized */
    public pi mo2044synchronized(@Nullable File file) {
        this.f3667strictfp = file;
        this.f3666protected = true;
        return this;
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: this */
    public xq mo2226this(@NonNull co coVar) {
        return (s30) super.mo2226this(coVar);
    }

    @Override // com.apk.xq
    @NonNull
    @CheckResult
    /* renamed from: while */
    public xq mo2227while() {
        return (s30) super.mo2227while();
    }
}
