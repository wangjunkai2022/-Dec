package com.umeng.commonsdk.debug;

import android.content.Context;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.tunnel.UMChannelAgent;
/* loaded from: classes7.dex */
public class SelfChecker {
    public static String[] FILELIST = {"com.umeng.analytics.a", "com.umeng.analytics.AnalyticsConfig", "com.umeng.analytics.b$1", "com.umeng.analytics.b$a", "com.umeng.analytics.b", "com.umeng.analytics.c", "com.umeng.analytics.CoreProtocol$1", "com.umeng.analytics.CoreProtocol$a", "com.umeng.analytics.CoreProtocol", "com.umeng.analytics.filter.a", "com.umeng.analytics.filter.b", "com.umeng.analytics.filter.c", "com.umeng.analytics.filter.d", "com.umeng.analytics.filter.EventList", "com.umeng.analytics.Gender$1", "com.umeng.analytics.Gender$2", "com.umeng.analytics.Gender$3", "com.umeng.analytics.Gender$4", "com.umeng.analytics.Gender", "com.umeng.analytics.MobclickAgent$EScenarioType", "com.umeng.analytics.MobclickAgent$PageMode", "com.umeng.analytics.MobclickAgent", "com.umeng.analytics.pro.a$a$a", "com.umeng.analytics.pro.a$a", "com.umeng.analytics.pro.a", "com.umeng.analytics.pro.aa", "com.umeng.analytics.pro.ab$1", "com.umeng.analytics.pro.ab", "com.umeng.analytics.pro.ac", "com.umeng.analytics.pro.ad$1", "com.umeng.analytics.pro.ad$a", "com.umeng.analytics.pro.ad$b", "com.umeng.analytics.pro.ad", "com.umeng.analytics.pro.ae", "com.umeng.analytics.pro.af", "com.umeng.analytics.pro.ag$1", "com.umeng.analytics.pro.ag", "com.umeng.analytics.pro.ah", "com.umeng.analytics.pro.ai", "com.umeng.analytics.pro.aj", "com.umeng.analytics.pro.ak", "com.umeng.analytics.pro.al$1", "com.umeng.analytics.pro.al$a", "com.umeng.analytics.pro.al$b", "com.umeng.analytics.pro.al$c", "com.umeng.analytics.pro.al$d", "com.umeng.analytics.pro.al$e", "com.umeng.analytics.pro.al", "com.umeng.analytics.pro.am", "com.umeng.analytics.pro.an", "com.umeng.analytics.pro.ao", "com.umeng.analytics.pro.ap", "com.umeng.analytics.pro.aq", "com.umeng.analytics.pro.ar", "com.umeng.analytics.pro.as", "com.umeng.analytics.pro.at", "com.umeng.analytics.pro.au$1", "com.umeng.analytics.pro.au$a", "com.umeng.analytics.pro.au", "com.umeng.analytics.pro.av", "com.umeng.analytics.pro.aw", "com.umeng.analytics.pro.ax", "com.umeng.analytics.pro.ay", "com.umeng.analytics.pro.az", "com.umeng.analytics.pro.b$a$a", "com.umeng.analytics.pro.b$a", "com.umeng.analytics.pro.b", "com.umeng.analytics.pro.ba", "com.umeng.analytics.pro.bb", "com.umeng.analytics.pro.bc", "com.umeng.analytics.pro.bd$1", "com.umeng.analytics.pro.bd$a", "com.umeng.analytics.pro.bd$b", "com.umeng.analytics.pro.bd$c", "com.umeng.analytics.pro.bd$d", "com.umeng.analytics.pro.bd", "com.umeng.analytics.pro.be", "com.umeng.analytics.pro.bf", "com.umeng.analytics.pro.bg", "com.umeng.analytics.pro.bh", "com.umeng.analytics.pro.bi", "com.umeng.analytics.pro.bj", "com.umeng.analytics.pro.bk", "com.umeng.analytics.pro.bl$a", "com.umeng.analytics.pro.bl", "com.umeng.analytics.pro.bm$a", "com.umeng.analytics.pro.bm$b", "com.umeng.analytics.pro.bm", "com.umeng.analytics.pro.bn", "com.umeng.analytics.pro.bo", "com.umeng.analytics.pro.bp", "com.umeng.analytics.pro.bq", "com.umeng.analytics.pro.br", "com.umeng.analytics.pro.bs", "com.umeng.analytics.pro.bt", "com.umeng.analytics.pro.bu", "com.umeng.analytics.pro.bv", "com.umeng.analytics.pro.bw", "com.umeng.analytics.pro.bx", "com.umeng.analytics.pro.by$a", "com.umeng.analytics.pro.by", "com.umeng.analytics.pro.bz", "com.umeng.analytics.pro.c", "com.umeng.analytics.pro.ca", "com.umeng.analytics.pro.cb", "com.umeng.analytics.pro.cc", "com.umeng.analytics.pro.cd", "com.umeng.analytics.pro.ce", "com.umeng.analytics.pro.cf", "com.umeng.analytics.pro.cg", "com.umeng.analytics.pro.ch", "com.umeng.analytics.pro.ci", "com.umeng.analytics.pro.d", "com.umeng.analytics.pro.e$a$a", "com.umeng.analytics.pro.e$a$b", "com.umeng.analytics.pro.e$a", "com.umeng.analytics.pro.e$b$a", "com.umeng.analytics.pro.e$b$b", "com.umeng.analytics.pro.e$b", "com.umeng.analytics.pro.e$c$a", "com.umeng.analytics.pro.e$c$b", "com.umeng.analytics.pro.e$c", "com.umeng.analytics.pro.e$d$a", "com.umeng.analytics.pro.e$d$b", "com.umeng.analytics.pro.e$d", "com.umeng.analytics.pro.e", "com.umeng.analytics.pro.f$1", "com.umeng.analytics.pro.f$a", "com.umeng.analytics.pro.f", "com.umeng.analytics.pro.g$1", "com.umeng.analytics.pro.g$a", "com.umeng.analytics.pro.g", "com.umeng.analytics.pro.h", "com.umeng.analytics.pro.i$1", "com.umeng.analytics.pro.i$a", "com.umeng.analytics.pro.i$b", "com.umeng.analytics.pro.i", "com.umeng.analytics.pro.j", "com.umeng.analytics.pro.k", "com.umeng.analytics.pro.l$1", "com.umeng.analytics.pro.l$a", "com.umeng.analytics.pro.l", "com.umeng.analytics.pro.m$a", "com.umeng.analytics.pro.m", "com.umeng.analytics.pro.n", "com.umeng.analytics.pro.o$1", "com.umeng.analytics.pro.o$a", "com.umeng.analytics.pro.o$b", "com.umeng.analytics.pro.o$c", "com.umeng.analytics.pro.o$d", "com.umeng.analytics.pro.o", "com.umeng.analytics.pro.p", "com.umeng.analytics.pro.q", "com.umeng.analytics.pro.r$1", "com.umeng.analytics.pro.r$a", "com.umeng.analytics.pro.r", "com.umeng.analytics.pro.s$1", "com.umeng.analytics.pro.s$a", "com.umeng.analytics.pro.s", "com.umeng.analytics.pro.t", "com.umeng.analytics.pro.u$1", "com.umeng.analytics.pro.u$a", "com.umeng.analytics.pro.u", "com.umeng.analytics.pro.v", "com.umeng.analytics.pro.w", "com.umeng.analytics.pro.x", "com.umeng.analytics.pro.y$a", "com.umeng.analytics.pro.y", "com.umeng.analytics.pro.z", "com.umeng.analytics.process.a$a", "com.umeng.analytics.process.a", "com.umeng.analytics.process.b", "com.umeng.analytics.process.c$a", "com.umeng.analytics.process.c", "com.umeng.analytics.process.DBFileTraversalUtil$1", "com.umeng.analytics.process.DBFileTraversalUtil$a", "com.umeng.analytics.process.DBFileTraversalUtil", "com.umeng.analytics.process.UMProcessDBDatasSender$1", "com.umeng.analytics.process.UMProcessDBDatasSender$ConstructMessageCallback", "com.umeng.analytics.process.UMProcessDBDatasSender$ReplaceCallback", "com.umeng.analytics.process.UMProcessDBDatasSender", "com.umeng.analytics.process.UMProcessDBHelper$1", "com.umeng.analytics.process.UMProcessDBHelper$a", "com.umeng.analytics.process.UMProcessDBHelper$InsertEventCallback", "com.umeng.analytics.process.UMProcessDBHelper$ProcessToMainCallback", "com.umeng.analytics.process.UMProcessDBHelper", "com.umeng.analytics.vshelper.a", "com.umeng.analytics.vshelper.b", "com.umeng.analytics.vshelper.PageNameMonitor$1", "com.umeng.analytics.vshelper.PageNameMonitor$a", "com.umeng.analytics.vshelper.PageNameMonitor", "com.umeng.common.a", "com.umeng.common.AnalyticsSdkVersion", "com.umeng.common.b$a", "com.umeng.common.b", "com.umeng.common.ISysListener", "com.umeng.commonsdk.a", "com.umeng.commonsdk.BuildConfig", "com.umeng.commonsdk.config.a", "com.umeng.commonsdk.config.b$1", "com.umeng.commonsdk.config.b$a", "com.umeng.commonsdk.config.b", "com.umeng.commonsdk.config.c", "com.umeng.commonsdk.config.d$a", "com.umeng.commonsdk.config.d$b", "com.umeng.commonsdk.config.d$c", "com.umeng.commonsdk.config.d$d", "com.umeng.commonsdk.config.d", "com.umeng.commonsdk.config.e", "com.umeng.commonsdk.config.f", "com.umeng.commonsdk.config.FieldManager$1", "com.umeng.commonsdk.config.FieldManager$a", "com.umeng.commonsdk.config.FieldManager", "com.umeng.commonsdk.config.g", "com.umeng.commonsdk.debug.D", "com.umeng.commonsdk.debug.E", "com.umeng.commonsdk.debug.I", "com.umeng.commonsdk.debug.SelfChecker", "com.umeng.commonsdk.debug.UInterface", "com.umeng.commonsdk.debug.UMLog", "com.umeng.commonsdk.debug.UMLogCommon", "com.umeng.commonsdk.debug.UMLogUtils", "com.umeng.commonsdk.debug.UMRTLog", "com.umeng.commonsdk.debug.W", "com.umeng.commonsdk.framework.a$1", "com.umeng.commonsdk.framework.a$2", "com.umeng.commonsdk.framework.a$a", "com.umeng.commonsdk.framework.a", "com.umeng.commonsdk.framework.UMEnvelopeBuild", "com.umeng.commonsdk.framework.UMFrUtils$1", "com.umeng.commonsdk.framework.UMFrUtils$2", "com.umeng.commonsdk.framework.UMFrUtils", "com.umeng.commonsdk.framework.UMLogDataProtocol$UMBusinessType", "com.umeng.commonsdk.framework.UMLogDataProtocol", "com.umeng.commonsdk.framework.UMModuleRegister", "com.umeng.commonsdk.framework.UMSenderStateNotify", "com.umeng.commonsdk.framework.UMWorkDispatch$1", "com.umeng.commonsdk.framework.UMWorkDispatch", "com.umeng.commonsdk.internal.a", "com.umeng.commonsdk.internal.b", "com.umeng.commonsdk.internal.c$1", "com.umeng.commonsdk.internal.c$2", "com.umeng.commonsdk.internal.c$3", "com.umeng.commonsdk.internal.c$4", "com.umeng.commonsdk.internal.c$5", "com.umeng.commonsdk.internal.c", "com.umeng.commonsdk.internal.crash.a", "com.umeng.commonsdk.internal.crash.UMCrashManager", "com.umeng.commonsdk.internal.d", "com.umeng.commonsdk.internal.UMInternalManagerAgent", "com.umeng.commonsdk.internal.UMOplus", "com.umeng.commonsdk.internal.utils.a$a", "com.umeng.commonsdk.internal.utils.a", "com.umeng.commonsdk.internal.utils.ApplicationLayerUtilAgent", "com.umeng.commonsdk.internal.utils.b$1", "com.umeng.commonsdk.internal.utils.b$a", "com.umeng.commonsdk.internal.utils.b", "com.umeng.commonsdk.internal.utils.c$a", "com.umeng.commonsdk.internal.utils.c", "com.umeng.commonsdk.internal.utils.d$a", "com.umeng.commonsdk.internal.utils.d", "com.umeng.commonsdk.internal.utils.e", "com.umeng.commonsdk.internal.utils.f", "com.umeng.commonsdk.internal.utils.g", "com.umeng.commonsdk.internal.utils.h", "com.umeng.commonsdk.internal.utils.i", "com.umeng.commonsdk.internal.utils.InfoPreferenceAgent", "com.umeng.commonsdk.internal.utils.j$1", "com.umeng.commonsdk.internal.utils.j", "com.umeng.commonsdk.internal.utils.UMInternalUtilsAgent", "com.umeng.commonsdk.listener.OnGetOaidListener", "com.umeng.commonsdk.service.UMGlobalContext$1", "com.umeng.commonsdk.service.UMGlobalContext$a", "com.umeng.commonsdk.service.UMGlobalContext", "com.umeng.commonsdk.stateless.a", "com.umeng.commonsdk.stateless.b$1", "com.umeng.commonsdk.stateless.b$2", "com.umeng.commonsdk.stateless.b$a", "com.umeng.commonsdk.stateless.b", "com.umeng.commonsdk.stateless.c", "com.umeng.commonsdk.stateless.d$1", "com.umeng.commonsdk.stateless.d$2", "com.umeng.commonsdk.stateless.d$3", "com.umeng.commonsdk.stateless.d$4", "com.umeng.commonsdk.stateless.d$5", "com.umeng.commonsdk.stateless.d$6", "com.umeng.commonsdk.stateless.d", "com.umeng.commonsdk.stateless.UMSLEnvelopeBuild$1", "com.umeng.commonsdk.stateless.UMSLEnvelopeBuild", "com.umeng.commonsdk.statistics.a", "com.umeng.commonsdk.statistics.AnalyticsConstants", "com.umeng.commonsdk.statistics.b", "com.umeng.commonsdk.statistics.c$1", "com.umeng.commonsdk.statistics.c", "com.umeng.commonsdk.statistics.common.a$1", "com.umeng.commonsdk.statistics.common.a$a", "com.umeng.commonsdk.statistics.common.a$b", "com.umeng.commonsdk.statistics.common.a$c", "com.umeng.commonsdk.statistics.common.a", "com.umeng.commonsdk.statistics.common.b", "com.umeng.commonsdk.statistics.common.c", "com.umeng.commonsdk.statistics.common.d$a$1", "com.umeng.commonsdk.statistics.common.d$a", "com.umeng.commonsdk.statistics.common.d$b", "com.umeng.commonsdk.statistics.common.d", "com.umeng.commonsdk.statistics.common.DataHelper", DeviceConfig.LOG_TAG, "com.umeng.commonsdk.statistics.common.DeviceTypeEnum", "com.umeng.commonsdk.statistics.common.HelperUtils", "com.umeng.commonsdk.statistics.common.MLog", "com.umeng.commonsdk.statistics.common.ReportPolicy$DebugPolicy", "com.umeng.commonsdk.statistics.common.ReportPolicy$DefconPolicy", "com.umeng.commonsdk.statistics.common.ReportPolicy$LatentPolicy", "com.umeng.commonsdk.statistics.common.ReportPolicy$ReportAtLaunch", "com.umeng.commonsdk.statistics.common.ReportPolicy$ReportByInterval", "com.umeng.commonsdk.statistics.common.ReportPolicy$ReportDaily", "com.umeng.commonsdk.statistics.common.ReportPolicy$ReportQuasiRealtime", "com.umeng.commonsdk.statistics.common.ReportPolicy$ReportRealtime", "com.umeng.commonsdk.statistics.common.ReportPolicy$ReportStrategy", "com.umeng.commonsdk.statistics.common.ReportPolicy$ReportWifiOnly", "com.umeng.commonsdk.statistics.common.ReportPolicy$SmartPolicy", "com.umeng.commonsdk.statistics.common.ReportPolicy", "com.umeng.commonsdk.statistics.common.ULog", "com.umeng.commonsdk.statistics.idtracking.a", "com.umeng.commonsdk.statistics.idtracking.b", "com.umeng.commonsdk.statistics.idtracking.c", "com.umeng.commonsdk.statistics.idtracking.d", "com.umeng.commonsdk.statistics.idtracking.e$a", "com.umeng.commonsdk.statistics.idtracking.e", "com.umeng.commonsdk.statistics.idtracking.Envelope", "com.umeng.commonsdk.statistics.idtracking.f", "com.umeng.commonsdk.statistics.idtracking.g", "com.umeng.commonsdk.statistics.idtracking.h", "com.umeng.commonsdk.statistics.idtracking.i", "com.umeng.commonsdk.statistics.idtracking.ImprintHandler$a", "com.umeng.commonsdk.statistics.idtracking.ImprintHandler", "com.umeng.commonsdk.statistics.idtracking.j", "com.umeng.commonsdk.statistics.internal.a$1", "com.umeng.commonsdk.statistics.internal.a$a", "com.umeng.commonsdk.statistics.internal.a", "com.umeng.commonsdk.statistics.internal.b", "com.umeng.commonsdk.statistics.internal.c$1", "com.umeng.commonsdk.statistics.internal.c$2", "com.umeng.commonsdk.statistics.internal.c$3", "com.umeng.commonsdk.statistics.internal.c", "com.umeng.commonsdk.statistics.internal.d", "com.umeng.commonsdk.statistics.internal.PreferenceWrapper", "com.umeng.commonsdk.statistics.internal.StatTracer$1", "com.umeng.commonsdk.statistics.internal.StatTracer$a", "com.umeng.commonsdk.statistics.internal.StatTracer", "com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback", "com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback", "com.umeng.commonsdk.statistics.noise.ABTest", "com.umeng.commonsdk.statistics.noise.Defcon", "com.umeng.commonsdk.statistics.noise.ImLatent", "com.umeng.commonsdk.statistics.proto.a$1", "com.umeng.commonsdk.statistics.proto.a$a", "com.umeng.commonsdk.statistics.proto.a$b", "com.umeng.commonsdk.statistics.proto.a$c", "com.umeng.commonsdk.statistics.proto.a$d", "com.umeng.commonsdk.statistics.proto.a$e", "com.umeng.commonsdk.statistics.proto.a", "com.umeng.commonsdk.statistics.proto.b$1", "com.umeng.commonsdk.statistics.proto.b$a", "com.umeng.commonsdk.statistics.proto.b$b", "com.umeng.commonsdk.statistics.proto.b$c", "com.umeng.commonsdk.statistics.proto.b$d", "com.umeng.commonsdk.statistics.proto.b$e", "com.umeng.commonsdk.statistics.proto.b", "com.umeng.commonsdk.statistics.proto.c$1", "com.umeng.commonsdk.statistics.proto.c$a", "com.umeng.commonsdk.statistics.proto.c$b", "com.umeng.commonsdk.statistics.proto.c$c", "com.umeng.commonsdk.statistics.proto.c$d", "com.umeng.commonsdk.statistics.proto.c$e", "com.umeng.commonsdk.statistics.proto.c", "com.umeng.commonsdk.statistics.proto.d$1", "com.umeng.commonsdk.statistics.proto.d$a", "com.umeng.commonsdk.statistics.proto.d$b", "com.umeng.commonsdk.statistics.proto.d$c", "com.umeng.commonsdk.statistics.proto.d$d", "com.umeng.commonsdk.statistics.proto.d$e", "com.umeng.commonsdk.statistics.proto.d", "com.umeng.commonsdk.statistics.proto.e$1", "com.umeng.commonsdk.statistics.proto.e$a", "com.umeng.commonsdk.statistics.proto.e$b", "com.umeng.commonsdk.statistics.proto.e$c", "com.umeng.commonsdk.statistics.proto.e$d", "com.umeng.commonsdk.statistics.proto.e$e", "com.umeng.commonsdk.statistics.proto.e", "com.umeng.commonsdk.statistics.proto.Gender", "com.umeng.commonsdk.statistics.proto.Response$1", "com.umeng.commonsdk.statistics.proto.Response$a", "com.umeng.commonsdk.statistics.proto.Response$b", "com.umeng.commonsdk.statistics.proto.Response$c", "com.umeng.commonsdk.statistics.proto.Response$d", "com.umeng.commonsdk.statistics.proto.Response$e", "com.umeng.commonsdk.statistics.proto.Response", "com.umeng.commonsdk.statistics.SdkVersion", "com.umeng.commonsdk.statistics.TagHelper", "com.umeng.commonsdk.statistics.UMErrorCode", "com.umeng.commonsdk.statistics.UMServerURL", "com.umeng.commonsdk.UMConfigure$1", "com.umeng.commonsdk.UMConfigure$2", "com.umeng.commonsdk.UMConfigure$3", "com.umeng.commonsdk.UMConfigure$4", "com.umeng.commonsdk.UMConfigure$BS_TYPE", "com.umeng.commonsdk.UMConfigure", "com.umeng.commonsdk.UMConfigureImpl$1", "com.umeng.commonsdk.UMConfigureImpl", "com.umeng.commonsdk.UMConfigureInternation$1", "com.umeng.commonsdk.UMConfigureInternation", "com.umeng.commonsdk.UMInnerImpl$1", "com.umeng.commonsdk.UMInnerImpl$2", "com.umeng.commonsdk.UMInnerImpl", "com.umeng.commonsdk.utils.a$1", "com.umeng.commonsdk.utils.a", "com.umeng.commonsdk.utils.b", "com.umeng.commonsdk.utils.FileLockCallback", "com.umeng.commonsdk.utils.FileLockUtil", "com.umeng.commonsdk.utils.JSONArraySortUtil", "com.umeng.commonsdk.utils.onMessageSendListener", "com.umeng.commonsdk.utils.UMUtils", "com.umeng.commonsdk.vchannel.a", "com.umeng.commonsdk.vchannel.b", UMChannelAgent.UMENG_VCHANNEL, "com.umeng.tunnel.UMChannelAgent", "com.umeng.vt.diff.Channel$1", "com.umeng.vt.diff.Channel", "com.umeng.vt.diff.Event", "com.umeng.vt.diff.util.ClassLoadUtil", "com.umeng.vt.diff.V"};

    public static boolean doCheck(Context context) {
        boolean z = true;
        if (UMConfigure.isDebugLog()) {
            StatTracer.getInstance(context);
            int i = 0;
            while (true) {
                String[] strArr = FILELIST;
                if (i >= strArr.length) {
                    break;
                }
                try {
                    if (!TextUtils.isEmpty(strArr[i]) && !FILELIST[i].contains("$")) {
                        Class.forName(FILELIST[i]);
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "#" + FILELIST[i]);
                    }
                    i++;
                } catch (Throwable unused) {
                    StringBuilder m1016super = Cgoto.m1016super("*");
                    m1016super.append(FILELIST[i]);
                    UMLog.mutlInfo(2, m1016super.toString());
                    StringBuilder m1016super2 = Cgoto.m1016super("*");
                    m1016super2.append(FILELIST[i]);
                    UMRTLog.i(UMRTLog.RTLOG_TAG, m1016super2.toString());
                    z = false;
                }
            }
            if (z) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, UMLogCommon.SC_10012);
                UMLog.mutlInfo(UMLogCommon.SC_10012, 2, "");
            } else {
                UMRTLog.i(UMRTLog.RTLOG_TAG, UMLogCommon.SC_10013);
                UMLog.mutlInfo(UMLogCommon.SC_10013, 2, "");
            }
            return z;
        }
        return true;
    }
}
