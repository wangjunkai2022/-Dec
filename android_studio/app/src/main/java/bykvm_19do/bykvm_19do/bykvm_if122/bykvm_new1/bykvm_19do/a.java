package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.bykvm_19do;

import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b;
import com.bytedance.msdk.api.qatools.IGMEventCallBack;

/* compiled from: GMQAEventUtil.java */
/* loaded from: classes8.dex */
public class a {
    public static void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a aVar, boolean z) {
        if (aVar != null && b.G().t()) {
            try {
                Object invoke = Class.forName("com.bytedance.qatool.QAEventToolsUtil").getMethod("getEventCallBack", new Class[0]).invoke(null, new Object[0]);
                if (invoke instanceof IGMEventCallBack) {
                    IGMEventCallBack iGMEventCallBack = (IGMEventCallBack) invoke;
                    if (z) {
                        iGMEventCallBack.EventReportByV3(aVar.d());
                    } else {
                        iGMEventCallBack.EventReportByV1(aVar.d());
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
