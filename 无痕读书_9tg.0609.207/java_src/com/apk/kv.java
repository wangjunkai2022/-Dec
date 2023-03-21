package com.apk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import com.lxj.xpopup.core.ImageViewerPopupView;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: ImageViewerPopupView.java */
/* loaded from: classes8.dex */
public class kv implements vu {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ImageViewerPopupView f2673do;

    public kv(ImageViewerPopupView imageViewerPopupView) {
        this.f2673do = imageViewerPopupView;
    }

    @Override // com.apk.vu
    /* renamed from: do */
    public void mo412do(List<String> list, boolean z) {
        Toast.makeText(this.f2673do.getContext(), "没有保存权限，保存功能无法使用！", 0).show();
    }

    @Override // com.apk.vu
    /* renamed from: if */
    public void mo413if(List<String> list, boolean z) {
        Context context = this.f2673do.getContext();
        ImageViewerPopupView imageViewerPopupView = this.f2673do;
        zv zvVar = imageViewerPopupView.f9518goto;
        List<Object> list2 = imageViewerPopupView.f9515else;
        boolean z2 = imageViewerPopupView.f9513const;
        int i = imageViewerPopupView.f9522this;
        if (z2) {
            i %= list2.size();
        }
        Object obj = list2.get(i);
        Handler handler = new Handler(Looper.getMainLooper());
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        pw.f3757if = context;
        newSingleThreadExecutor.execute(new qw(zvVar, obj, handler));
    }
}
