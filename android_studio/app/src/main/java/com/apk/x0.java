package com.apk;

import android.app.Activity;
import com.hjq.toast.ToastUtils;
import java.io.File;
import java.util.List;

/* compiled from: WebInfoHelper.java */
/* loaded from: classes8.dex */
public final class x0 implements vu {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Activity f5417do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ File f5418if;

    public x0(Activity activity, File file) {
        this.f5417do = activity;
        this.f5418if = file;
    }

    @Override // com.apk.vu
    /* renamed from: do */
    public void mo412do(List<String> list, boolean z) {
        ToastUtils.show((CharSequence) "没有保存权限，保存功能无法使用！");
    }

    @Override // com.apk.vu
    /* renamed from: if */
    public void mo413if(List<String> list, boolean z) {
        Activity activity = this.f5417do;
        File file = this.f5418if;
        yu yuVar = new yu(activity);
        yuVar.m3120if(wu.f5403do);
        yuVar.m3119for(new rw(activity, file));
    }
}
