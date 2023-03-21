package com.apk;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import com.apk.uj;
import java.io.FileNotFoundException;
import java.io.IOException;
/* compiled from: LocalUriFetcher.java */
/* loaded from: classes8.dex */
public abstract class ck<T> implements uj<T> {

    /* renamed from: do  reason: not valid java name */
    public final Uri f643do;

    /* renamed from: for  reason: not valid java name */
    public T f644for;

    /* renamed from: if  reason: not valid java name */
    public final ContentResolver f645if;

    public ck(ContentResolver contentResolver, Uri uri) {
        this.f645if = contentResolver;
        this.f643do = uri;
    }

    @Override // com.apk.uj
    public void cancel() {
    }

    @Override // com.apk.uj
    /* renamed from: case */
    public final void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super T> cdo) {
        try {
            T mo352new = mo352new(this.f643do, this.f645if);
            this.f644for = mo352new;
            cdo.mo213new(mo352new);
        } catch (FileNotFoundException e) {
            Log.isLoggable("LocalUriFetcher", 3);
            cdo.mo212for(e);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public abstract void mo351for(T t) throws IOException;

    @Override // com.apk.uj
    /* renamed from: if */
    public void mo60if() {
        T t = this.f644for;
        if (t != null) {
            try {
                mo351for(t);
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: new  reason: not valid java name */
    public abstract T mo352new(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override // com.apk.uj
    @NonNull
    /* renamed from: try */
    public dj mo61try() {
        return dj.LOCAL;
    }
}
