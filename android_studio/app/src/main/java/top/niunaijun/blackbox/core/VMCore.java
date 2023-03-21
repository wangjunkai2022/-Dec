package top.niunaijun.blackbox.core;

import androidx.multidex.MultiDexExtractor;
import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.app.BActivityThread;
import top.niunaijun.blackbox.core._$;
import top.niunaijun.blackbox.core.env.BEnvironment;
import top.niunaijun.blackbox.entity.dump.DumpResult;
import top.niunaijun.blackbox.utils.DexUtils;
import top.niunaijun.blackbox.utils.FileUtils;
import top.niunaijun.blackbox.utils.compat.DexFileCompat;
import top.niunaijun.jnihook.MethodUtils;

/* loaded from: classes4.dex */
public class VMCore {
    public static final String TAG = "VMCoreJava";

    static {
        new File("");
        System.loadLibrary("blackdex");
    }

    public static native void addIORule(String str, String str2);

    private static native void cookieDumpDex(long j, String str, boolean z);

    public static void cookieDumpDex(ClassLoader classLoader, String str) {
        List cookies = DexFileCompat.getCookies(classLoader);
        File file = new File(BlackBoxCore.get().getDexDumpDir(), str);
        DumpResult dumpResult = new DumpResult();
        dumpResult.dir = file.getAbsolutePath();
        dumpResult.packageName = str;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        if (availableProcessors <= 0) {
            availableProcessors = 1;
        }
        ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(availableProcessors);
        CountDownLatch countDownLatch = new CountDownLatch(cookies.size());
        AtomicInteger atomicInteger = new AtomicInteger(0);
        BlackBoxCore.getBDumpManager().noticeMonitor(dumpResult.dumpProcess(cookies.size(), atomicInteger.getAndIncrement()));
        for (int i = 0; i < cookies.size(); i++) {
            long longValue = ((Long) cookies.get(i)).longValue();
            if (longValue == 0) {
                countDownLatch.countDown();
                BlackBoxCore.getBDumpManager().noticeMonitor(dumpResult.dumpProcess(cookies.size(), atomicInteger.getAndIncrement()));
            } else {
                FileUtils.mkdirs(file);
                if (atomicInteger.get() == 1) {
                    try {
                        Thread.sleep(500L);
                    } catch (InterruptedException e) {
                    }
                }
                newFixedThreadPool.execute(new _$.Lambda.VMCore.mLVpyIuxgt95gkD3MUDRxJRpIDI(longValue, file, dumpResult, cookies, atomicInteger, countDownLatch));
            }
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e2) {
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isFile() && file2.getAbsolutePath().endsWith(MultiDexExtractor.DEX_SUFFIX)) {
                    DexUtils.fixDex(file2);
                }
            }
        }
    }

    public static native void enableIO();

    public static Object findMethod(String str, String str2, String str3) {
        Method[] declaredMethods;
        Constructor<?>[] declaredConstructors;
        try {
            String replace = str.replace("/", ".");
            if (replace.startsWith("L")) {
                replace = replace.substring(1);
            }
            if (replace.endsWith(";")) {
                replace = replace.substring(0, replace.length() - 1);
            }
            Class<?> cls = Class.forName(replace, false, BActivityThread.getApplication().getClassLoader());
            if ("<init>".equals(str2)) {
                for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
                    if (str3.equals(MethodUtils.getDesc(constructor))) {
                        return constructor;
                    }
                }
            }
            for (Method method : cls.getDeclaredMethods()) {
                if (method.getName().equals(str2) && MethodUtils.getDesc(method).equals(str3)) {
                    return method;
                }
            }
        } catch (Throwable th) {
        }
        return null;
    }

    public static int getCallingUid(int i) {
        return i;
    }

    public static native void hideXposed();

    private static native void hookDumpDex(String str);

    public static native void init(int i);

    static /* synthetic */ void lambda$cookieDumpDex$0(long j, File file, DumpResult dumpResult, List list, AtomicInteger atomicInteger, CountDownLatch countDownLatch) {
        cookieDumpDex(j, file.getAbsolutePath(), BlackBoxCore.get().isFixCodeItem());
        BlackBoxCore.getBDumpManager().noticeMonitor(dumpResult.dumpProcess(list.size(), atomicInteger.getAndIncrement()));
        countDownLatch.countDown();
    }

    public static long[] loadEmptyDex() {
        try {
            List cookies = DexFileCompat.getCookies(new DexFile(BEnvironment.EMPTY_JAR));
            long[] jArr = new long[cookies.size()];
            for (int i = 0; i < cookies.size(); i++) {
                jArr[i] = ((Long) cookies.get(i)).longValue();
            }
            return jArr;
        } catch (Exception e) {
            e.printStackTrace();
            return new long[0];
        }
    }

    public static File redirectPath(File file) {
        return IOCore.get().redirectPath(file);
    }

    public static String redirectPath(String str) {
        return IOCore.get().redirectPath(str);
    }
}
