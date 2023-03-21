package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_19do;

import android.app.ActivityManager;
import com.apk.Cgoto;

/* compiled from: ANRInfoHelper.java */
/* loaded from: classes8.dex */
public class b {
    public static String a(ActivityManager.ProcessErrorStateInfo processErrorStateInfo) {
        StringBuilder m1016super = Cgoto.m1016super("|------------- processErrorStateInfo--------------|\n");
        StringBuilder m1016super2 = Cgoto.m1016super("condition: ");
        m1016super2.append(processErrorStateInfo.condition);
        m1016super2.append("\n");
        m1016super.append(m1016super2.toString());
        m1016super.append("processName: " + processErrorStateInfo.processName + "\n");
        m1016super.append("pid: " + processErrorStateInfo.pid + "\n");
        m1016super.append("uid: " + processErrorStateInfo.uid + "\n");
        m1016super.append("tag: " + processErrorStateInfo.tag + "\n");
        m1016super.append("shortMsg : " + processErrorStateInfo.shortMsg + "\n");
        m1016super.append("longMsg : " + processErrorStateInfo.longMsg + "\n");
        m1016super.append("-----------------------end----------------------------");
        return m1016super.toString();
    }
}
