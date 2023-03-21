package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.apk.ii;
import com.apk.ji;
import com.apk.oi;
import com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule;
import com.manhua.utils.image.DesGlideModule;
/* loaded from: classes8.dex */
public final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {

    /* renamed from: do  reason: not valid java name */
    public final DesGlideModule f8412do = new DesGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        Log.isLoggable("Glide", 3);
    }

    @Override // com.bumptech.glide.module.AppGlideModule, com.apk.mq
    /* renamed from: do */
    public void mo1745do(@NonNull Context context, @NonNull ji jiVar) {
        this.f8412do.mo1745do(context, jiVar);
    }

    @Override // com.apk.oq, com.apk.qq
    /* renamed from: if */
    public void mo1980if(@NonNull Context context, @NonNull ii iiVar, @NonNull oi oiVar) {
        new OkHttpLibraryGlideModule().mo1980if(context, iiVar, oiVar);
        this.f8412do.mo1980if(context, iiVar, oiVar);
    }
}
