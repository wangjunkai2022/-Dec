package com.apk;

import android.util.Base64;
import androidx.annotation.NonNull;
import com.apk.uj;
import com.apk.ym;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: DataUrlLoader.java */
/* loaded from: classes8.dex */
public final class pm<Model, Data> implements ym<Model, Data> {

    /* renamed from: do  reason: not valid java name */
    public final Cdo<Data> f3684do;

    /* compiled from: DataUrlLoader.java */
    /* renamed from: com.apk.pm$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo<Data> {
    }

    /* compiled from: DataUrlLoader.java */
    /* renamed from: com.apk.pm$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cfor<Model> implements zm<Model, InputStream> {

        /* renamed from: do  reason: not valid java name */
        public final Cdo<InputStream> f3685do = new Cdo(this);

        /* compiled from: DataUrlLoader.java */
        /* renamed from: com.apk.pm$for$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Cdo<InputStream> {
            public Cdo(Cfor cfor) {
            }

            /* renamed from: do  reason: not valid java name */
            public Object m2054do(String str) throws IllegalArgumentException {
                if (str.startsWith("data:image")) {
                    int indexOf = str.indexOf(44);
                    if (indexOf != -1) {
                        if (str.substring(0, indexOf).endsWith(";base64")) {
                            return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                        }
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                throw new IllegalArgumentException("Not a valid image data URL.");
            }
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Model, InputStream> mo55for(@NonNull cn cnVar) {
            return new pm(this.f3685do);
        }
    }

    /* compiled from: DataUrlLoader.java */
    /* renamed from: com.apk.pm$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif<Data> implements uj<Data> {

        /* renamed from: do  reason: not valid java name */
        public final String f3686do;

        /* renamed from: for  reason: not valid java name */
        public Data f3687for;

        /* renamed from: if  reason: not valid java name */
        public final Cdo<Data> f3688if;

        public Cif(String str, Cdo<Data> cdo) {
            this.f3686do = str;
            this.f3688if = cdo;
        }

        @Override // com.apk.uj
        public void cancel() {
        }

        /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, Data] */
        @Override // com.apk.uj
        /* renamed from: case */
        public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super Data> cdo) {
            try {
                ?? r2 = (Data) ((Cfor.Cdo) this.f3688if).m2054do(this.f3686do);
                this.f3687for = r2;
                cdo.mo213new(r2);
            } catch (IllegalArgumentException e) {
                cdo.mo212for(e);
            }
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: do */
        public Class<Data> mo58do() {
            if (((Cfor.Cdo) this.f3688if) != null) {
                return InputStream.class;
            }
            throw null;
        }

        @Override // com.apk.uj
        /* renamed from: if */
        public void mo60if() {
            try {
                Cdo<Data> cdo = this.f3688if;
                Data data = this.f3687for;
                if (((Cfor.Cdo) cdo) != null) {
                    ((InputStream) data).close();
                    return;
                }
                throw null;
            } catch (IOException unused) {
            }
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: try */
        public dj mo61try() {
            return dj.LOCAL;
        }
    }

    public pm(Cdo<Data> cdo) {
        this.f3684do = cdo;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Model model) {
        return model.toString().startsWith("data:image");
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo<Data> mo53if(@NonNull Model model, int i, int i2, @NonNull mj mjVar) {
        return new ym.Cdo<>(new vr(model), new Cif(model.toString(), this.f3684do));
    }
}
