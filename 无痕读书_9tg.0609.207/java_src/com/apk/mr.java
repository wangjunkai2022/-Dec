package com.apk;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: PreloadTarget.java */
/* loaded from: classes8.dex */
public final class mr<Z> extends ir<Z> {

    /* renamed from: try  reason: not valid java name */
    public static final Handler f3093try = new Handler(Looper.getMainLooper(), new Cdo());

    /* renamed from: new  reason: not valid java name */
    public final qi f3094new;

    /* compiled from: PreloadTarget.java */
    /* renamed from: com.apk.mr$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                mr mrVar = (mr) message.obj;
                mrVar.f3094new.m2132const(mrVar);
                return true;
            }
            return false;
        }
    }

    public mr(qi qiVar, int i, int i2) {
        super(i, i2);
        this.f3094new = qiVar;
    }

    @Override // com.apk.pr
    /* renamed from: if */
    public void mo275if(@NonNull Z z, @Nullable sr<? super Z> srVar) {
        f3093try.obtainMessage(1, this).sendToTarget();
    }

    @Override // com.apk.pr
    /* renamed from: this */
    public void mo277this(@Nullable Drawable drawable) {
    }
}
