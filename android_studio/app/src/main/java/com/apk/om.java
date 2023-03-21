package com.apk;

import android.util.Log;
import androidx.annotation.NonNull;
import com.apk.uj;
import com.apk.ym;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferFileLoader.java */
/* loaded from: classes8.dex */
public class om implements ym<File, ByteBuffer> {

    /* compiled from: ByteBufferFileLoader.java */
    /* renamed from: com.apk.om$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements uj<ByteBuffer> {

        /* renamed from: do  reason: not valid java name */
        public final File f3458do;

        public Cdo(File file) {
            this.f3458do = file;
        }

        @Override // com.apk.uj
        public void cancel() {
        }

        @Override // com.apk.uj
        /* renamed from: case */
        public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super ByteBuffer> cdo) {
            try {
                cdo.mo213new(wr.m2938do(this.f3458do));
            } catch (IOException e) {
                Log.isLoggable("ByteBufferFileLoader", 3);
                cdo.mo212for(e);
            }
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: do */
        public Class<ByteBuffer> mo58do() {
            return ByteBuffer.class;
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

    /* compiled from: ByteBufferFileLoader.java */
    /* renamed from: com.apk.om$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif implements zm<File, ByteBuffer> {
        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<File, ByteBuffer> mo55for(@NonNull cn cnVar) {
            return new om();
        }
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull File file) {
        return true;
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo<ByteBuffer> mo53if(@NonNull File file, int i, int i2, @NonNull mj mjVar) {
        File file2 = file;
        return new ym.Cdo<>(new vr(file2), new Cdo(file2));
    }
}
