package com.bytedance.msdk.adapter.util;

import android.os.AsyncTask;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes8.dex */
public class AsyncTasks {

    /* renamed from: do  reason: not valid java name */
    public static Executor f8744do = ThreadHelper.getMSDKExecutor();

    public static <P> void safeExecuteOnExecutor(final AsyncTask<P, ?, ?> asyncTask, final P... pArr) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            asyncTask.executeOnExecutor(f8744do, pArr);
            return;
        }
        Logger.e(AsyncTasks.class.getSimpleName(), "Posting AsyncTask to main thread for execution.");
        ThreadHelper.postOnUiThread(new Runnable() { // from class: com.bytedance.msdk.adapter.util.AsyncTasks.1
            @Override // java.lang.Runnable
            public void run() {
                asyncTask.executeOnExecutor(AsyncTasks.f8744do, pArr);
            }
        });
    }

    public static void setExecutor(Executor executor) {
        f8744do = executor;
    }
}
