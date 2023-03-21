package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_try19;

import android.os.Handler;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i;
import com.baidu.tts.client.SpeechSynthesizer;
/* compiled from: DeviceIdTask.java */
/* loaded from: classes8.dex */
public class b extends a {
    public b(Handler handler, long j, long j2) {
        super(handler, j, j2);
    }

    @Override // java.lang.Runnable
    public void run() {
        String c = i.e().c();
        if (!TextUtils.isEmpty(c) && !SpeechSynthesizer.REQUEST_DNS_OFF.equals(c)) {
            i.j().a(c);
            j.a("[DeviceIdTask] did is " + c);
            return;
        }
        a(c());
        j.a("[DeviceIdTask] did is null, continue check.");
    }
}
