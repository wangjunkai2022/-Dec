package com.apk;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.hjq.toast.ToastUtils;
import java.io.File;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: XPopupUtils.java */
/* loaded from: classes8.dex */
public final class rw implements vu {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Activity f4215do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ File f4216if;

    public rw(Activity activity, File file) {
        this.f4215do = activity;
        this.f4216if = file;
    }

    @Override // com.apk.vu
    /* renamed from: do */
    public void mo412do(List<String> list, boolean z) {
        ToastUtils.show((CharSequence) "没有保存权限，保存功能无法使用！");
    }

    @Override // com.apk.vu
    /* renamed from: if */
    public void mo413if(List<String> list, boolean z) {
        Activity activity = this.f4215do;
        File file = this.f4216if;
        Handler handler = new Handler(Looper.getMainLooper());
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        pw.f3757if = activity;
        newSingleThreadExecutor.execute(new sw(file, handler));
    }
}
