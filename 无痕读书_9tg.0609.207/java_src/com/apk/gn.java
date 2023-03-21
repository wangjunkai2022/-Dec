package com.apk;

import androidx.annotation.NonNull;
import com.apk.uj;
import com.apk.ym;
/* compiled from: UnitModelLoader.java */
/* loaded from: classes8.dex */
public class gn<Model> implements ym<Model, Model> {

    /* renamed from: do  reason: not valid java name */
    public static final gn<?> f1610do = new gn<>();

    /* compiled from: UnitModelLoader.java */
    /* renamed from: com.apk.gn$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo<Model> implements zm<Model, Model> {

        /* renamed from: do  reason: not valid java name */
        public static final Cdo<?> f1611do = new Cdo<>();

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Model, Model> mo55for(cn cnVar) {
            return gn.f1610do;
        }
    }

    /* compiled from: UnitModelLoader.java */
    /* renamed from: com.apk.gn$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif<Model> implements uj<Model> {

        /* renamed from: do  reason: not valid java name */
        public final Model f1612do;

        public Cif(Model model) {
            this.f1612do = model;
        }

        @Override // com.apk.uj
        public void cancel() {
        }

        @Override // com.apk.uj
        /* renamed from: case */
        public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super Model> cdo) {
            cdo.mo213new((Model) this.f1612do);
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: do */
        public Class<Model> mo58do() {
            return (Class<Model>) this.f1612do.getClass();
        }

        @Override // com.apk.uj
        /* renamed from: if */
        public void mo60if() {
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: try */
        public dj mo61try() {
            return dj.LOCAL;
        }
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Model model) {
        return true;
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo<Model> mo53if(@NonNull Model model, int i, int i2, @NonNull mj mjVar) {
        return new ym.Cdo<>(new vr(model), new Cif(model));
    }
}
