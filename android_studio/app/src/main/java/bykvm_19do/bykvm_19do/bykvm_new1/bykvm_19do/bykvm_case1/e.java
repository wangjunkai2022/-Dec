package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1;

import androidx.loader.content.ModernAsyncTask;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Filters.java */
/* loaded from: classes8.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final Set<String> f11060a;

    static {
        HashSet hashSet = new HashSet();
        f11060a = hashSet;
        hashSet.add("HeapTaskDaemon");
        f11060a.add("ThreadPlus");
        f11060a.add("ApiDispatcher");
        f11060a.add("ApiLocalDispatcher");
        f11060a.add("AsyncLoader");
        f11060a.add(ModernAsyncTask.LOG_TAG);
        f11060a.add("Binder");
        f11060a.add("PackageProcessor");
        f11060a.add("SettingsObserver");
        f11060a.add("WifiManager");
        f11060a.add("JavaBridge");
        f11060a.add("Compiler");
        f11060a.add("Signal Catcher");
        f11060a.add("GC");
        f11060a.add("ReferenceQueueDaemon");
        f11060a.add("FinalizerDaemon");
        f11060a.add("FinalizerWatchdogDaemon");
        f11060a.add("CookieSyncManager");
        f11060a.add("RefQueueWorker");
        f11060a.add("CleanupReference");
        f11060a.add("VideoManager");
        f11060a.add("DBHelper-AsyncOp");
        f11060a.add("InstalledAppTracker2");
        f11060a.add("AppData-AsyncOp");
        f11060a.add("IdleConnectionMonitor");
        f11060a.add("LogReaper");
        f11060a.add("ActionReaper");
        f11060a.add("Okio Watchdog");
        f11060a.add("CheckWaitingQueue");
        f11060a.add("NPTH-CrashTimer");
        f11060a.add("NPTH-JavaCallback");
        f11060a.add("NPTH-LocalParser");
        f11060a.add("ANR_FILE_MODIFY");
    }

    public static Set<String> a() {
        return f11060a;
    }
}
