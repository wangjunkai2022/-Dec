package com.baidu.tts.tools;

import android.content.Context;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.tools.cuid.util.DeviceId;
/* loaded from: classes8.dex */
public class GetCUID {
    public static String getCUID(Context context) {
        String cuid = DeviceId.getCUID(context);
        LoggerProxy.d("Device", "cuid=" + cuid);
        return cuid;
    }
}
