package com.ss.android.download.api.a;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.ss.android.download.api.config.h;
import com.ss.android.download.api.config.s;
/* loaded from: classes8.dex */
public class b implements h {

    /* renamed from: a  reason: collision with root package name */
    public s f11552a;

    @Override // com.ss.android.download.api.config.h
    public void a(@NonNull Activity activity, @NonNull String[] strArr, s sVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f11552a = sVar;
            activity.requestPermissions(strArr, 1);
        } else if (sVar != null) {
            sVar.a();
        }
    }

    @Override // com.ss.android.download.api.config.h
    public boolean a(@Nullable Context context, @NonNull String str) {
        return context != null && ContextCompat.checkSelfPermission(context, str) == 0;
    }

    @Override // com.ss.android.download.api.config.h
    public void a(@NonNull Activity activity, int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        s sVar;
        if (iArr.length <= 0 || (sVar = this.f11552a) == null) {
            return;
        }
        if (iArr[0] == -1) {
            sVar.a(strArr[0]);
        } else if (iArr[0] == 0) {
            sVar.a();
        }
    }
}
