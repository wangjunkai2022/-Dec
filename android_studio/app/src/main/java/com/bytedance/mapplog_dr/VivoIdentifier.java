package com.bytedance.mapplog_dr;

import android.content.Context;
import android.text.TextUtils;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import bykvm_19do.bykvm_19do.bykvm_19do.a1;
import bykvm_19do.bykvm_19do.bykvm_19do.l0;
import bykvm_19do.bykvm_19do.bykvm_19do.s0;
import bykvm_19do.bykvm_19do.bykvm_19do.t0;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes8.dex */
public final class VivoIdentifier {
    public static final Map<String, String> MSA_VERSION_MAP;
    public String oaid;
    public String resultCode;
    public final AtomicBoolean mSecondCallGetDeviceIds = new AtomicBoolean();
    public volatile boolean mProloading = false;
    public final Object mLock = new Object();
    public final IIdentifierListener listener = new IdentifierListener();

    static {
        HashMap hashMap = new HashMap(4);
        MSA_VERSION_MAP = hashMap;
        hashMap.put("1.0.26", "nllvm1623827671");
        MSA_VERSION_MAP.put("1.0.27", "nllvm1630571663641560568");
        MSA_VERSION_MAP.put("1.0.29", "nllvm1632808251147706677");
    }

    private int callFromReflect(Context context) {
        try {
            if (loadMSALibrary()) {
                MdidSdkHelper.InitCert(context, loadPemFromAssetFile(context, context.getPackageName() + ".cert.pem"));
            }
        } catch (Throwable th) {
            t0.b("Oaid#", "msa cert init exception", th);
        }
        try {
            return MdidSdkHelper.InitSdk(context, false, this.listener);
        } catch (Throwable th2) {
            t0.b("Oaid#", "msa sdk init exception", th2);
            return -1105;
        }
    }

    public static void loadLibrary(ClassLoader classLoader, String str) {
        Method accessibleMethod = MethodUtils.getAccessibleMethod(Runtime.class, "loadLibrary0", ClassLoader.class, String.class);
        if (accessibleMethod != null) {
            accessibleMethod.invoke(Runtime.getRuntime(), classLoader, str);
            return;
        }
        throw new IllegalAccessException("can not access loadLibrary0 method");
    }

    private boolean loadMSALibrary() {
        String a2 = s0.a();
        ClassLoader classLoader = MdidSdkHelper.class.getClassLoader();
        if (a2 != null && MSA_VERSION_MAP.containsKey(a2)) {
            String str = MSA_VERSION_MAP.get(a2);
            try {
                loadLibrary(classLoader, str);
                return true;
            } catch (Throwable th) {
                l0.c("加载信通院so库异常，msaVersion is " + a2 + "，lib name is " + str, th);
                return false;
            }
        }
        for (String str2 : MSA_VERSION_MAP.keySet()) {
            try {
                loadLibrary(classLoader, MSA_VERSION_MAP.get(str2));
                return true;
            } catch (Throwable th2) {
                l0.c("如果信通院SDK不是" + str2 + "，请忽略这个错误: ", th2);
            }
        }
        return false;
    }

    public static String loadPemFromAssetFile(Context context, String str) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getAssets().open(str)));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine);
                    sb.append('\n');
                } else {
                    return sb.toString();
                }
            }
        } catch (IOException unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setupOaid(String str) {
        t0.b("Oaid#", "OaidMiit#setupOaid current oaid=" + str + ", global oaid=" + this.oaid);
        if (!TextUtils.isEmpty(str) && !str.equals(this.oaid)) {
            this.oaid = str;
        }
    }

    public a1.a getOaid(Context context) {
        synchronized (this.mLock) {
            if (this.mProloading) {
                this.mLock.wait(FragmentStateAdapter.GRACE_WINDOW_TIME_MS);
            }
        }
        a1.a aVar = new a1.a();
        aVar.f10613a = this.oaid;
        return aVar;
    }

    public void preloadOaid(Context context) {
        synchronized (this.mLock) {
            this.mProloading = true;
            int callFromReflect = callFromReflect(context);
            if (callFromReflect == 1008614) {
                t0.b("Oaid#", "OaidMiit#getDeviceIds 获取接口是异步的，结果会在回调中返回，回调执行的回调可能在工作线程");
                if (this.mSecondCallGetDeviceIds.compareAndSet(false, true)) {
                    preloadOaid(context);
                } else {
                    this.resultCode = "结果会在回调中返回";
                }
            } else {
                if (callFromReflect != 0 && callFromReflect != 1008610) {
                    this.resultCode = "未知 resultCode=" + callFromReflect;
                    t0.b("Oaid#", "OaidMiit#getDeviceIds 未知 resultCode=" + callFromReflect);
                }
                t0.b("Oaid#", "OaidMiit#getDeviceIds 正确");
                this.resultCode = "正确";
            }
        }
    }

    /* loaded from: classes8.dex */
    public class IdentifierListener implements IIdentifierListener {
        public IdentifierListener() {
        }

        @Override // com.bun.miitmdid.interfaces.IIdentifierListener
        public void OnSupport(boolean z, IdSupplier idSupplier) {
            try {
                t0.b("Oaid#", "OaidMiit#OnSupport isSupport=" + z + ", supplier=" + idSupplier);
                if (z && idSupplier != null) {
                    VivoIdentifier.this.setupOaid(idSupplier.getOAID());
                    synchronized (VivoIdentifier.this.mLock) {
                        VivoIdentifier.this.mProloading = false;
                        VivoIdentifier.this.mLock.notifyAll();
                    }
                }
            } catch (Throwable th) {
                l0.a("", th);
            }
        }

        public void onSupport(IdSupplier idSupplier) {
            try {
                t0.b("Oaid#", "OaidMiit#OnSupport supplier=" + idSupplier);
                if (idSupplier != null && idSupplier.isSupported()) {
                    OnSupport(true, idSupplier);
                }
            } catch (Throwable th) {
                l0.a("", th);
            }
        }

        public void OnSupport(IdSupplier idSupplier) {
            onSupport(idSupplier);
        }
    }
}
