package com.apk;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.apk.uj;
import java.io.IOException;

/* compiled from: AssetPathFetcher.java */
/* loaded from: classes8.dex */
public abstract class sj<T> implements uj<T> {

    /* renamed from: do  reason: not valid java name */
    public final String f4394do;

    /* renamed from: for  reason: not valid java name */
    public T f4395for;

    /* renamed from: if  reason: not valid java name */
    public final AssetManager f4396if;

    public sj(AssetManager assetManager, String str) {
        this.f4396if = assetManager;
        this.f4394do = str;
    }

    @Override // com.apk.uj
    public void cancel() {
    }

    @Override // com.apk.uj
    /* renamed from: case */
    public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super T> cdo) {
        try {
            T mo635new = mo635new(this.f4396if, this.f4394do);
            this.f4395for = mo635new;
            cdo.mo213new(mo635new);
        } catch (IOException e) {
            Log.isLoggable("AssetPathFetcher", 3);
            cdo.mo212for(e);
        }
    }

    /* renamed from: for */
    public abstract void mo634for(T t) throws IOException;

    @Override // com.apk.uj
    /* renamed from: if */
    public void mo60if() {
        T t = this.f4395for;
        if (t == null) {
            return;
        }
        try {
            mo634for(t);
        } catch (IOException unused) {
        }
    }

    /* renamed from: new */
    public abstract T mo635new(AssetManager assetManager, String str) throws IOException;

    @Override // com.apk.uj
    @NonNull
    /* renamed from: try */
    public dj mo61try() {
        return dj.LOCAL;
    }
}
